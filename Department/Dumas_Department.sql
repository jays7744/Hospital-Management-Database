USE hospitalManagment


CREATE TABLE Dumas_Br_Dept (
Hospital_ID INT DEFAULT (3),
FOREIGN KEY (Hospital_ID) REFERENCES Sunshine_Global_Hospital(Hospital_ID),
Department_ID INT IDENTITY(701,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number NVARCHAR(15),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT 'DE93448F-5ED2-4CC2-9336-1D1113A0DB04',
ModifiedBy NVARCHAR(36) DEFAULT 'DE93448F-5ED2-4CC2-9336-1D1113A0DB04',
ModifiedDate DATETIME DEFAULT(GETDATE())
)

INSERT INTO Dumas_Br_Dept (Department_Name,Tel_Number) VALUES
('General Services', '0261-4567890'),
('Emergrncy', '0261-6789012'),
('Accident', '0261-7890123'),
('General Surgery', '0261-8901234'),
('Gynecplogy', '0261-9012345'),
('Neurology', '0261-0123456'),
('Radiology', '0261-8346236'),
('Laboratory', '0261-2345678'),
('Pharmacy', '0261-5643464'),
('Discharge Launge', '0261-4455667'),
('Accounts/Operation', '0261-7788990');

SELECT * FROm Dumas_Br_Dept;