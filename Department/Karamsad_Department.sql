USE hospitalManagment


CREATE TABLE Karamsad_Br_Dept (
Hospital_ID INT FOREIGN KEY REFERENCES Sunshine_Global_Hospital(Hospital_ID) DEFAULT(5),
Department_ID INT IDENTITY(901,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number NVARCHAR(15),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT '3107277A-AC48-4B67-BF2D-48FCA2F3F8F3',
ModifiedBy NVARCHAR(36) DEFAULT '3107277A-AC48-4B67-BF2D-48FCA2F3F8F3',
ModifiedDate DATETIME DEFAULT(GETDATE())
)


INSERT INTO Karamsad_Br_Dept (Department_Name, Tel_Number) VALUES
('General Services', '02692-1234567'),
('Emergency', '02692-2345678'),
('Accident', '02692-3456789'),
('General Surgery', '02692-4567890'),
('Gynecology', '02692-5678901'),
('Neurology', '02692-6789012'),
('Radiology', '02692-7890123'),
('Laboratory', '02692-8901234'),
('Pharmacy', '02692-9012345'),
('Discharge Lounge', '02692-2594651'),
('Accounts/Operation', '02692-5682456');

SELECT * FROM Karamsad_Br_Dept;