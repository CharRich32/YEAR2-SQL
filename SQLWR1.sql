USE olympics;
GO

SELECT 
	id, 
	games_year,
	games_name,
	ROW_NUMBER() OVER(ORDER BY games_year) AS rowno
FROM games;