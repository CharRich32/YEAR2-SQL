USE olympics;
GO

SELECT
	height, weight, gender, id
FROM person
WHERE 
	id IN 
	(
		SELECT id
		FROM person
		WHERE full_name LIKE 'A%'
	);