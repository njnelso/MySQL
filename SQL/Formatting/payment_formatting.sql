SELECT card_number,
    	LENGTH(card_number) AS card_length,
    	RIGHT(card_number, 4) AS last_four_only,
    	IF(LENGTH(card_number) = 15, CONCAT('XXXX-XXXXXX-X', 
		RIGHT(card_number, 3)), 
		CONCAT('XXXX-XXXX-XXXX-', RIGHT(card_number, 4)))
			AS last_four
FROM orders

/* formatting customer purchases */