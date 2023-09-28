USE olympics;
GO


CREATE VIEW PersonsRegion AS
SELECT 
	id,
	CHOOSE(id % 3 + 1, N'A', N'B', N'C') AS custgroup,
	region_name
FROM noc_region;

GO

SELECT 
	id,
	region_name
FROM PersonsRegion;

GO

SELECT 
	region_name,
	p.A,
	p.B,
	p.C
FROM PersonsRegion
PIVOT (COUNT(id) FOR custgroup IN (A, B, C)) AS p;

GO