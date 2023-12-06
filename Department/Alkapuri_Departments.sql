USE hospitalManagment


CREATE TABLE Alkapuri_Br_Dept (
Hospital_ID INT DEFAULT (1),
FOREIGN KEY (Hospital_ID) REFERENCES Sunshine_Global_Hospital(Hospital_ID),
Department_ID INT IDENTITY(601,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number NVARCHAR(12),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT '08446FF8-8CD4-48EB-A9D1-289216F038FF',
ModifiedBy NVARCHAR(36) DEFAULT '08446FF8-8CD4-48EB-A9D1-289216F038FF',
ModifiedDate DATETIME DEFAULT(GETDATE())
)

INSERT INTO Alkapuri_Br_Dept(Department_Name,Tel_Number) VALUES
('General Services', '0265-7188500'),
('Emergency', '0265-6536642'),
('Accident', '0265-411100'),
('General Surgery', '0265-6542384'),
('Gynecology', '0265-4561445'),
('Neurology', '0265-8462487'),
('Radiology', '0265-8346236'),
('Laboratory', '0265-5684145'),
('Pharmacy', '0265-5643464'),
('Discharge Lounge', '0265-7465287'),
('Accounts/Operation', '0265-7465200');

UPDATE Alkapuri_Br_Dept
SET Hospital_ID = 2

-- For Reset Identity -
DBCC CHECKIDENT ('Alkapuri_Br_Dept', RESEED, 600);

SELECT * FROM Alkapuri_Br_Dept