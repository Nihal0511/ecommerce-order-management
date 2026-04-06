USE ecommerce_db;

INSERT INTO users (name, email) VALUES
('John Doe', 'john@example.com'),
('Alice Smith', 'alice@example.com'),
('Rahul Das', 'rahul@example.com');

INSERT INTO products (name, price, stock) VALUES
('Laptop', 70000, 10),
('Phone', 30000, 20),
('Headphones', 2000, 50),
('Keyboard', 1500, 40);

INSERT INTO orders (user_id, status) VALUES
(1, 'Placed'),
(2, 'Shipped'),
(3, 'Delivered');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1),
(3, 4, 3);

INSERT INTO payments (order_id, amount, payment_status) VALUES
(1, 74000, 'Completed'),
(2, 30000, 'Pending'),
(3, 4500, 'Completed');
