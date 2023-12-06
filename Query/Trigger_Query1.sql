USE hospitalManagment

-- FOR Trigger --

CREATE OR ALTER TRIGGER tr_Patient
ON Manjalpur_Br_Patients
AFTER INSERT
AS
BEGIN
SELECT * FROM INSERTED
PRINT 'Successfuly Inserted Patient Details'
END

INSERT INTO Manjalpur_Br_Patients (First_Name, Last_Name, Age, Gender, Address, Phone_Number, Disease)
VALUES
    ('mahi', 'Malani', 45, 'M', '123 Gandhi Street, Mumbai', '9876543210', 'Cancer')

-- For Update Trigger -
UPDATE Manjalpur_Br_Patients
SET Doctor_ID = 3 , Nurse_ID =12
WHERE Patient_ID = 111

-- For Delete Trigger --

ALTER TRIGGER tr_DeletePatient
ON Manjalpur_Br_Patients
AFTER DELETE
AS BEGIN
SELECT * FROM DELETED
PRINT 'Successfuly Deleted Patient Details'
END 

DELETE FROM Manjalpur_Br_Patients 
WHERE Patient_ID IN (117,118)

SELECT * FROM Manjalpur_Br_Patients;

DBCC CHECKIDENT( 'Manjalpur_Br_Patients', RESEED, 110)

-- For Audit table using Trigger --
CREATE TABLE Audit_info(
Audit_ID INT PRIMARY KEY IDENTITY,
Audit_Info NVARCHAR(MAX)
)

SELECT * FROM Audit_info

ALTER TRIGGER tr_Audit
ON Manjalpur_Br_Patients
AFTER INSERT
AS BEGIN 
DECLARE @ID INT
DECLARE @P_Name NVARCHAR(MAX)

SELECT @P_Name = First_Name + ' ' + Last_Name FROM INSERTED
SELECT @ID = Patient_ID FROM INSERTED 
INSERT INTO Audit_info (Audit_Info) VALUES(CAST(@P_Name as NVARCHAR(MAX)) + ' Patient With id '+ Cast(@ID AS NVARCHAR(15)) + ' is added at ' + Cast(GETDATE() AS NVARCHAR(50)))
SELECT * FROM Audit_info

END

-- Instead of Trigger for allow to modify table  --
ALTER TRIGGER tr_Instead 
ON Manjalpur_Br_Patients
INSTEAD OF INSERT
AS BEGIN
INSERT INTO Insert_Audit(Insert_Info)VALUES('Someone try to insert data in to Patient table at ' + CAST(GETDATE()AS NVARCHAR(MAX)))
SELECT * FROM Insert_Audit
SELECT * FROM INSERTED
END

CREATE TABLE Insert_Audit(
Insert_ID INT PRIMARY KEY IDENTITY,
Insert_Info NVARCHAR(MAX)
)

SELECT * FROM Insert_Audit

sp_helptext tr_Instead

-- For Pivot table --

SELECT * FROM (SELECT First_Name,Doctor_ID FROM Manjalpur_Br_Patients) ResultSet  -- Use Drive Table -- 
PIVOT(
COUNT(First_Name)
FOR [Doctor_ID]
IN(
[1],[2],[3],[4],[5],[6] )

)AS PivotTable

SELECT * FROM Manjalpur_Br_Patients


-- Pivot with join --


SELECT * FROM(SELECT D.Doctor_ID,CONCAT(D.First_Name,' ',D.Last_Name) AS Doctor_Name,D.Department,P.Patient_ID,
CONCAT( P.First_Name,' ' , P.Last_Name) AS Patient_name , P.Disease, CONCAT(S.First_Name, ' ', S.Last_Name) AS Staff_name
FROM Manjalpur_Doctors AS D
FULL JOIN Manjalpur_Br_Patients AS P
ON D.Doctor_ID = P.Doctor_ID
FULL JOIN Manjalpur_Staff As S
ON P.Nurse_ID = S.Staff_ID ) AS ResultSet
PIVOT(
COUNT(Staff_Name)
FOR([Doctor_Name])
IN(
[Anjali Sharma],[Arun Patil],[Nisha Verma],[Rajat Kapoor],[Mira Gandhi],[Vikram Singh])
) AS PivotTable

-- FOR CTE --
WITH ctPatient
AS
(SELECT First_Name, Last_Name ,
CASE WHEN AGE >= 50 THEN 'Senior Citizen'
     WHEN AGE >= 35 THEN 'MIddle-Adge'
	 ELSE 'Adult'
	 END 
	 AS Category FROM Manjalpur_Br_Patients

)


SELECT *FROM ctPatient UNION ALL
First_Name, Last_Name FROM Alkapuri_Br_Patients