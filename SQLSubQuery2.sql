USE olympics;
GO

SELECT
	height, gender , full_name
FROM person
WHERE 
	weight = (SELECT MAX(weight) FROM person);