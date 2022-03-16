SELECT c.email_address, o.order_id, oldest_orders.Order_Date
FROM customers c JOIN
	(SELECT ord.customer_id, MIN(ord.order_date) AS Order_Date
	FROM orders ord
	GROUP BY ord.customer_id) AS oldest_orders
ON c.customer_id = oldest_orders.customer_id
JOIN orders o
ON oldest_orders.Order_Date = o.order_date


/* additional subquery */