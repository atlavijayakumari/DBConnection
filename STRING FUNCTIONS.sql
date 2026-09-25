STRING FUNCTIONS


1.UPPER():-

SELECT UPPER(employee_name)
from employees;


2.LOWER():-

SELECT UPPER(employee_name)
from employees;


3.LENGTH():-

select employee_name,
LENGTH(employee_name) as name_length
from employees;


AGGREGATE FUNCTIONS


1.COUNT():-

SELECT COUNT(*) AS total_employees
FROM employees;


2.SUM():-

SELECT SUM(salary) as total_salary
FROM employees;


3.AVG():-

SELECT AVG(salary) as average_salary
FROM employees;


4.MAX():-

SELECT MAX(salary) as highest_salary
FROM employees;


5.MIN():-

SELECT MIN(salary) as minimum_salary
FROM employees;


6.ROUND():-

SELECT ROUND(AVG(salary),2) as average_salary
FROM employees;


















