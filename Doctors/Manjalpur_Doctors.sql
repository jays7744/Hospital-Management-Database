USE hospitalManagment

CREATE TABLE Manjalpur_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Manjalpur_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT '660C66F6-B61C-446B-8A0B-6983EEB307AE',
    ModifiedBy NVARCHAR(36) DEFAULT '660C66F6-B61C-446B-8A0B-6983EEB307AE',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	-- FOR Change Datatype --
	ALTER TABLE Manjalpur_Doctors
	ALTER COLUMN Department NVARCHAR(MAX)

UPDATE Manjalpur_Doctors
SET CreatedBy = 'D1951C86-076D-442B-A410-2F11C0C9E44D'


INSERT INTO Manjalpur_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Anjali', 'Sharma', 'Gynecplogy', '9876543210'),
    ('Arun', 'Patil', 'Emergrncy-General Surgery', '8765432109'),
    ('Nisha', 'Verma', 'Radiology', '7654321098'),
    ('Rajat', 'Kapoor', 'Accident', '6543210987'),
    ('Mira', 'Gandhi', 'Neurology', '5432109876'),
    ('Vikram', 'Singh', 'General Services', '6543210987');

 -- For Update Depat ID which comming from dept Table --
UPDATE Manjalpur_Doctors
SET Department_ID = 503
WHERE Doctor_ID = 4

UPDATE Manjalpur_Doctors
SET Department_ID = 506
WHERE Doctor_ID = 5

UPDATE Manjalpur_Doctors
SET Department = 'Gynecology'
WHERE Doctor_ID = 1

SELECT * FROM Manjalpur_Doctors;