USE hospitalManagment

-- SP For Gynecplogy Doctor -- 
ALTER PROCEDURE Doctor_Details
AS 
BEGIN															
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Alkapuri_Doctors WHERE Department = 'Gynecplogy' UNION 	
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Manjalpur_Doctors WHERE Department = 'Gynecplogy' UNION
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Dumas_Doctors WHERE Department = 'Gynecplogy' UNION	
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Satellite_Doctors WHERE Department = 'Gynecplogy' UNION
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Karamsad_Doctors WHERE Department = 'Gynecplogy' UNION	
SELECT Doctor_ID,First_Name,Last_Name, Department FROM Paldi_Doctors WHERE Department = 'Gynecplogy'
END

EXEC Doctor_Details;

-- For Input Parameter  --

ALTER PROCEDURE spStaff 
@Dept NVARCHAR(MAX),
@emp_Salary INT
AS
BEGIN 
SELECT First_Name, Phone_Number FROM Manjalpur_Staff WHERE Department = @Dept;

SELECT * FROM Alkapuri_Staff WHERE Salary >= @emp_Salary AND Department = @Dept
END

spStaff 'Nursing', 22000

-- For Inner Join / Got the doctors who assigned with patient and what the disease --

SELECT D.Doctor_ID,CONCAT(D.First_Name,' ',D.Last_Name) AS Doctor_Name,D.Department,P.Patient_ID,
CONCAT( P.First_Name,' ' , P.Last_Name) AS Patient_name , P.Disease
FROM Dumas_Doctors AS D
INNER JOIN Dumas_Br_Patients AS P
ON D.Doctor_ID = P.Doctor_ID
ORDER BY D.Doctor_ID



-- For Full Join / Doctors As well As Staff with Full Join--

SELECT D.Doctor_ID,CONCAT(D.First_Name,' ',D.Last_Name) AS Doctor_Name,D.Department,P.Patient_ID,
CONCAT( P.First_Name,' ' , P.Last_Name) AS Patient_name , P.Disease, CONCAT(S.First_Name, ' ', S.Last_Name) AS Staff_name
FROM Manjalpur_Doctors AS D
FULL JOIN Manjalpur_Br_Patients AS P
ON D.Doctor_ID = P.Doctor_ID
FULL JOIN Manjalpur_Staff As S
ON P.Nurse_ID = S.Staff_ID

WHERE D.First_Name = @drName

-- For Hospital Detials -- 
SELECT * FROM Sunshine_Global_Hospital
WHERE City = 'Vadodara' AND Branch_Name LIKE 'm%' OR Branch_Name LIKE 'a%'


-- For get dynamic doctor Details with stored procedure -- 

CREATE PROCEDURE spDoctor
@drName NVARCHAR(MAX),
@drdEPT NVARCHAR(MAX)
AS
BEGIN
SELECT * FROM Alkapuri_Doctors WHERE First_Name = @drName union
SELECT * FROM Manjalpur_Doctors WHERE Department LIKE @drdEPT + '%'

END

EXEC spDoctor 'Mansi', 'A' 

-- For get dynamic Patient Data Using SP with join--

ALTER PROCEDURE spDisea
@DeptName NVARCHAR(MAX)
AS 
BEGIN
SELECT D.First_Name, D.Last_Name, D.Department,CONCAT(P.First_Name, ' ', P.Last_Name) AS Patient_Name, P.Age AS Patient_Age, P.Disease
FROM Dumas_Doctors D 
JOIN Dumas_Br_Patients P
ON D.Doctor_ID = P.Doctor_ID
WHERE P.Age >= @DeptName
END 

EXEC spDisea '35'

-- For Implicit Transaction -- 
SET IMPLICIT_TRANSACTIONS ON
INSERT INTO Alkapuri_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES ('Devyani', 'Kumari', 55, 'M', '234 Mahatma Road, Mumbai', '9876544321', 'Diabetes')
UPDATE Alkapuri_Br_Patients SET First_Name = 'Kinjal', Last_Name = 'Desai' WHERE Patient_ID = 210
DELETE FROM Alkapuri_Br_Patients WHERE Patient_ID IN (212)
COMMIT Transaction
     -- OR--
ROLLBACK Transaction


-- For Explicit Transaction --
BEGIN TRANSACTION

DELETE FROM Dumas_Doctors WHERE Doctor_ID = 7
UPDATE Dumas_Br_Patients SET Doctor_ID = NULL WHERE Doctor_ID = 7
COMMIT TRANSACTION


INSERT INTO Dumas_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES ('Mahesh', 'Yogi', 35, 'M', '234 Mahatma Road, Vadodara', '9876544321', 'Spinal Injuries')
SELECT Doctor_ID FROM Dumas_Doctors WHERE Department ='Accident';

-- For SP with Transactions -- 
CREATE PROCEDURE spDumas
@pat INT
AS
BEGIN
BEGIN TRANSACTION

DELETE FROM Dumas_Br_Patients WHERE Patient_ID = @pat

DECLARE @Patient INT
SET @Patient = @pat
IF @pat = @Patient 

BEGIN COMMIT END

ELSE
BEGIN ROLLBACK END
END
COMMIT TRANSACTION
EXEC spDumas 311

SELECT * FROM Dumas_Br_Patients; 


-- For View with join --
CREATE VIEW vwDemo
AS
SELECT D.Doctor_ID,CONCAT(D.First_Name,' ',D.Last_Name) AS Doctor_Name,D.Department,P.Patient_ID,
CONCAT( P.First_Name,' ' , P.Last_Name) AS Patient_name , P.Disease
FROM Dumas_Doctors AS D
FULL JOIN Dumas_Br_Patients AS P
ON D.Doctor_ID = P.Doctor_ID 

SELECT * FROM vwDemo 

-- For Row and Column level security -- 
ALTER VIEW vwRowlvl
As
SELECT * FROM Dumas_Br_Patients 
WHERE GENDER = 'M'               -- Row level security--        -- Also Use = IN ('Radiology','neurology','General Services') --

SELECT * FROM vwRowlvl

CREATE VIEW vwColLvl
AS 
SELECT CONCAT(First_Name, + ' ' + Last_Name) Doctor_Name, Department, Phone_Number FROM Dumas_Doctors   -- Column Level Security --

SELECT * FROM vwColLvl
