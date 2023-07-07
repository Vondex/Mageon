use LibraryProject;
GO
IF EXISTS (SELECT name 
          FROM sysobjects
		  WHERE name='GetReaderData'
		  AND type='V')
   DROP VIEW GetReaderData;

GO 
CREATE VIEW GetReaderData
AS

SELECT Reader.ReaderId,
       Reader.ReaderName,
	   Reader.ReaderMiddleName,
	   Reader.ReaderFamilyName,
	   Reader.ReaderPIN,
	   City.CityName,
	   Reader.Tel
	   FROM Reader
	   INNER JOIN City ON City.CityId = Reader.CityId
GO

	   


