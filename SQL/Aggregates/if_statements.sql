SELECT 
	IF(GROUPING(p.product_name) = 1, 'Grand Total', p.product_name) 		AS product_name,
	SUM(o.item_price - o.discount_amount) * COUNT(o.quantity) 
		AS 'Total Price'
FROM products p
	JOIN order_items o
	ON p.product_id = o.product_id
GROUP BY p.product_name WITH ROLLUP


/* if statements */