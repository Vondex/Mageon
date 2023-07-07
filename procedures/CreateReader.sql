USE LibraryProject;
IF EXISTS (SELECT name
			  FROM sysobjects
			  WHERE name ='CreateReader'
			  AND type = 'P')
DROP PROCEDURE CreateReader
GO

CREATE PROCEDURE CreateReader
@ReaderName varchar(50),
@ReaderMiddleName varchar(50),
@ReaderFamilyName varchar(50),
@ReaderPIN varchar(10),
@CityName varchar(50),
@Tel varchar(10)

AS

if NOT EXISTS (SELECT * FROM City WHERE CityName=@CityName)
   INSERT INTO City (CityName) VALUES (@CityName)

IF NOT EXISTS (SELECT * FROM Reader WHERE ReaderName = @ReaderName)
   INSERT INTO Reader(ReaderName, ReaderMiddleName, ReaderFamilyName, ReaderPIN, CityId, Tel)
   VALUES
   ( @ReaderName,
     @ReaderMiddleName,
	 @ReaderFamilyName,
	 @ReaderPIN,
	 (SELECT CityId FROM City WHERE CityName=@CityName),
	 @Tel
   )
GO