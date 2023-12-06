USE hospitalManagment


CREATE TABLE Satellite_Br_Dept (
Hospital_ID INT FOREIGN KEY REFERENCES Sunshine_Global_Hospital(Hospital_ID) DEFAULT(4),
Department_ID INT IDENTITY(801,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number NVARCHAR(15),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT 'E8CBC7BD-EF36-400A-B1C2-648762A13CF3',
ModifiedBy NVARCHAR(36) DEFAULT 'E8CBC7BD-EF36-400A-B1C2-648762A13CF3',
ModifiedDate DATETIME DEFAULT(GETDATE())
)

INSERT INTO Satellite_Br_Dept (Department_Name, Tel_Number) VALUES
('General Services', '079-1234567'),
('Emergency', '079-2345678'),
('Accident', '079-3456789'),
('General Surgery', '079-4567890'),
('Gynecology', '079-5678901'),
('Neurology', '079-6789012'),
('Radiology', '0261-8346236'),
('Laboratory', '079-7890123'),
('Pharmacy', '079-8901234'),
('Discharge Lounge', '079-0123456'),
('Accounts/Operation', '079-9012345');

SELECT * FROM Satellite_Br_Dept;

