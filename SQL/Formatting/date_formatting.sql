SELECT order_date,
    	DATE_FORMAT(order_date, '%Y') AS 'YYYY',
    	DATE_FORMAT(order_date, '%b-%d-%Y') AS 'Mon_DD_YYYY',
  	DATE_FORMAT(order_date, '%h:%i %p') AS 'Time',
    	DATE_FORMAT(order_date, '%m/%d/%y %H:%i') AS 'Date_Time'
FROM orders;

/* Formatting dates */
