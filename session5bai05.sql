CREATE DATABASE IF NOT EXISTS store_db;
USE store_db;

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    sold_quantity INT,
    status ENUM('active', 'inactive')
);

INSERT INTO products (product_id, product_name, price, stock, sold_quantity, status) VALUES 
(1, 'Laptop Dell XPS', 25000000, 10, 15, 'active'),
(2, 'Chuột Logitech', 150000, 50, 120, 'active'),
(3, 'Bàn phím cơ cũ', 500000, 0, 5, 'inactive'),
(4, 'Màn hình LG 4K', 8500000, 5, 20, 'active'),
(5, 'Dây cáp HDMI', 90000, 100, 300, 'active'),
(6, 'Ốp lưng iPhone', 50000, 200, 450, 'active'),
(10, 'Lót chuột', 30000, 500, 600, 'active');

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    status ENUM('active', 'inactive')
);

INSERT INTO customers (customer_id, full_name, email, city, status) VALUES 
(1, 'Nguyễn Văn A', 'a.nguyen@gmail.com', 'TP.HCM', 'active'),
(2, 'Trần Thị B', 'b.tran@gmail.com', 'Hà Nội', 'active');

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    status ENUM('pending', 'completed', 'cancelled')
);

INSERT INTO orders (order_id, customer_id, total_amount, order_date, status) VALUES 
(1, 1, 1500000, '2024-03-01', 'completed'),
(2, 2, 850000, '2024-03-02', 'pending'),
(3, 1, 300000, '2024-03-03', 'completed'),
(4, 1, 550000, '2024-03-04', 'completed'),
(5, 2, 120000, '2024-03-05', 'pending'),
(6, 2, 700000, '2024-03-06', 'completed'),
(7, 1, 2000000, '2024-03-07', 'completed'),
(8, 2, 150000, '2024-03-08', 'pending'),
(9, 1, 900000, '2024-03-09', 'completed'),
(10, 2, 450000, '2024-03-10', 'pending'),
(11, 1, 3200000, '2024-03-11', 'completed'),
(12, 2, 600000, '2024-03-12', 'completed'),
(13, 1, 110000, '2024-03-13', 'pending'),
(14, 2, 880000, '2024-03-14', 'completed'),
(15, 1, 250000, '2024-03-15', 'completed'),
(16, 2, 500000, '2024-03-16', 'cancelled');

SELECT * FROM orders 
WHERE status != 'cancelled' 
ORDER BY order_date DESC 
LIMIT 5 OFFSET 0;

SELECT * FROM orders 
WHERE status != 'cancelled' 
ORDER BY order_date DESC 
LIMIT 5 OFFSET 5;

SELECT * FROM orders 
WHERE status != 'cancelled' 
ORDER BY order_date DESC 
LIMIT 5 OFFSET 10;

SELECT * FROM products 
ORDER BY sold_quantity DESC 
LIMIT 10;

SELECT * FROM products 
ORDER BY sold_quantity DESC 
LIMIT 5 OFFSET 10;

SELECT * FROM products 
WHERE price < 2000000 
ORDER BY sold_quantity DESC;