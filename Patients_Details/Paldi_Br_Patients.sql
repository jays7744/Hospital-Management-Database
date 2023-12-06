USE hospitalManagment

CREATE TABLE Paldi_Br_Patients (
    Patient_ID INT PRIMARY KEY IDENTITY(601, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	AGE INT,
    GENDER CHAR(1),
    Address NVARCHAR(255),
    Phone_Number NVARCHAR(15),
    Disease NVARCHAR(100),
	Nurse_ID INT FOREIGN KEY REFERENCES Paldi_Staff(Staff_ID),
	Doctor_ID INT FOREIGN KEY REFERENCES Paldi_Doctors(Doctor_ID)
);

INSERT INTO Paldi_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
    ('Neha', 'Joshi', 32, 'F', '234 Sunshine Lane, Mumbai', '9876545678', 'Asthma'),
    ('Arun', 'Mehta', 48, 'M', '456 Park Road, Delhi', '8765438765', 'Gastroenteritis'),
    ('Shilpa', 'Shah', 29, 'F', '567 River Avenue, Kolkata', '7654324567', 'Osteoporosis'),
    ('Rohit', 'Patel', 41, 'M', '123 Mall Lane, Bangalore', '6543212345', 'Depression'),
    ('Sarita', 'Agarwal', 37, 'F', '345 Garden Street, Pune', '5432198765', 'Migraine'),
    ('Amit', 'Sinha', 44, 'M', '678 Oak Lane, Chennai', '6543276543', 'Arthritis'),
    ('Manoj', 'Gandhi', 30, 'M', '789 Lotus Road, Hyderabad', '9876541234', 'Hypertension'),
    ('Neetu', 'Chopra', 52, 'F', '890 Ashoka Avenue, Jaipur', '8765434321', 'Diabetes'),
    ('Vivek', 'Sharma', 36, 'M', '456 Rose Avenue, Lucknow', '6543218765', 'Thyroid Disorder'),
    ('Pooja', 'Mishra', 33, 'F', '123 Tulsi Lane, Varanasi', '5432187654', 'Allergies');


SELECT * FROM Paldi_Br_Patients; 