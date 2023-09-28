USE olympics;
GO

SELECT 
	id,
	games_name,
	YEAR(games_year) AS gamesdate,
	RANK() OVER (PARTITION BY id, YEAR(games_year) ORDER BY id DESC) AS orderrankno
FROM games;