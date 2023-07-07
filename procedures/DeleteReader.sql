USE LibraryProject;
IF EXISTS (SELECT name
			  FROM sysobjects
			  WHERE name ='DeleteReader'
			  AND type = 'P')
DROP PROCEDURE DeleteReader
GO

CREATE PROCEDURE DeleteReader
@ReaderId int
AS

DELETE FROM Reader WHERE ReaderId=@ReaderId

GO