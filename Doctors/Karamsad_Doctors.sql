USE hospitalManagment

CREATE TABLE Karamsad_Doctors(
    Department_ID INT FOREIGN KEY REFERENCES Karamsad_Br_Dept(Department_ID),
    Doctor_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	Department NVARCHAR(MAX),
    Phone_Number NVARCHAR(15),
	IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy NVARCHAR(36) DEFAULT '3107277A-AC48-4B67-BF2D-48FCA2F3F8F3',
    ModifiedBy NVARCHAR(36) DEFAULT '3107277A-AC48-4B67-BF2D-48FCA2F3F8F3',
    ModifiedDate DATETIME DEFAULT(GETDATE())
	)
	

INSERT INTO Karamsad_Doctors (First_Name, Last_Name, Department, Phone_Number)
VALUES
    ('Kavya', 'Sharma', 'Gynecplogy', '9876543345'),
    ('Kumar', 'Patil', 'Emergrncy-General Surgery', '8765432654'),
    ('Taruna', 'Verma', 'Radiology', '7654321574'),
    ('Dhiman', 'Kapoor', 'Accident', '6543210698'),
    ('Rashmika', 'Gandhi', 'Neurology', '5432109744'),
    ('Aryan', 'Singh', 'General Services', '6543210236');

UPDATE Karamsad_Doctors
SET Department_ID = 903
WHERE Doctor_ID = 4

UPDATE Karamsad_Doctors
SET Department_ID = 906
WHERE Doctor_ID = 5

UPDATE Karamsad_Doctors
SET Department_ID = 901
WHERE Doctor_ID = 6

SELECT * FROM Karamsad_Doctors;