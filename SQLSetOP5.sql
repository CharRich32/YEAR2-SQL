USE olympics;
GO

SELECT
	p.id, p.full_name
FROM person AS p
CROSS APPLY 
(
	SELECT TOP(2)
		d.person_id
	FROM person_region as d
	WHERE d.person_id = p.id
	ORDER BY d.person_id DESC
) o
ORDER BY p.id;