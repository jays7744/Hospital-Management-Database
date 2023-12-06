USE hospitalManagment

CREATE TABLE Paldi_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Paldi_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT '7617CCD7-8057-40C4-9C3F-FB56DEDE955A',
    ModifiedBy NVARCHAR(36) DEFAULT '7617CCD7-8057-40C4-9C3F-FB56DEDE955A',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	

INSERT INTO Paldi_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Komal', 'Sharma', 'Gynecplogy', '9876543345'),
    ('Keyur', 'Patil', 'Emergrncy-General Surgery', '8765432654'),
    ('Jogni', 'Verma', 'Radiology', '7654321574'),
    ('Shivam', 'Kapoor', 'Accident', '6543210698'),
    ('Yanshni', 'Gandhi', 'Neurology', '5432109744'),
    ('Jigar', 'Singh', 'General Services', '6543210236');

UPDATE Paldi_Doctors
SET Department_ID = 1005
WHERE Doctor_ID = 1

UPDATE Paldi_Doctors
SET Department_ID = 1002
WHERE Doctor_ID = 2

UPDATE Paldi_Doctors
SET Department_ID = 1007
WHERE Doctor_ID = 3


SELECT * FROM Paldi_Doctors;

-- For Reset Identity --
DBCC CHECKIDENT ('Paldi_Doctors', RESEED, 1);