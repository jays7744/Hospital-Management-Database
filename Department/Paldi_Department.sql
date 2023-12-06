USE hospitalManagment


CREATE TABLE Paldi_Br_Dept (
Hospital_ID INT FOREIGN KEY REFERENCES Sunshine_Global_Hospital(Hospital_ID) DEFAULT(6),
Department_ID INT IDENTITY(1001,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number NVARCHAR(15),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT 'B1C50C7C-7885-4502-8765-A3A190A1D2F6',
ModifiedBy NVARCHAR(36) DEFAULT 'B1C50C7C-7885-4502-8765-A3A190A1D2F6',
ModifiedDate DATETIME DEFAULT(GETDATE())
)

INSERT INTO Paldi_Br_Dept (Department_Name, Tel_Number) VALUES
('General Services', '079-3344556'),
('Emergrncy', '079-4455667'),
('Accident', '079-3456789'),
('General Surgery', '079-9900112'),
('Gynecplogy', '079-5678901'),
('Neurology', '079-0011223'),
('Radiology', '0261-4455667'),
('Laboratory', '079-7890123'),
('Pharmacy', '079-2233445'),
('Discharge Launge', '079-3344556'),
('Accounts/Operation', '079-9876543');

SELECT * FROM Paldi_Br_Dept;
