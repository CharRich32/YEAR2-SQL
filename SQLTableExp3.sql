USE olympics;
GO

WITH PersonCard2 AS
(
	SELECT
		id, full_name, weight, gender,
		CASE WHEN height > 100. THEN N'high' ELSE N'normal' END AS height
	FROM person
	WHERE id = 1
)
SELECT
	id, full_name
FROM person
WHERE height = height

