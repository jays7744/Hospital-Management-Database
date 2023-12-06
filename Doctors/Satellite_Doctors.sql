USE hospitalManagment

CREATE TABLE Satellite_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Satellite_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT 'E8CBC7BD-EF36-400A-B1C2-648762A13CF3',
    ModifiedBy NVARCHAR(36) DEFAULT 'E8CBC7BD-EF36-400A-B1C2-648762A13CF3',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	

INSERT INTO Satellite_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Mansi', 'Sharma', 'Gynecplogy', '9876543345'),
    ('Mehul', 'Patil', 'Emergrncy-General Surgery', '8765432654'),
    ('Salini', 'Verma', 'Radiology', '7654321574'),
    ('Naresh', 'Kapoor', 'Accident', '6543210698'),
    ('Jogni', 'Gandhi', 'Neurology', '5432109744'),
    ('Nick', 'Singh', 'General Services', '6543210236');

UPDATE Satellite_Doctors
SET Department_ID = 805
WHERE Doctor_ID = 1

UPDATE Satellite_Doctors
SET Department_ID = 802
WHERE Doctor_ID = 2

UPDATE Satellite_Doctors
SET Department_ID = 807
WHERE Doctor_ID = 3


SELECT * FROM Satellite_Doctors;