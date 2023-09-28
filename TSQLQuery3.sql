USE olympics;
GO



CREATE SYNONYM dbo.PersonAndGender
FOR Olymipians;
GO

SELECT full_name, gender
FROM dbo.Person;



DROP SYNONYM dbo.PersonAndGender;