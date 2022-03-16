SELECT
	o.customer_id, o.order_date, 
	SUM((oi.item_price - oi.discount_amount) * oi.quantity) 
	OVER(PARTITION BY oi.item_id) 
		AS order_amount,
		SUM((oi.item_price - oi.discount_amount) * oi.quantity) 
		OVER(PARTITION BY o.customer_id ORDER BY o.order_date
		ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
			AS customer_total
FROM orders o
	JOIN order_items oi
		ON o.order_id = oi.order_id
ORDER BY order_date



/* over partition */