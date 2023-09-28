USE olympics;
GO

CREATE PROCEDURE GetOlympiaians2 AS
SELECT TOP(10)
	p.id,
	p.full_name,
	SUM(o.age) AS oldest
FROM games_competitor AS o
INNER JOIN Person AS p ON p.id = o.id
GROUP BY p.id, p.full_name
ORDER BY oldest DESC;

GO

EXECUTE GetOlympiaians2;	

GO