USE olympics;
GO

SELECT
	full_name,
	gender,
	COUNT(id) AS noofolymipians
FROM person
GROUP BY
GROUPING SETS 
(
	(full_name, gender),
	()
);