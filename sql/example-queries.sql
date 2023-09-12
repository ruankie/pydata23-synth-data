-- Total sales per country
SELECT c.country, SUM(p.price * t.quantity) AS total_sales
FROM customers c
JOIN transactions t ON c.id = t.customer_id
JOIN products p ON t.product_id = p.id
GROUP BY c.country
ORDER BY total_sales DESC;


-- Most popular product category per country in Africa
SELECT c.country, p.category, COUNT(t.id) AS num_transactions
FROM customers c
JOIN transactions t ON c.id = t.customer_id
JOIN products p ON t.product_id = p.id
WHERE c.country like '%Africa%'
GROUP BY c.country, p.category
ORDER BY c.country, num_transactions DESC;
