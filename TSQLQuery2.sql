USE olympics;
GO

IF OBJECT_ID('Person.RegionFinder','R') IS NULL
	PRINT 'Object does not exist';
ELSE
	DROP PROC Person.RegionFinder;
GO