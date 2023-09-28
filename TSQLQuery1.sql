USE olympics;
GO


DECLARE @num int = 10;

SELECT @num AS mynumber;

GO

DECLARE 
	@num1 int,
	@num2 int;

SET @num1 = 3;
SET @num2 = 7;

SELECT @num1 + @num2 AS totalnum;