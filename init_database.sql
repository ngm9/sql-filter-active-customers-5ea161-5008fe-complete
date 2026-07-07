CREATE TABLE cities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(200) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    status VARCHAR(20) NOT NULL,
    city_id INTEGER REFERENCES cities(id),
    last_updated TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE support_tickets (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customers(id),
    subject VARCHAR(200) NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL
);

INSERT INTO cities (name, country) VALUES
    ('Bangalore', 'India'),
    ('Mumbai', 'India'),
    ('Delhi', 'India'),
    ('San Francisco', 'United States'),
    ('London', 'United Kingdom');

INSERT INTO customers (full_name, email, phone, status, city_id, last_updated, created_at) VALUES
    ('Anita Sharma', 'anita.sharma@examplecorp.com', '+91-9000000001', 'ACTIVE', 1, '2024-01-10 10:15:00', '2023-12-01 09:00:00'),
    ('Rahul Verma', 'rahul.verma@gmail.com', NULL, 'ACTIVE', 1, '2024-01-09 14:20:00', '2023-11-25 11:30:00'),
    ('Sanjay Patel', 'sanjay.patel@examplecorp.com', '+91-9000000002', 'INACTIVE', 2, '2023-12-30 16:45:00', '2023-10-10 08:15:00'),
    ('Priya Singh', 'priya.singh@examplecorp.com', '+91-9000000003', 'ACTIVE', 2, '2024-01-11 09:05:00', '2023-12-15 10:00:00'),
    ('John Doe', 'john.doe@examplecorp.com', '+1-415-555-0101', 'ACTIVE', 4, '2024-01-08 18:30:00', '2023-09-20 13:25:00'),
    ('Emily Clark', 'emily.clark@example.com', '+44-20-7946-0958', 'ACTIVE', 5, '2024-01-07 12:00:00', '2023-11-01 12:00:00'),
    ('Vikram Mehta', 'vikram.mehta@gmail.com', '+91-9000000004', 'INACTIVE', 3, '2023-12-20 17:10:00', '2023-10-05 09:45:00'),
    ('Neha Gupta', 'neha.gupta@examplecorp.com', '+91-9000000005', 'ACTIVE', 1, '2024-01-12 11:25:00', '2023-12-20 15:30:00'),
    ('Alex Johnson', 'alex.johnson@examplecorp.com', NULL, 'ACTIVE', 4, '2024-01-06 08:40:00', '2023-11-10 10:10:00'),
    ('Ravi Kumar', 'ravi.kumar@yahoo.com', '+91-9000000006', 'ACTIVE', 3, '2024-01-05 09:55:00', '2023-10-25 16:45:00');

INSERT INTO support_tickets (customer_id, subject, status, created_at) VALUES
    (1, 'Login issue on portal', 'OPEN', '2024-01-10 11:00:00'),
    (2, 'Profile update request', 'CLOSED', '2024-01-09 15:30:00'),
    (3, 'Billing clarification', 'OPEN', '2023-12-31 10:20:00'),
    (4, 'Change registered email', 'CLOSED', '2024-01-11 10:00:00'),
    (5, 'Access to new feature', 'OPEN', '2024-01-08 19:00:00'),
    (8, 'Unable to reset password', 'OPEN', '2024-01-12 12:00:00');
