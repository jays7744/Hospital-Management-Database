USE hospitalManagment

CREATE TABLE Manjalpur_Staff(
    Department_ID INT FOREIGN KEY REFERENCES Manjalpur_Br_Dept(Department_ID),
    Staff_ID INT PRIMARY KEY IDENTITY(1, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(10),
    Phone_Number NVARCHAR(15),
    Department NVARCHAR(50),
    Designation NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Joining_Date DATE,
    Address NVARCHAR(MAX),
    IsActive BIT DEFAULT(1),
    CreatedDate DATETIME DEFAULT(GETDATE()),
    CreatedBy UNIQUEIDENTIFIER DEFAULT NEWID(),
    ModifiedDate DATETIME DEFAULT(GETDATE()),
    ModifiedBy UNIQUEIDENTIFIER DEFAULT NEWID()
);

INSERT INTO Manjalpur_Staff (First_Name, Last_Name, Gender, Phone_Number, Department, Designation, Salary, Joining_Date, Address)
VALUES
    ('Aman', 'Kumar', 'Male', '9876543210', 'Billing', 'Coding specialists', 29000.00, '2023-01-15', '123 Heart Street, Mumbai'),
    ('kajol;', 'Sharma', 'Female', '8765432109', 'Accounts', 'Accountant', 35000.00, '2022-11-20', '456 Kids Lane, Delhi'),
    ('Prem', 'Verma', 'Male', '7654321098', 'Finance', 'Associate', 40000.00, '2022-09-05', '789 Operation Road, Chennai'),
    ('jagruti', 'Patel', 'Female', '6543210987', 'Nursing', 'Nurse', 25000.00, '2023-02-10', '234 X-ray Street, Bangalore'),
	('Kanu', 'Sharma', 'Male', '7654321098', 'pharmacy', 'pharmacist', 45000.00, '2023-02-20', '234 Operation Road, Chennai'),
    ('Minaxi', 'Patil', 'Female', '6543210987', 'pharmacy', 'pharmacist', 82000.00, '2022-12-15', '456 X-ray Street, Mumbai'),
    ('Vijay', 'Mehta', 'Male', '9876543210', 'Maintenance ', 'HR', 86000.00, '2023-01-10', '789 Heart Lane, Delhi'),
    ('Ranjana', 'Rathore', 'Female', '8765432109', 'Operation', 'Records Specialist', 78000.00, '2022-11-05', '567 Kids Lane, Bangalore'),
    ('Ankush', 'Kulkarni', 'Male', '5432109876', 'Health care', 'Ward Boy', 87000.00, '2022-12-25', '123 Bone Avenue, Pune'),
    ('Minisha', 'Das', 'Female', '6543210987', 'Health care', 'Ward Girl', 90000.00, '2023-03-10', '234 Cancer Street, Kolkata'),
	('Kevyani', 'solanki', 'Female', '6543210987', 'Nursing', 'Nurse', 21000.00, '2023-02-15', '234 X-ray Street, Vadodara'),
	('Jalpa', 'Shani', 'Female', '6543210564', 'Nursing', 'Nurse', 28000.00, '2021-02-19', '234 X-ray Street, Vadodara');


 -- For Update Depat ID which comming from dept Table --
UPDATE Manjalpur_Staff
SET Department_ID = 504
WHERE Staff_ID = 9

UPDATE Manjalpur_Staff
SET Department = 'General Services'
WHERE Staff_ID = 10

SELECT * FROM Manjalpur_Staff;