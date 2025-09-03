--DEPARTMENTS
CREATE TABLE Departments(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50) NOT NULL UNIQUE)

--STUDENTS
CREATE TABLE Students(
StudentID INT PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Age INT CHECK(Age>=17),
DepartmentID INT,
FOREIGN KEY(DepartmentID)REFERENCES Departments(DepartmentID)
)

--COURSES
CREATE TABLE Courses(
CourseID INT PRIMARY KEY,
CourseName VARCHAR(50) NOT NULL,
DepartmentID INT,
FOREIGN KEY(DepartmentID) REFERENCES Departments(DepartmentID)
)

INSERT INTO Departments
VALUES(1,'Computer Science'),
(2,'Mechanical'),
(3,'Electrical'),
(4,'Civil'),
(5,'Electronics')

INSERT INTO Students
VALUES(201,'Varsha',20,1),
(202,'Priya',21,2),
(203,'Arjun',22,3),
(204,'Sri',20,4),
(205,'Kumar',23,5)

INSERT INTO Courses
SELECT 301,'DBMS',1 UNION ALL
SELECT 302,'Thermodynamics',2 UNION ALL
SELECT 303,'Circuits',3 UNION ALL
SELECT 304,'Structures',4 UNION ALL
SELECT 305,'AI',5

SELECT *
FROM Students

SELECT *
FROM Departments

SELECT *
FROM Courses

--Display all students whose age is greater than 20.
SELECT *
FROM Students
WHERE Age>20

--Display all courses of the "Computer Science" department.
SELECT *
FROM Courses
WHERE DepartmentID=1;

--Display all students who belong to the "Electronics" department.
SELECT *
FROM Students
WHERE DepartmentID=5

--Display students whose age is between 18 and 22.
SELECT *
FROM Students
WHERE AGE BETWEEN 18 AND 22

--INNER JOIN Students with Departments 
--(to show student names with their department names).
SELECT S.Name,D.DepartmentName
FROM Students S
INNER JOIN Departments AS D
ON S.DepartmentID=D.DepartmentID

--LEFT JOIN Courses with Departments 
--(to show all courses, even if some department does not exist).
SELECT C.CourseName
FROM Courses C
LEFT JOIN Departments D
ON C.DepartmentID=D.DepartmentID

--RIGHT JOIN Students with Courses 
--(to show all courses, even if no student has enrolled in them).
SELECT C.CourseName
FROM Courses C
RIGHT JOIN Students S
ON C.DepartmentID=S.DepartmentID

