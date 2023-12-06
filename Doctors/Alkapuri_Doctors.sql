USE hospitalManagment

CREATE TABLE Alkapuri_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Alkapuri_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT '08446FF8-8CD4-48EB-A9D1-289216F038FF',
    ModifiedBy NVARCHAR(36) DEFAULT '08446FF8-8CD4-48EB-A9D1-289216F038FF',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	

INSERT INTO Alkapuri_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Mansi', 'Sharma', 'Gynecplogy', '9876543345'),
    ('Devendra', 'Patil', 'Emergrncy-General Surgery', '8765432654'),
    ('Somya', 'Verma', 'Radiology', '7654321574'),
    ('Vyom', 'Kapoor', 'Accident', '6543210698'),
    ('Soya', 'Gandhi', 'Neurology', '5432109744'),
    ('Vaibhav', 'Singh', 'General Services', '6543210236');

UPDATE Alkapuri_Doctors
SET Department_ID = 605
WHERE Doctor_ID = 1

UPDATE Alkapuri_Doctors
SET Department_ID = 602
WHERE Doctor_ID = 2

UPDATE Alkapuri_Doctors
SET Department_ID = 607
WHERE Doctor_ID = 3

SELECT * FROM Alkapuri_Doctors;