USE company;


TRUNCATE TABLE company.employees;

 
INSERT INTO company.employees (id, name, salary) VALUES
(1, 'Aditi', 50000),
(2, 'Vikram', 60000),
(3, 'Anjali', 63000),
(4, 'Rohit', 58000);

SELECT * FROM company.employees;