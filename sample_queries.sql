-- Existing admin query used to browse all customers
SELECT * FROM customers;

-- Attempted filtered query that does not fully match the support team needs
SELECT c.id,
       c.full_name,
       c.email,
       c.phone,
       c.status,
       c.last_updated,
       ci.name AS city_name
FROM customers c
JOIN cities ci ON c.city_id = ci.id
WHERE ci.name = 'Bangalore'
  AND c.email LIKE '%@examplecorp.com%';
