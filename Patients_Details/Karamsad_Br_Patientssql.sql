USE hospitalManagment

CREATE TABLE Karamsad_Br_Patients (
    Patient_ID INT PRIMARY KEY IDENTITY(501, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	AGE INT,
    GENDER CHAR(1),
    Address NVARCHAR(255),
    Phone_Number NVARCHAR(15),
    Disease NVARCHAR(100),
	Nurse_ID INT FOREIGN KEY REFERENCES Karamsad_Staff(Staff_ID),
	Doctor_ID INT FOREIGN KEY REFERENCES Karamsad_Doctors(Doctor_ID)
);

INSERT INTO Karamsad_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
    ('Anita', 'Jain', 30, 'F', '567 Gandhi Road, Mumbai', '9876541234', 'Asthma'),
    ('Sachin', 'Shah', 45, 'M', '456 Lotus Lane, Delhi', '8765434321', 'Gastroenteritis'),
    ('Manisha', 'Verma', 28, 'F', '234 Oak Avenue, Kolkata', '7654325678', 'Osteoporosis'),
    ('Amit', 'Singh', 40, 'M', '123 Nehru Street, Bangalore', '6543218765', 'Depression'),
    ('Sarika', 'Sharma', 35, 'F', '345 Lajpat Road, Pune', '5432187654', 'Migraine'),
    ('Rajesh', 'Kumar', 42, 'M', '678 Tagore Lane, Chennai', '6543276543', 'Arthritis'),
    ('Priyanka', 'Patel', 31, 'F', '789 Gandhi Avenue, Hyderabad', '9876543210', 'Hypertension'),
    ('Vikas', 'Gupta', 55, 'M', '890 Lotus Road, Jaipur', '8765439876', 'Diabetes'),
    ('Seema', 'Yadav', 38, 'F', '456 Rose Lane, Lucknow', '6543217654', 'Thyroid Disorder'),
    ('Amit', 'Shukla', 34, 'M', '123 Ashoka Street, Varanasi', '5432198765', 'Allergies');

SELECT * FROM Karamsad_Br_Patients; 