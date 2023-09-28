USE olympics;
GO

SELECT p.id, p.full_name
FROM person AS p
WHERE 
	EXISTS (
		SELECT * 
		FROM person AS p
		INNER JOIN games_competitor AS a ON a.age = a.age
		WHERE a.id = p.id
			AND a.age > 50.
			AND height >= '150' 
			);