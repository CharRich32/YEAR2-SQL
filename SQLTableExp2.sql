USE olympics;
GO

SELECT
     SUM(games_year) AS getgames
FROM games
WHERE YEAR(games_year) = 2010
GROUP BY id;

GO

CREATE FUNCTION dbo.fngetgames
(@gamesyear AS INT) RETURNS TABLE
AS
RETURN
SELECT
     SUM(games_year) AS totalgames
FROM games
WHERE YEAR(games_year) = @gamesyear
GROUP BY id;

GO
