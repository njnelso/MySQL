SELECT list_price, 
	FORMAT(list_price, 1) AS rounded_price,
	CONVERT(list_price, SIGNED) AS convert_price,
	CAST(list_price AS SIGNED) AS cast_price
FROM products

/* formatting prices */