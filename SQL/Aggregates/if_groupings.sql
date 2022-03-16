SELECT 
	IF(GROUPING(c.category_name) = 1, 
	'Category Total', c.category_name) 
		AS 'Categories',
	IF(GROUPING(p.product_name) = 1, 
	'Product Total', p.product_name) 
		AS 'Products', 
SUM(o.quantity) AS 'Total Quantity Purchased',
SUM(o.item_price - o.discount_amount) * COUNT(o.quantity) AS 'Total Price'
FROM products p
   	JOIN categories c
       		ON p.category_id = c.category_id
 	JOIN order_items o 
 		ON p.product_id = o.product_id
GROUP BY c.category_name, p.product_name WITH ROLLUP


/* if groupings */