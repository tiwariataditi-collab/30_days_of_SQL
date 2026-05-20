USE company;

# Drop tables in reverse order of their dependencies to allow clean re-runs
DROP TABLE IF EXISTS temp3;
DROP TABLE IF EXISTS temp2;
DROP TABLE IF EXISTS temp1;

#UNIQUE constraint allows only unique values in the column. It can be applied to one or more columns. It does not allow duplicate values in the column(s) it is applied to.
CREATE TABLE temp1(
    id INT UNIQUE
);

INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (102); 

SELECT * FROM temp1;

#PRIMARY KEY constraint is a combination of UNIQUE and NOT NULL. It uniquely identifies each record in the table. A table can have only one PRIMARY KEY, which can consist of one or more columns.
CREATE TABLE temp2 (
    id INT ,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT,
    PRIMARY KEY (id)
);

INSERT INTO temp2 VALUES (101, 'ADITI', 'DELHI', 25);
INSERT INTO temp2 VALUES (102, 'HELLO', 'DELHI', 25);

SELECT * FROM temp2;

#FOREIGN KEY constraint is used to link two tables together. It is a field (or collection of fields) in one table that refers to the PRIMARY KEY in another table. The FOREIGN KEY constraint ensures referential integrity of the data in the related tables.
CREATE TABLE temp3 (
    cust_id INT,
    order_name VARCHAR(50),
    FOREIGN KEY (cust_id) REFERENCES temp2(id)
);

INSERT INTO temp3 VALUES (101, 'Laptop');
INSERT INTO temp3 VALUES (102, 'Mobile');

SELECT * FROM temp3;