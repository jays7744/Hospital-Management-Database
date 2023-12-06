USE hospitalManagment

CREATE TABLE Karamsad_Staff(
    Department_ID INT FOREIGN KEY REFERENCES Karamsad_Br_Dept(Department_ID),
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
    CreatedBy NVARCHAR(36) DEFAULT('3107277A-AC48-4B67-BF2D-48FCA2F3F8F3'),
    ModifiedDate DATETIME DEFAULT(GETDATE()),
    ModifiedBy NVARCHAR(36) DEFAULT('3107277A-AC48-4B67-BF2D-48FCA2F3F8F3')
);

INSERT INTO Karamsad_Staff (First_Name, Last_Name, Gender, Phone_Number, Department, Designation, Salary, Joining_Date, Address)
VALUES
    ('Manish', 'Kumar', 'Male', '9876543210', 'Billing', 'Coding specialists', 29000.00, '2023-01-15', '123 Heart Street, Mumbai'),
    ('Yani', 'Sharma', 'Female', '8765432109', 'Accounts', 'Accountant', 35000.00, '2022-11-20', '456 Kids Lane, Delhi'),
    ('Prakash', 'Verma', 'Male', '7654321098', 'Finance', 'Associate', 40000.00, '2022-09-05', '789 Operation Road, Chennai'),
    ('Shivani', 'Patel', 'Female', '6543210987', 'Nursing', 'Nurse', 25000.00, '2023-02-10', '234 X-ray Street, Bangalore'),
	('Abhishek', 'Sharma', 'Male', '7654321098', 'pharmacy', 'pharmacist', 45000.00, '2023-02-20', '234 Operation Road, Chennai'),
    ('Maya', 'Patil', 'Female', '6543210987', 'pharmacy', 'pharmacist', 42000.00, '2022-12-15', '456 X-ray Street, Mumbai'),
    ('Gaurav', 'Mehta', 'Male', '9876543210', 'Maintenance ', 'HR', 55000.00, '2023-01-10', '789 Heart Lane, Delhi'),
    ('Aarti', 'Rathore', 'Female', '8765432109', 'Operation', 'Records Specialist', 21000.00, '2022-11-05', '567 Kids Lane, Bangalore'),
    ('Keval', 'Kulkarni', 'Male', '5432109876', 'Health care', 'Ward Boy', 8000.00, '2022-12-25', '123 Bone Avenue, Pune'),
    ('Janki', 'Das', 'Female', '6543210987', 'Health care', 'Ward Girl', 9000.00, '2023-03-10', '234 Cancer Street, Kolkata'),
	('Alexa', 'solanki', 'Female', '6543210987', 'Nursing', 'Nurse', 21000.00, '2023-02-15', '234 X-ray Street, Vadodara'),
	('Dimpal', 'Shani', 'Female', '6543210564', 'Nursing', 'Nurse', 28000.00, '2021-02-19', '234 X-ray Street, Vadodara');
  
  
UPDATE Karamsad_Staff
SET Department_ID = 911
WHERE Staff_ID IN (1,2,3,7,8)

SELECT * FROM Karamsad_Staff;