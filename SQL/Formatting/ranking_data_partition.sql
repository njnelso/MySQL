SELECT c.category_name, p.product_name,
	SUM((oi.item_price - oi.discount_amount) * oi.quantity) 
		AS total_sales,
	FIRST_VALUE(p.product_name) OVER (PARTITION BY c.category_name
ORDER BY SUM((oi.item_price - oi.discount_amount) * oi.quantity) DESC) 
        	AS highest_sales,
	LAST_VALUE(p.product_name) OVER (PARTITION BY c.category_name)
       	 	AS lowest_sum
FROM categories c
		JOIN products p
			ON c.category_id = p.category_id
		JOIN order_items oi
			ON oi.product_id = p.product_id
GROUP BY oi.product_id



/* ranking data over partition */