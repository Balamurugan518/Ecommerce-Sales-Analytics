use ecommerce_analytics;

INSERT INTO customers
(customer_name, email, city, signup_date)
VALUES
('John Smith','john@gmail.com','New York','2024-01-15'),
('Sarah Johnson','sarah@gmail.com','Chicago','2024-02-10'),
('Michael Brown','michael@gmail.com','Dallas','2024-03-05'),
('Emma Wilson','emma@gmail.com','Boston','2024-04-20'),
('David Lee','david@gmail.com','Seattle','2024-05-12');

SELECT * FROM customers;

INSERT INTO products
(product_name, category, price)
VALUES
('Laptop','Electronics',800),
('Smartphone','Electronics',600),
('Headphones','Electronics',100),
('Office Chair','Furniture',150),
('Desk Lamp','Furniture',40);

SELECT * FROM products;

INSERT INTO orders
(customer_id, order_date)
VALUES
(1,'2025-01-10'),
(2,'2025-01-12'),
(3,'2025-01-15'),
(1,'2025-02-01'),
(4,'2025-02-05');

INSERT INTO order_items
(order_id, product_id, quantity, unit_price)
VALUES
(1,1,1,800),
(1,3,2,100),
(2,2,1,600),
(3,4,1,150),
(4,5,3,40),
(5,1,1,800);

INSERT INTO payments
(order_id,payment_method,payment_amount,payment_date)
VALUES
(1,'Credit Card',1000,'2025-01-10'),
(2,'PayPal',600,'2025-01-12'),
(3,'Credit Card',150,'2025-01-15'),
(4,'Debit Card',120,'2025-02-01'),
(5,'Credit Card',800,'2025-02-05');

SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;
SELECT COUNT(*) FROM payments;
