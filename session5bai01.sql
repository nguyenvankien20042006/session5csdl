CREATE DATABASE IF NOT EXISTS shop_management;
USE shop_management;

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
(5, 'Dây cáp HDMI', 90000, 100, 'active'),
(6, 'Điện thoại iPhone cũ', 5000000, 1, 'inactive');

SELECT * FROM products;

SELECT * FROM products 
WHERE status = 'active';

SELECT * FROM products 
WHERE price > 1000000;

SELECT * FROM products 
WHERE status = 'active' 
ORDER BY price ASC;