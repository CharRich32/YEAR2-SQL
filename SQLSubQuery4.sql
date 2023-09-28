USE olympics;
GO

SELECT
p.id,
p.full_name,
COUNT(*) as [Athlete Medal Count]
FROM person p
INNER JOIN games_competitor gc ON p.id = gc.person_id
INNER JOIN competitor_event ce ON gc.id = ce.competitor_id
INNER JOIN medal m ON ce.medal_id = m.id
WHERE medal_name IN ('Gold', 'Silver', 'Bronze')
GROUP BY p.id, p.full_name
ORDER BY COUNT(*) DESC;