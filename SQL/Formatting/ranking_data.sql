SELECT p.product_name,
	SUM(o.quantity) AS total_quantity,
	RANK() OVER(ORDER BY SUM(o.quantity) DESC) AS 'rank',
    	DENSE_RANK() OVER(ORDER BY SUM(o.quantity) DESC) AS 'dense_rank'
FROM products p
	JOIN order_items o
		ON p.product_id = o.product_id
GROUP BY o.product_id



/* ranking data */