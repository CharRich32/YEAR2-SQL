USE olympics;
GO

SELECT 
	id, full_name
FROM person
WHERE id = 4

UNION ALL

SELECT
	d.person_id, p.full_name
FROM person_region d 
INNER JOIN person p ON p.id = d.region_id
GROUP BY d.person_id, p.full_name
