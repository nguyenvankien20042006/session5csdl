CREATE DATABASE IF NOT EXISTS shop_data;
USE shop_data;

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    status ENUM('active', 'inactive')
);

INSERT INTO products (product_id, product_name, price, stock, status) VALUES 
(1, 'Laptop Dell XPS', 25000000, 10, 'active'),
(2, 'Chuột Logitech', 150000, 50, 'active'),
(3, 'Bàn phím cơ cũ', 500000, 0, 'inactive'),
(4, 'Màn hình LG 4K', 8500000, 5, 'active'),
(5, 'Dây cáp HDMI', 90000, 100, 'active');

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    status ENUM('active', 'inactive')
);

INSERT INTO customers (customer_id, full_name, email, city, status) VALUES 
(1, 'Nguyễn Văn A', 'a.nguyen@gmail.com', 'TP.HCM', 'active'),
(2, 'Trần Thị B', 'b.tran@gmail.com', 'Hà Nội', 'active'),
(3, 'Lê Văn C', 'c.le@gmail.com', 'TP.HCM', 'inactive'),
(4, 'Phạm Minh D', 'd.pham@gmail.com', 'Hà Nội', 'active'),
(5, 'Hoàng Anh E', 'e.hoang@gmail.com', 'Đà Nẵng', 'active');

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    status ENUM('pending', 'completed', 'cancelled')
);

INSERT INTO orders (order_id, customer_id, total_amount, order_date, status) VALUES 
(1, 1, 15000000, '2024-03-01', 'completed'),
(2, 2, 8500000, '2024-03-02', 'pending'),
(3, 4, 300000, '2024-03-03', 'completed'),
(4, 1, 5500000, '2024-03-04', 'completed'),
(5, 5, 1200000, '2024-03-05', 'cancelled'),
(6, 2, 7000000, '2024-03-06', 'completed');

SELECT * FROM orders 
WHERE status = 'completed';

SELECT * FROM orders 
WHERE total_amount > 5000000;

SELECT * FROM orders 
ORDER BY order_date DESC 
LIMIT 5;

SELECT * FROM orders 
WHERE status = 'completed' 
ORDER BY total_amount DESC;

SELECT * FROM customers;

SELECT * FROM customers 
WHERE city = 'TP.HCM';

SELECT * FROM customers 
WHERE status = 'active' AND city = 'Hà Nội';

SELECT * FROM customers 
ORDER BY full_name ASC;

SELECT * FROM products;

SELECT * FROM products 
WHERE status = 'active';

SELECT * FROM products 
WHERE price > 1000000;

SELECT * FROM products 
WHERE status = 'active' 
ORDER BY price ASC;