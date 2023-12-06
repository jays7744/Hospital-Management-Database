USE hospitalManagment

CREATE TABLE Dumas_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Dumas_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT 'DE93448F-5ED2-4CC2-9336-1D1113A0DB04',
    ModifiedBy NVARCHAR(36) DEFAULT 'DE93448F-5ED2-4CC2-9336-1D1113A0DB04',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	

INSERT INTO Dumas_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Mansi', 'Joshi', 'Gynecplogy', '9876543345'),
    ('Mox', 'Patil', 'Emergrncy-General Surgery', '8765432654'),
    ('Mohini', 'Verma', 'Radiology', '7654321574'),
    ('Yogesh', 'Kapoor', 'Accident', '6543210698'),
    ('Jignasha', 'Gandhi', 'Neurology', '5432109744'),
    ('Vipul', 'Singh', 'General Services', '6543210236');

UPDATE Dumas_Doctors
SET Department_ID = 705
WHERE Doctor_ID = 7

UPDATE Dumas_Doctors
SET Department_ID = 702
WHERE Doctor_ID = 2

UPDATE Dumas_Doctors
SET Department_ID = 707
WHERE Doctor_ID = 3


SELECT * FROM Dumas_Doctors;