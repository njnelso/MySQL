SELECT c.email_address,
	COUNT(DISTINCT o.product_id) AS 'Customer Unique Orders'
FROM customers c
	JOIN orders ord
		ON c.customer_id = ord.customer_id
	JOIN order_items o
		ON ord.order_id = o.order_id
GROUP BY c.email_address
ORDER BY c.email_address


/* inner joins 3 */