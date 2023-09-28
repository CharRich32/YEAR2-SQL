USE olympics;
GO

SELECT
	d.id
FROM person d 
INNER JOIN person_region p ON p.region_id = d.id
GROUP BY d.id
