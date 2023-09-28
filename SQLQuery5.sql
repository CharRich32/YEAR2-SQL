Use olympics;
GO

SELECT
	id, YEAR(games_year) AS orderyear
FROM games
GROUP BY id, YEAR(games_year)
ORDER BY id, orderyear;