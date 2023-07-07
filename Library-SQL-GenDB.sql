--CREATE DATABASE Library

--USE Library;
--CREATE TABLE Authors(
--AuthorId INT IDENTITY NOT NULL,
--AuthorName VARCHAR(50) NOT NULL,
--AuthorFamilyName VARCHAR(50) NOT NULL,
--Age INT NOT NULL,
--YearBirth INT NOT NULL,
--YearDeath INT NULL,
--Nationality VARCHAR(50) NOT NULL,
--CONSTRAINT PK_Author PRIMARY KEY CLUSTERED(AuthorId ASC))

--GO

--SET IDENTITY_INSERT Authors ON

--INSERT INTO Authors(AuthorId, AuthorName, AuthorFamilyName, Age, YearBirth, YearDeath, Nationality)
--VALUES (1,'Agatha','Christie',86,1890,1976,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (2,'William','Shakespeare',52,1564,1616,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (3,'Stephen','King',75,1947,0,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (4,'Joanne','Rowling',57,1965,0,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (5,'James','Patterson',75,1947,0,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (6,'Nora','Roberts',72,1950,0,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (7,'George','Martin',74,1948,0,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (8,'Isaac','Asimov',72,1920,1992,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (9,'Simon','Kenrick',56,1966,0,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (10,'Sarah','Maas',36,1986,0,'American')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (11,'Georges','Simenon',86,1903,1989,'French')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (12,'Leo','Tolstoy',82,1828,1910,'Russian')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (13,'Alexander','Pushkin',37,1799,1837,'Russian')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (14,'Roald','Dahl',74,1916,1990,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (15,'John','Tolkien',81,1892,1973,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (16,'Astrid','Lindgren',94,1907,2002,'Swedish')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (17,'Lewis','Carroll',65,1832,1898,'English')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (18,'Karl','May',70,1842,1912,'German')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (19,'Akira','Toriyama',67,1955,0,'Japanese')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (20,'Corin','Tellado',81,1927,2009,'Spanish')

--INSERT INTO Authors (AuthorId, AuthorName,AuthorFamilyName,Age,YearBirth,YearDeath,Nationality)
--VALUES (21,'Jules','Verne',78,1828,1905,'French')

--SET IDENTITY_INSERT Authors OFF
--GO

--CREATE TABLE Genre(
--GenreId INT IDENTITY NOT NULL,
--GenreName VARCHAR(50) NOT NULL,
--CONSTRAINT PK_Genre PRIMARY KEY CLUSTERED (GenreId ASC))
--GO

--SET IDENTITY_INSERT Genre ON

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (1,'Romance')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (2,'Mystery')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (3,'Thriller')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (4,'Crime')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (5,'Fantasy')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (6,'Horror')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (7,'Science Fiction')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (8,'Manga')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (9,'Comedy')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (10,'Drama')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (11,'Tragedy')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (12,'History')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (13,'Classic for Kids')

--INSERT INTO Genre (GenreId,GenreName)
--VALUES (14,'Adventure')

--SET IDENTITY_INSERT Genre OFF
--GO


--CREATE TABLE Books(
--BookId INT IDENTITY NOT NULL,
--BookName VARCHAR(50) NOT NULL,
--AuthorId INT NOT NULL,
--YearPublish INT NOT NULL,
--GenreId INT NOT NULL,

--CONSTRAINT PK_Books PRIMARY KEY CLUSTERED(BookId ASC),
--CONSTRAINT FK_AuthorId FOREIGN KEY(AuthorId) REFERENCES Authors(AuthorId),
--CONSTRAINT FK_GenreId FOREIGN KEY(GenreId) REFERENCES Genre(GenreId)
--);


--SET IDENTITY_INSERT Books ON
--GO

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (1,'The Mystery of the Blue Train',1,1928,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (2,'Murder on the Orient Express',1,1934,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (3,'Why Didnt They Ask Evans?',1,1934,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (4,'The A.B.C. Murders',1,1936,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (5,'Death on the Nile',1,1937,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (6,'And Then There Were None',1,1939,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (7,'Measure for Measure',2,1623,9)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (8,'The Comedy of Errors',2,1595,9)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (9,'Alls Well That Ends Well',2,1623,9)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (10,'King John',2,1623,12)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (11,'Richard III',2,1623,12)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (12,'Romeo and Juliet',2,1597,11)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (13,'Hamlet',2,1603,11)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (14,'Macbeth',2,1606,11)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (15,'The Shining',3,1977,6)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (16,'Firestarter',3,1980,6)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (17,'Pet Sematary',3,1983,6)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (18,'It',3,1986,6)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (19,'Harry Potter and the Chamber of Secrets',4,1998,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (20,'Harry Potter and the Deathly Hallows',4,2007,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (21,'Fantastic Beasts and Where to Find Them',4,2016,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (22,'Fantastic Beasts: The Crimes of Grinedelwald',4,2018,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (23,'Kiss the Girls',5,1991,3)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (24,'Roses are Red',5,2000,3)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (25,'Naked in Death',6,1995,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (26,'Loyalty in Death',6,1997,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (27,'Origin in Death',6,2005,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (28,'Treachery in Death',6,2011,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (29,'Hunters Run',7,2007,7)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (30,'The Ice Dragon',7,2014,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (31,'A Game of Thrones',7,1996,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (32,'The Caves of Steel',8,1954,7)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (33,'The Robots of Dawn',8,1983,7)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (34,'The Business of Dying',9,2002,2)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (35,'Relentless',9,2006,2)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (36,'The Crime Trade',9,2004,3)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (37,'Throne of Glass',10,2012,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (38,'Hell of Fire',10,2014,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (39,'Kingdom of Ash',10,2018,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (40,'Maigret at the Crossroads',11,1931,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (41,'The Yellow Dog',11,1931,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (42,'Maigret Goes Home',11,1932,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (43,'Maigret Returns',11,1934,4)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (44,'War and Peace',12,1869,12)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (45,'Anna Karenina',12,1877,10)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (46,'Resurrection',12,1899,10)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (47,'The Moor of Peter the Great',13,1828,10)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (48,'The Captains Daughter',13,1836,10)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (49,'James and the Giant Peach',14,1961,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (50,'Fantastic Mr Fox',14,1970,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (51,'The Enormous Crocodile',14,1978,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (52,'Matilda',14,1988,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (53,'The Hobbit',15,1937,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (54,'The Lord of the Rings',15,1954,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (55,'The Return of the King',15,1955,5)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (56,'The Children of Troublemaker Street',16,1956,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (57,'Kati in America',16,1951,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (58,'Pippi Longstocking',16,1950,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (59,'Alices Adventures in Wonderland',17,1865,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (60,'Through the Looking Glass',17,1871,13)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (61,'Das Vermächtnis der Inka',18,1892,14)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (62,'Der Schatz im Silbersee',18,1891,14)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (63,'Der Sohn des Bärenjägers',18,1887,14)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (64,'Wonder Island',19,1978,8)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (65,'Escape',19,1981,8)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (66,'Pink',19,1982,8)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (67,'Berta',20,1963,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (68,'Susana',20,1963,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (69,'Felicidad',20,1964,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (70,'No te vi',20,1964,1)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (71,'Journey to the Center of the Earth',21,1864,14)

--INSERT INTO Books(BookId, BookName, AuthorId, YearPublish, GenreId)
--VALUES (72,'Around the World in Eighty Days',21,1872,14)

--SET IDENTITY_INSERT Books OFF
--GO



--CREATE TABLE Cities(
--CityId INT IDENTITY NOT NULL,
--CityName VARCHAR(50) NOT NULL,
--CONSTRAINT PK_City PRIMARY KEY CLUSTERED (CityId ASC))
--GO

--SET IDENTITY_INSERT Cities ON

--INSERT INTO Cities(CityId, CityName)
--VALUES(1,'Varna')

--INSERT INTO Cities(CityId, CityName)
--VALUES(2,'Sofia')

--INSERT INTO Cities(CityId, CityName)
--VALUES(3,'Pleven')

--INSERT INTO Cities(CityId, CityName)
--VALUES(4,'Plovdiv')

--INSERT INTO Cities(CityId, CityName)
--VALUES(5,'Veliko Tarnovo')

--INSERT INTO Cities(CityId, CityName)
--VALUES(6,'Burgas')

--INSERT INTO Cities(CityId, CityName)
--VALUES(7,'Ruse')

--INSERT INTO Cities(CityId, CityName)
--VALUES(8,'Dobrich')

--INSERT INTO Cities(CityId, CityName)
--VALUES(9,'Shumen')

--INSERT INTO Cities(CityId, CityName)
--VALUES(10,'Blagoevgrad')

--INSERT INTO Cities(CityId, CityName)
--VALUES(11,'Sandanski')

--INSERT INTO Cities(CityId, CityName)
--VALUES(12,'Montana')

--SET IDENTITY_INSERT Cities OFF
--GO

--CREATE TABLE Readers(
--ReaderId INT IDENTITY NOT NULL,
--ReaderName VARCHAR(50) NOT NULL,
--ReaderMiddleName VARCHAR(50) NOT NULL,
--ReaderFamilyName VARCHAR(50) NOT NULL,
--ReaderPIN VARCHAR(10) NOT NULL,
--CityId INT NOT NULL,
--Tel VARCHAR(10),
--CONSTRAINT PK_Reader PRIMARY KEY CLUSTERED (ReaderId ASC),
--CONSTRAINT FK_City FOREIGN KEY (CityId) REFERENCES Cities(CityId))

--GO
--SET IDENTITY_INSERT Readers ON

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(1,'Jordan','Dimitrov','Petrov','0553627678',1,'0885647321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(2,'Ivona','Todorova','Krasteva','0253427678',2,'0865646721')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(3,'Kristina','Ivanova','Ivanova','0436627878',4,'0885647678')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(4,'Martin','Emilov','Stoqnov','0354627679',3,'0884646321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(5,'Radina','Kirilova','Deqnova','0853627654',6,'0885647435')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(6,'Emil','Nedqlkov','Chavdarov','0654627978',1,'0888667321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(7,'Svilen','Konstantinov','Boqnov','0755427078',12,'0895644321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(8,'Vqra','Evtimova','Todorova','0443627628',1,'0878647321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(9,'Qsen','Hristov','Teodorov','0353667678',2,'0885237320')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(10,'Diana','Georgieva','Peshkova','0254427678',5,'0875653321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(11,'Simeon','Atanasov','Georgiev','0853627318',4,'0886640321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(12,'Ema','Cenkova','Hristova','0453377678',7,'0884645121')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(13,'Blagoi','Stefanov','Stefanov','0153345678',10,'0882647101')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(14,'Zornica','Ilieva','Nedeva','0353625778',11,'0883647421')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(15,'Katrin','Simeonova','Velkova','0253547678',7,'0888447321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(16,'Erika','Vladimirova','Zafirova','0443625678',1,'0885134321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(17,'Sonq','Georgieva','Lazarova','0353681678',4,'0887007321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(18,'Teodor','Ivanov','Ivanov','0241627678',12,'0899600321')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(19,'Atanas','Draganov','Kolev','0435627878',11,'08896473420')

--INSERT INTO Readers(ReaderId, ReaderName,ReaderMiddleName,ReaderFamilyName,ReaderPIN,CityId,Tel)
--VALUES(20,'Vanesa','Traqnova','Gocheva','0347827678',10,'0881656321')

--SET IDENTITY_INSERT Readers OFF
--GO

--CREATE TABLE BorrowedBooks(
--BorrowId INT IDENTITY NOT NULL,
--BookId INT,
--AuthorId INT,
--ReaderId INT,
--DateBorrow DATE,
--CONSTRAINT PK_BorrowedBooks PRIMARY KEY CLUSTERED (BorrowId ASC),
--CONSTRAINT FK_Book FOREIGN KEY (BookId) REFERENCES Books(BookId),
--CONSTRAINT FK_Author FOREIGN KEY (AuthorId) REFERENCES Authors(AuthorId),
--CONSTRAINT FK_Reader FOREIGN KEY (ReaderId) REFERENCES Readers(ReaderId)

--)

--GO
--SET IDENTITY_INSERT BorrowedBooks ON

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(1,2,1,3,'2022-11-27')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(2,9,2,5,'2022-01-12')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(3,16,3,16,'2022-12-15')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(4,31,7,6,'2022-12-13')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(5,23,5,4,'2022-12-04')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(6,26,6,8,'2022-12-13')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(7,17,3,16,'2022-12-15')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(8,38,10,17,'2022-12-11')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(9,43,11,3,'2022-12-11')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(10,45,12,5,'2022-12-07')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(11,62,18,10,'2022-12-08')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(12,56,16,9,'2022-10-09')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(13,67,20,8,'2022-12-13')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(14,52,14,9,'2022-12-21')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(15,63,18,10,'2022-12-08')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(16,33,8,7,'2022-10-02')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(17,4,1,18,'2022-12-18')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(18,21,4,12,'2022-12-16')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(19,35,9,7,'2022-12-04')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(20,5,1,18,'2022-12-18')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(21,14,2,15,'2022-12-12')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(22,48,13,20,'2022-12-06')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(23,59,17,20,'2022-11-14')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(24,54,15,13,'2022-12-25')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(25,46,12,14,'2022-09-05')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(26,24,5,2,'2022-12-04')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(27,27,6,15,'2022-09-18')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(28,72,21,1,'2022-12-11')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(29,64,19,17,'2022-12-26')

--INSERT INTO BorrowedBooks(BorrowId,BookId,AuthorId,ReaderId,DateBorrow)
--VALUES(30,6,1,4,'2022-11-13')

--SET IDENTITY_INSERT BorrowedBooks OFF
--GO


