USE hospitalManagment

CREATE TABLE Satellite_Br_Patients (
    Patient_ID INT PRIMARY KEY IDENTITY(401, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	AGE INT,
    GENDER CHAR(1),
    Address NVARCHAR(255),
    Phone_Number NVARCHAR(15),
    Disease NVARCHAR(100),
	Nurse_ID INT FOREIGN KEY REFERENCES Satellite_Staff(Staff_ID),
	Doctor_ID INT FOREIGN KEY REFERENCES Satellite_Doctors(Doctor_ID)
);

INSERT INTO Satellite_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
    ('Kajal', 'Kumar', 35, 'F', '123 Sunshine Street, Mumbai', '9876544321', 'Diabetes'),
    ('Mehul', 'Sharma', 28, 'M', '456 River Lane, Delhi', '8765432109', 'Hypertension'),
    ('Nisha', 'Gupta', 42, 'F', '567 Park Avenue, Kolkata', '7654321234', 'Cancer'),
    ('vivek', 'Mishra', 36, 'M', '234 Lotus Road, Bangalore', '6543215678', 'Trauma and Injuries'),
    ('minaxi', 'Saxena', 50, 'F', '345 Mall Street, Pune', '5432109876', 'Thyroid Disorder'),
    ('ranjeet', 'Gandhi', 45, 'M', '678 Ashoka Lane, Chennai', '6543210987', 'Arthritis'),
    ('Nirali', 'Singh', 29, 'F', '789 Rose Lane, Hyderabad', '9876543210', 'Migraine'),
    ('Ashok', 'Agarwal', 56, 'M', '890 Lotus Road, Jaipur', '8765432109', 'Heart Disease'),
    ('Pranji', 'Yadav', 33, 'F', '456 Ganges Lane, Lucknow', '6543212345', 'Pregnancy and Prenatal Care'),
    ('Ramesh', 'Shukla', 39, 'M', '123 Tulsi Avenue, Varanasi', '5432123456', 'Headaches and Migraines');


SELECT * FROM Satellite_Br_Patients; 
