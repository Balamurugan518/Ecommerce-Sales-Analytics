CREATE DATABASE ecommerce_analytics;

USE ecommerce_analytics;
SELECT DATABASE();

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50),
    signup_date DATE
);

DESCRIBE customers;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2)
);
DESCRIBE products;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);
DESCRIBE orders;

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)

);

DESCRIBE order_items;

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method VARCHAR(30),
    payment_amount DECIMAL(10,2),
    payment_date DATE,

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id)
);

SHOW TABLES;



