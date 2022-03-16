SELECT c.category_name,
	COUNT(p.product_id) AS 'product count',
	MAX(p.list_price) AS 'most expensive product'
FROM categories c
	INNER JOIN products p 
	ON c.category_id = p.category_id
GROUP BY c.category_name
ORDER By COUNT(p.product_id) DESC


/* max aggregate and inner join */