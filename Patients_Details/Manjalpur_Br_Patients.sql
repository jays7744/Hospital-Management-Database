USE hospitalManagment

CREATE TABLE Manjalpur_Br_Patients (
    Patient_ID INT PRIMARY KEY IDENTITY(101, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	AGE INTEGER,
    GENDER CHAR(1),
    Address NVARCHAR(255),
    Phone_Number NVARCHAR(15),
    Disease NVARCHAR(100),
	Nurse_ID INT FOREIGN KEY REFERENCES Manjalpur_Staff(Staff_ID),
	Doctor_ID INT FOREIGN KEY REFERENCES Manjalpur_Doctors(Doctor_ID)
);

INSERT INTO Manjalpur_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
    ('Ravi', 'Patel', 45, 'M', '123 Gandhi Street, Mumbai', '9876543210', 'Diabetes'),
    ('Priya', 'Sharma', 30, 'F', '456 Oak Lane, Delhi', '8765432109', 'Hypertension'),
    ('Rahul', 'Gupta', 50, 'M', '789 Rabindranath Avenue, Kolkata', '7654321098', 'Cancer'),
    ('Deepa', 'Mohan', 40, 'F', '567 Tagore Road, Bangalore', '6543210987', 'Trauma and Injuries'),
    ('Suresh', 'Verma', 35, 'M', '234 Lajpat Nagar, Pune', '5432109876', 'Thyroid Disorder'),
    ('Nisha', 'Kumar', 55, 'F', '789 Nehru Street, Chennai', '6543210987', 'Arthritis'),
    ('Amit', 'Gandhi', 28, 'M', '678 Ashoka Lane, Hyderabad', '9876543210', 'Migraine'),
    ('Anjali', 'Singh', 48, 'F', '890 Ramkrishna Road, Jaipur', '8765432109', 'Heart Disease'),
    ('Sunita', 'Rajput', 42, 'F', '345 Nalanda Lane, Lucknow', '6543210987', 'Pregnancy and Prenatal Care'),
    ('Rajesh', 'Yadav', 37, 'M', '456 Ganges Road, Varanasi', '5432109876', 'Headaches and Migraines');

SELECT * FROM Manjalpur_Br_Patients;