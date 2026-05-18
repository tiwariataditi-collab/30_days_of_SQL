CREATE DATABASE IF NOT EXISTS company;

USE company;

CREATE TABLE IF NOT EXISTS employees (
  id INT,
  name VARCHAR(50),
  salary INT
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Aditi', 50000),
(2, 'Vikram', 60000),
(3, 'Anjali', 63000),
(4, 'Rohit', 58000);