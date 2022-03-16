SELECT c.email_address,
	SUM(o.item_price) * COUNT(o.quantity) AS 'item price total',
	SUM(o.discount_amount) * COUNT(o.quantity) AS 'total discount'
FROM customers c
	INNER JOIN orders ord
		ON c.customer_id = ord.customer_id
	INNER JOIN order_items o
		ON ord.order_id = o.order_id
GROUP BY c.customer_id
ORDER BY SUM(o.item_price) * COUNT(o.quantity) DESC


/* multiple inner joins */