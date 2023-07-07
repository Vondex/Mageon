USE LibraryProject;
IF EXISTS (SELECT name
			  FROM sysobjects
			  WHERE name ='UpdateReader'
			  AND type = 'P')
DROP PROCEDURE UpdateReader
GO

CREATE PROCEDURE UpdateReader
@ReaderId int,
@ReaderName varchar(50),
@ReaderMiddleName varchar(50),
@ReaderFamilyName varchar(50),
@ReaderPIN varchar(10),
@CityName varchar(50),
@Tel varchar(10)
AS

if NOT EXISTS (SELECT * FROM City WHERE CityName=@CityName)
   INSERT INTO City (CityName) VALUES (@CityName)

UPDATE Reader SET
   ReaderName = @ReaderName,
   ReaderMiddleName = @ReaderMiddleName,
   ReaderFamilyName = @ReaderFamilyName,
   ReaderPIN = @ReaderPIN,
   CityId = (SELECT CityId FROM City WHERE CityName=@CityName),
   Tel = @Tel

WHERE ReaderId = @ReaderId

GO