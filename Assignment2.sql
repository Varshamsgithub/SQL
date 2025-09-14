Create Table Students2(
StudentID INT Primary Key Identity(1,1),
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE,
Age INT CHECK(Age>=18),
Course VARCHAR(50) DEFAULT'General',
AdmissionDate DATE NOT NULL
)

drop table Students2
DROP TABLE Students_Backup

INSERT INTO Students2(FirstName,LastName,Email,Age,Course,AdmissionDate)VALUES
('AMIRTHA','DHARSHINI','amirtha45@gmail.com',20,'ECE',GETDATE()-4),
('KAVIN','PRIYA','kavin25@gmail.com',22,'CSE',GETDATE()-5),
('PRIYA','DHARSHINI','priya76@gmail.com',19,DEFAULT,GETDATE()-1),
('MEENA','SRI','meena6570@gmail.com',23,'Mechanical',GETDATE()-2),
('RAHUL','SINGH','rahulsingh34@gmail.com',25,'EEE',GETDATE()-3),
('SNEHA','ROSH','rosh456@gmail.com',18,'CIVIL',GETDATE()-6),
('ARJUN','SINGH','arjunsingh789@gmail.com',21,DEFAULT,GETDATE()-7)

ALTER TABLE Students2
ADD PhoneNumber VARCHAR(15)

SELECT* FROM Students2
SELECT*
FROM Students_Backup

SELECT *
INTO Students_Backup
FROM Students2



UPDATE Students2
SET Students2.AGE=21
FROM Students2 
WHERE FirstName='PRIYA'

UPDATE stu
SET stu.Age=bak.Age
FROM Students2 AS stu
INNER JOIN Students_Backup AS bak
ON stu.StudentID=bak.StudentID
WHERE stu.FirstName='PRIYA'
