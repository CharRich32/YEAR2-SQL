USE olympics;
GO

SELECT
	SUBSTRING(c.full_name,1,1) AS firstletter, 
	COUNT(o.id) AS noofolympians
FROM person AS c
LEFT OUTER JOIN person AS o ON o.id = c.id
GROUP BY SUBSTRING(c.full_name,1,1)
ORDER BY firstletter;
