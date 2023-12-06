USE hospitalManagment

CREATE TABLE Alkapuri_Staff(
    Department_ID INT FOREIGN KEY REFERENCES Alkapuri_Br_Dept(Department_ID),
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

INSERT INTO Alkapuri_Staff (First_Name, Last_Name, Gender, Phone_Number, Department, Designation, Salary, Joining_Date, Address)
VALUES
    ('Dev', 'Kumar', 'Male', '9876543210', 'Billing', 'Coding specialists', 29000.00, '2023-01-15', '123 Heart Street, Mumbai'),
    ('Kinjal', 'Sharma', 'Female', '8765432109', 'Accounts', 'Accountant', 35000.00, '2022-11-20', '456 Kids Lane, Delhi'),
    ('Prashant', 'Verma', 'Male', '7654321098', 'Finance', 'Associate', 40000.00, '2022-09-05', '789 Operation Road, Chennai'),
    ('Jyoti', 'Patel', 'Female', '6543210987', 'Nursing', 'Nurse', 25000.00, '2023-02-10', '234 X-ray Street, Bangalore'),
	('Kano', 'Sharma', 'Male', '7654321098', 'pharmacy', 'pharmacist', 45000.00, '2023-02-20', '234 Operation Road, Chennai'),
    ('Mansi', 'Patil', 'Female', '6543210987', 'pharmacy', 'pharmacist', 82000.00, '2022-12-15', '456 X-ray Street, Mumbai'),
    ('Vraj', 'Mehta', 'Male', '9876543210', 'Maintenance ', 'HR', 86000.00, '2023-01-10', '789 Heart Lane, Delhi'),
    ('Rani', 'Rathore', 'Female', '8765432109', 'Operation', 'Records Specialist', 78000.00, '2022-11-05', '567 Kids Lane, Bangalore'),
    ('Akash', 'Kulkarni', 'Male', '5432109876', 'Health care', 'Ward Boy', 87000.00, '2022-12-25', '123 Bone Avenue, Pune'),
    ('Manju', 'Das', 'Female', '6543210987', 'Health care', 'Ward Girl', 90000.00, '2023-03-10', '234 Cancer Street, Kolkata'),
	('Mlati', 'solanki', 'Female', '6543210987', 'Nursing', 'Nurse', 21000.00, '2023-02-15', '234 X-ray Street, Vadodara'),
	('Dveyani', 'Shani', 'Female', '6543210564', 'Nursing', 'Nurse', 28000.00, '2021-02-19', '234 X-ray Street, Vadodara');

 


UPDATE Alkapuri_Staff
SET Department_ID = 602
WHERE Staff_ID IN (11)

SELECT * FROM Alkapuri_Staff;