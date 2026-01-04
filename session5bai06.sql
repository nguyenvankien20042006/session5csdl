CREATE DATABASE IF NOT EXISTS product_hub;
USE product_hub;

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10,2),
    stock INT,
    sold_quantity INT,
    status ENUM('active', 'inactive')
);

INSERT INTO products (product_id, product_name, price, stock, sold_quantity, status) VALUES 
(1, 'Tai nghe Gaming A', 1200000, 50, 10, 'active'),
(2, 'Bàn phím không dây B', 1500000, 30, 25, 'active'),
(3, 'Chuột Logi C', 1100000, 40, 15, 'active'),
(4, 'Loa Bluetooth D', 2500000, 20, 5, 'active'),
(5, 'Sạc dự phòng E', 1800000, 100, 50, 'active'),
(6, 'Ổ cứng SSD F', 2200000, 15, 30, 'active'),
(7, 'Ram DDR4 G', 1300000, 25, 12, 'active'),
(8, 'Webcam HD H', 2800000, 10, 8, 'active'),
(9, 'Tản nhiệt I', 1050000, 60, 20, 'active'),
(10, 'Mic thu âm J', 2900000, 5, 2, 'active'),
(11, 'Giá đỡ màn hình K', 1400000, 35, 18, 'active'),
(12, 'Hub USB-C L', 1700000, 45, 22, 'active'),
(13, 'Bảng vẽ điện tử M', 2600000, 8, 4, 'active'),
(14, 'Cáp sạc cao cấp N', 1150000, 80, 40, 'active'),
(15, 'Đèn màn hình O', 1950000, 12, 11, 'active'),
(20, 'Sản phẩm hết hàng', 1500000, 0, 0, 'inactive');

SELECT * FROM products 
WHERE status = 'active' 
  AND price BETWEEN 1000000 AND 3000000 
ORDER BY price ASC 
LIMIT 10 OFFSET 0;

SELECT * FROM products 
WHERE status = 'active' 
  AND price BETWEEN 1000000 AND 3000000 
ORDER BY price ASC 
LIMIT 10 OFFSET 10;

SELECT * FROM products 
ORDER BY sold_quantity DESC 
LIMIT 10;

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    status ENUM('active', 'inactive')
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    status ENUM('pending', 'completed', 'cancelled')
);