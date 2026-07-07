#!/bin/bash
set -e

echo "Stopping and removing Docker containers and volumes..."
docker-compose down -v || true

echo "Removing task directory /root/task..."
rm -rf /root/task || true

echo "Cleanup completed."
