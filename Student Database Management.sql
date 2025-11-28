CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
StudentID int Primary Key,
Name Varchar(25),
Age int,
Grade Varchar(25)
);

CREATE TABLE Courses (
    CourseID int Primary Key,
    CourseName Varchar(25),
    Credits int
);

CREATE TABLE Enrollments (
    EnrollmentID int Primary Key,
    StudentID int,
    CourseID int,
    Grade Varchar(25)
);

INSERT INTO Students (StudentID, Name, Age, Grade) VALUES
(1, 'Hari', 20, 'Junior'),
(2, 'Lakshmi', 21, 'Sophomore'),
(3, 'Swathi', 18, 'Freshman'),
(4, 'Ravi', 23, 'Senior');

INSERT INTO Courses (CourseID, CourseName, Credits) VALUES
(1, 'Maths', 3),
(2, 'Science', 4),
(3, 'English', 3),
(4, 'Social', 2);

INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
(1, 1, 1, 'A'),
(2, 3, 2, 'B'),
(3, 2, 1, 'A'),
(4, 3, 3, 'c'),
(5, 4, 4, 'B');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Enrollments;

SELECT s.Name, c.CourseName, e.Grade
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID;

SELECT c.CourseName, COUNT(e.StudentID) AS Total_Students
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

SELECT AVG(Age) AS AverageAge FROM Students;

SELECT MAX(StudentID)
FROM Students;

SELECT count(EnrollmentID)
FROM Enrollments;

SELECT DISTINCT name
FROM Students;

SELECT s.Name, c.CourseName
FROM Enrollments e
JOIN Students s ON s.StudentID = e.StudentID
JOIN Courses c ON c.CourseID = e.CourseID
WHERE e.Grade = 'A';

SELECT s.Name
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.EnrollmentID IS NULL;

SELECT s.Name
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
WHERE e.EnrollmentID IS NOT NULL;

SELECT s.Name, SUM(c.Credits) AS TotalCredits
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
GROUP BY s.Name;

SELECT sum(Credits) AS TotalCredits
FROM Courses;

SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;

SELECT c.CourseName, MAX(e.Grade) AS HighestGrade
FROM Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseName;

SELECT s.Name, COUNT(e.CourseID) AS CoursesCount
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY s.Name
HAVING COUNT(e.CourseID) > 1;

SELECT Name, Age, Grade
FROM Students
ORDER BY Age DESC;

SELECT Name, Age, Grade
FROM Students
ORDER BY Name DESC;

SELECT c.CourseName
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
WHERE e.EnrollmentID IS NOT NULL;





