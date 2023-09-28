Use olympics;
GO

SELECT
	id,
	COUNT(gender) headcount
FROM
	person
GROUP BY
	id;