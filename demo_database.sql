-- SQL Script for Demo Database

-- Create a simple table 'users'
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    age INTEGER
);

-- Insert some sample data into 'users'
INSERT INTO users (name, email, age) VALUES ('Alice', 'alice@example.com', 30);
INSERT INTO users (name, email, age) VALUES ('Bob', 'bob@example.com', 25);
INSERT INTO users (name, email, age) VALUES ('Carol', 'carol@example.com', 35);

-- Create a simple table 'orders'
CREATE TABLE IF NOT EXISTS orders (
    order_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

-- Insert some sample data into 'orders'
INSERT INTO orders (user_id, order_date, amount) VALUES (1, '2023-01-10', 150.00);
INSERT INTO orders (user_id, order_date, amount) VALUES (2, '2023-01-11', 200.50);
INSERT INTO orders (user_id, order_date, amount) VALUES (1, '2023-01-12', 99.99);

-- A sample query for testing
SELECT * FROM users WHERE age > 25;
