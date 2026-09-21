1.Creating a database:

query:- CREATE DATABASE company_db;


2.To show whether the database is created or not:

query:-SHOW DATABASES;


3.To use the created database:

query:-USE company_db;


4.To create a deparments table inside the database company:

query:-

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);


5.Describe the data inside the department table

query:-DESC departments;


6.Insert data into the departments table:

query:-
INSERT INTO departments
VALUES (1, 'Computer Science');

INSERT INTO departments
VALUES (2, 'Mechanical');


7.To display the inserted data:

query:-SELECT * FROM departments;


8.To create an employees table inside the database company:

query:-
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,

    name VARCHAR(100) NOT NULL,

    email VARCHAR(100) UNIQUE,

    salary DECIMAL(10,2) CHECK (salary > 0),

    city VARCHAR(50) DEFAULT 'Bangalore',

    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);



9.Insert data into the employees table:

query:-
INSERT INTO employees
(employee_id, name, email, salary, city, department_id)
VALUES
(101, 'Vijaya', 'vijaya@gmail.com', 45000.00, 'GUNTUR', 1);



10.Display the inserted data in employees table:

query:- SELECT * FROM employees;

















