USE hospitalManagment


CREATE TABLE Manjalpur_Br_Dept (
Hospital_ID INT DEFAULT (1),
FOREIGN KEY (Hospital_ID) REFERENCES Sunshine_Global_Hospital(Hospital_ID),
Department_ID INT IDENTITY(501,1) PRIMARY KEY,
Department_Name NVARCHAR(MAX)NOT NULL,
Tel_Number VARCHAR(15),
IsActive BIT DEFAULT(1),
CreatedDate DATETIME DEFAULT(GETDATE()),
CreatedBy NVARCHAR(36) DEFAULT '660C66F6-B61C-446B-8A0B-6983EEB307AE',
ModifiedBy NVARCHAR(36) DEFAULT '660C66F6-B61C-446B-8A0B-6983EEB307AE',
ModifiedDate DATETIME DEFAULT(GETDATE())
)


INSERT INTO Manjalpur_Br_Dept(Department_Name,Tel_Number) VALUES
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


-- For Change Datatype --
ALTER TABLE Manjalpur_Br_Dept
ALTER COLUMN Tel_Number NVARCHAR(30);

-- For Add Foreign Key -- 
ALTER TABLE Manjalpur_Br_Dept
ADD Hospital_ID INT FOREIGN KEY REFERENCES Sunshine_Global_Hospital(Hospital_ID);

-- For Insert Hospital Id -- 
UPDATE Manjalpur_Br_Dept
SET ModifiedBy = 'D1951C86-076D-442B-A410-2F11C0C9E44D'


SELECT *FROM Manjalpur_Br_Dept