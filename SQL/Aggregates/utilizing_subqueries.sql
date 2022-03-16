SELECT o.order_id, c.email_address,
SUM((o.item_price - o.discount_amount) * o.quantity) 
	AS Order_Total
FROM order_items o JOIN orders ord
ON ord.order_id = o.order_id
	JOIN customers c
		ON ord.customer_id = c.customer_id
GROUP BY email_address, order_id;

SELECT email_address, MAX(Order_Total) AS Largest_order
FROM(SELECT o.order_id, c.email_address,
		SUM((o.item_price - o.discount_amount) * o.quantity) 
		AS Order_Total
	FROM order_items o JOIN orders ord
	ON ord.order_id = o.order_id
	JOIN customers c
		ON ord.customer_id = c.customer_id
GROUP BY email_address, order_id) AS email_orders
GROUP By email_address;

/* utilizing subqueries */