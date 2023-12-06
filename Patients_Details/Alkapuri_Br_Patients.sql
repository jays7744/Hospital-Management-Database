USE hospitalManagment

CREATE TABLE Alkapuri_Br_Patients (
    Patient_ID INT PRIMARY KEY IDENTITY(201, 1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
	AGE INT,
    GENDER CHAR(1),
    Address NVARCHAR(255),
    Phone_Number NVARCHAR(15),
    Disease NVARCHAR(100),
	Nurse_ID INT FOREIGN KEY REFERENCES Alkapuri_Staff(Staff_ID),
	Doctor_ID INT FOREIGN KEY REFERENCES Alkapuri_Doctors(Doctor_ID)
);

INSERT INTO Alkapuri_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
   ('Mohan', 'Kumar', 55, 'M', '234 Mahatma Road, Mumbai', '9876544321', 'Diabetes'),
    ('Rita', 'Verma', 29, 'F', '789 Lotus Avenue, Delhi', '8765432109', 'Hypertension'),
    ('Vikram', 'Sharma', 60, 'M', '567 Tagore Lane, Kolkata', '7654321234', 'Cancer'),
    ('Sneha', 'Mishra', 32, 'F', '123 Ganges Road, Bangalore', '6543215678', 'Pregnancy and Prenatal Care'),
    ('Amit', 'Saxena', 44, 'M', '456 Shanti Nagar, Pune', '5432109876', 'Thyroid Disorder'),
    ('Meera', 'Gandhi', 38, 'F', '890 Krishna Street, Chennai', '6543210987', 'Infertility'),
    ('Vivek', 'Singh', 53, 'M', '345 Tulsi Road, Hyderabad', '9876543210', 'Migraine'),
    ('Sunita', 'Agarwal', 41, 'F', '678 Gandhi Lane, Jaipur', '8765432109', 'Heart Disease'),
    ('Rahul', 'Yadav', 50, 'M', '234 Yamuna Road, Lucknow', '6543212345', 'Trauma and Injuries'),
    ('Pooja', 'Shukla', 31, 'F', '789 Indira Avenue, Varanasi', '5432123456', 'Headaches and Migraines');

SELECT * FROM Alkapuri_Br_Patients; 

DBCC CHECKIDENT ('Alkapuri_Br_Patients', RESEED, 210);