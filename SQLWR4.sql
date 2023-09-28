USE olympics;
GO

SELECT
	g.id,
	g.games_year,
	g.orderrankno
FROM
(
	SELECT 
		id,
		games_year,
		YEAR(games_year) as orderyear,
		RANK() OVER (PARTITION BY id, YEAR(games_year) ORDER BY id DESC) orderrankno
	FROM games
) AS g
WHERE g.orderrankno <= 2;

