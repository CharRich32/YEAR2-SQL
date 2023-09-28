USE olympics;
GO

SELECT p.id, p.full_name
FROM person AS p
WHERE 
	EXISTS (SELECT * FROM person AS o WHERE o.id = p.id);