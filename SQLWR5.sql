USE olympics;
GO


SELECT 
	id,
	full_name,
    weight,
	height,
	100. * height / SUM(weight) OVER (PARTITION BY id) AS heightdivweight
FROM person
ORDER BY id, heightdivweight DESC;