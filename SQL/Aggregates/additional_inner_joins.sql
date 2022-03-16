SELECT c.email_address,
	COUNT(ord.customer_id) AS count,
	SUM(o.item_price - o.discount_amount) * COUNT(o.quantity) 
		AS total_order_cost
FROM customers c
	INNER JOIN orders ord
		ON c.customer_id = ord.customer_id
	INNER JOIN order_items o
		ON ord.order_id = o.order_id
GROUP BY c.customer_id
HAVING count > 1
ORDER BY total_order_cost DESC


/* additional inner joins */