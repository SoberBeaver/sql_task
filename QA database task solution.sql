SELECT c.name, c.phone, SUM(o.price) FROM customer c 
JOIN customer_orders co ON c.id = co.customer_id
JOIN orders o ON o.id = co.order_id
GROUP BY 1, 2
ORDER BY 3 DESC;