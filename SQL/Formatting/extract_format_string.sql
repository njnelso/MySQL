SELECT email_address,
	SUBSTRING_INDEX(email_address, '@', 1) AS username,
    	SUBSTRING_INDEX(email_address, '@', -1) AS domain
FROM administrators


/* extracting and formatting from strings */