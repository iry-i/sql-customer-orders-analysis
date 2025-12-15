CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    country TEXT
);
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price REAL
);
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    total_amount REAL
);
INSERT INTO customers VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'Germany'),
(3, 'Chen', 'China'),
(4, 'David', 'UK'),
(5, 'Elena', 'Spain');
INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 800),
(2, 'Phone', 'Electronics', 500),
(3, 'Desk', 'Furniture', 300),
(4, 'Chair', 'Furniture', 120);
INSERT INTO orders VALUES
(1, '2024-01-10', 1, 1, 1, 800),
(2, '2024-01-15', 2, 2, 2, 1000),
(3, '2024-02-01', 3, 3, 1, 300),
(4, '2024-02-05', 4, 4, 4, 480),
(5, '2024-02-20', 5, 1, 1, 800);