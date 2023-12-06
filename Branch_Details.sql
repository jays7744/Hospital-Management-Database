CREATE DATABASE hospitalManagment
--For Use Database--
USE hospitalManagment

CREATE TABLE Sunshine_Global_Hospital(
Hospital_ID INT PRIMARY KEY IDENTITY NOT Null,
Branch_Name NVARCHAR(MAX) NOT NULL,
Address NVARCHAR(MAX) NOT NULL,
PhoneNumber NVARCHAR(15),
City NVARCHAR(MAX),
State NVARCHAR(MAX),
Zip_Code INT,
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy UNIQUEIDENTIFIER DEFAULT(NEWID()),
ModifiedBy NVARCHAR(36),
ModifiedDate DATETIME DEFAULT(GETDATE())
)



INSERT INTO Sunshine_Global_Hospital (Branch_Name,Address,PhoneNumber,City,State,Zip_Code)VALUES
('Manjalpur Branch','Near Shreyas Vidhyalaya,Nalini House, Manjalpur', '0265-7188400','Vadodara', 'GUJARAT',390011),
('Alkapuri Branch','1st Floor Devshrushti Avenue,Near Genda Circle, Alkapuri', '0265-6536452','Vadodara', 'GUJARAT',390011),
('Dumas Branch','Beside Big Bazaar, Dumas - Piplod Road,Surat', '0265-4111000', 'Surat','GUJARAT',395007),
('Satellite Branch','402, Iscon Centre, 4th Floor, Shivranjani Char Rasta,Satellite', '0265-5786421', 'Ahmedabad','GUJARAT',380015),
('Karamsad Branch','Sojitra Rd, Gokul Nagar, Karamsad','0265-4111000', 'Anand','GUJARAT',388001),
('Paldi Branch','Suvidha Shopping Center, Chimanlal Girdharlal Rd, Paldi', '0265-4651864', 'Ahmedabad','GUJARAT',380007)

UPDATE Sunshine_Global_Hospital
SET PhoneNumber = '265-4868745'
WHERE Hospital_ID = 1

ALTER TABLE Sunshine_Global_Hospital
ALTER COLUMN PhoneNumber NVARCHAR(15);



SELECT * FROM Sunshine_Global_Hospital