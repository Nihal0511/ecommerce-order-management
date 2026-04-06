USE ecommerce_db;

SELECT o.order_id, u.name, o.status, o.order_date
FROM orders o
JOIN users u ON o.user_id = u.user_id;

SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'Completed';

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

-- Top customers by spending
SELECT u.name, SUM(p.amount) AS total_spent
FROM users u
JOIN orders o ON u.user_id = o.user_id
JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_status = 'Completed'
GROUP BY u.name
ORDER BY total_spent DESC;

-- Monthly revenue trend
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS month,
       SUM(amount) AS revenue
FROM payments
WHERE payment_status = 'Completed'
GROUP BY month
ORDER BY month;
