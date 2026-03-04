CREATE DATABASE student_analysis;
USE student_analysis;

-- Student_Performance_Analysis_Mini_Project_Using_MySql --

CREATE TABLE students ( student_id INT PRIMARY KEY,
						name VARCHAR(50),
                        department VARCHAR(50),
                        marks INT,
                        attendance INT ); 
                        

INSERT INTO students VALUES
(1,'Asha','CSE',85,92),
(2,'Ravi','ISE',72,80),
(3,'Meena','CSE',90,95),
(4,'Kiran','ECE',65,70),
(5,'Divya','CSE',78,88);

-- Average marks
SELECT AVG(marks) FROM students;

-- Top performer
SELECT * FROM students
ORDER BY marks DESC
LIMIT 1;

-- Department-wise average
SELECT department, AVG(marks)
FROM students
GROUP BY department;

-- Students with attendance > 85
SELECT * FROM students
WHERE attendance > 85;