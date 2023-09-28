USE olympics;
GO

SELECT
	id, full_name, height , weight
FROM person
WHERE id = 1;

GO

CREATE VIEW PersonCard1 AS
SELECT
	id, full_name, height , weight
FROM person
WHERE id = 1;