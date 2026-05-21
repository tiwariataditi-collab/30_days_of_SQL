CREATE DATABASE IF NOT EXISTS college;
USE college;

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    roll_no INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);


INSERT INTO students (roll_no , name, marks, grade, city) VALUES
(1, 'Alice', 85, 'A', 'New York'),
(2, 'Bob', 78, 'B', 'Los Angeles'),
(3, 'Charlie', 92, 'A', 'Chicago'),
(4, 'David', 65, 'C', 'Houston'),
(5, 'Eve', 88, 'A', 'Phoenix');

SELECT * FROM students;

INSERT INTO students (roll_no, name, marks, grade, city) VALUES
(6, 'Frank', 72, 'B', 'Chicago'),
(7, 'Grace', 95, 'A', 'New York'),
(8, 'Test User', 40, 'F', 'Dummy City');

#UPDATE statement is used to modify the existing records in a table. It allows you to change the values of one or more columns for all rows that meet a specified condition.
UPDATE students
SET grade = 'A'
WHERE marks > 90;

SELECT * FROM students;

UPDATE students
SET city = 'New York'
WHERE city = 'Chicago'; -- Updates multiple rows sharing a condition

SELECT * FROM students;

#DELETE statement is used to delete existing records in a table. It allows you to remove one or more rows that meet a specified condition.
DELETE FROM students
WHERE roll_no = 8; 


SELECT * FROM students;
