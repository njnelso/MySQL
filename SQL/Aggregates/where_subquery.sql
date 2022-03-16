SELECT p.product_name, p.discount_percent
FROM products p
WHERE NOT EXISTS
	(SELECT * FROM products p2
	WHERE p2.discount_percent = p.discount_percent
	AND p2.product_name <> p.product_name)
ORDER BY p.product_name


/* WHERE NOT EXISTS with subquery */