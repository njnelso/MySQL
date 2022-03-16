SELECT date_added,
	CAST(date_added AS DATE) AS year_month_day,
	CAST(date_added AS CHAR(7)) AS yyyy_mm,
	CAST(date_added AS TIME) AS time_added
FROM products


/* cast dates */