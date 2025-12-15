SELECT SUM(total_amount) AS total_revenue
FROM orders;
SELECT c.country, SUM(o.total_amount) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY revenue DESC;
SELECT p.category, SUM(o.total_amount) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category;
SELECT c.customer_name, SUM(o.total_amount) AS revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY revenue DESC
LIMIT 3;
SELECT strftime('%Y-%m', order_date) AS month,
       COUNT(order_id) AS orders_count
FROM orders
GROUP BY month;