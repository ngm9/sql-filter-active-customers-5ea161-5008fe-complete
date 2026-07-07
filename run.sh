#!/bin/bash
set -e

echo "Starting PostgreSQL container..."
docker-compose up -d

echo "Waiting for PostgreSQL to be ready..."
CONTAINER_ID=$(docker-compose ps -q db)

for i in {1..30}
do
  if [ -n "$CONTAINER_ID" ]; then
    if docker exec "$CONTAINER_ID" pg_isready -U appuser -d customerdb > /dev/null 2>&1; then
      echo "PostgreSQL is ready to accept connections."
      exit 0
    fi
  fi
  sleep 2
  CONTAINER_ID=$(docker-compose ps -q db)
done

echo "PostgreSQL did not become ready in time."
exit 1
