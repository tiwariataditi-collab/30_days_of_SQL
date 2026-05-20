CREATE DATABASE college;
USE college;

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

#select clause is used to select data from a database. The data returned is stored in a result table,
called the result-set.


SELECT name, marks FROM students;

#where clause is used to filter records that meet a certain condition. It is used to extract only those 
records that fulfill a specified condition.


SELECT *
FROM students
WHERE marks > 80;

#operators are used in the WHERE clause to specify conditions. They include comparison operators, 
logical operators, and arithmetic operators.

SELECT *
FROM students
WHERE marks+10 > 100;

#between operator is used to filter the result set within a certain range. The values can be numbers, 
text, or dates.

SELECT * 
FROM students
WHERE marks BETWEEN 80 AND 90;

#IN operator is used to filter the result set based on a list of values. It allows you to specify multiple
values in a WHERE clause.

SELECT *
FROM students
WHERE city IN ('New York', 'Chicago');

#NOT IN operator is used to filter the result set based on a list of values. It allows you to specify multiple
values in a WHERE clause.

SELECT *
FROM students
WHERE city NOT IN ('New York', 'Chicago');
