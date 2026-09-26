USER DEFINED FUNCTIONS:-

SYNTAX:-

-- DELIMITER//

-- CREATE FUNCTION function_name(parameter datatype)
-- RETURNS datatype
-- DETERMINISTIC
-- BEGIN
-- -- STATEMENS
-- RETURN VALUE;
-- END //

-- DELIMITER ;


EXAMPLE-1:-

DELIMITER //

CREATE FUNCTION annual_salary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(12,2)
DETERMINISTIC
BEGIN
	RETURN monthly_salary * 12;
END //
DELIMITER ;


EXAMPLE-2:-

DELIMITER //
create function salary_category(
monthly_salary decimal(10,2)
)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN 
	IF monthly_salary >= 70000 THEN 
		RETURN 'HIGH SALARY';
	ELSEIF monthly_salary >= 50000 THEN 
		RETURN 'MEDIUM SALARY';
	ELSE
		RETURN 'LOW SALARY';
	END IF;

END //
DELIMITER ;



SIMPLE STORE PROCEDURE:-

DELIMITER //
create procedure get_all_employees()
BEGIN 
	SELECT *
    FROM employees;

END //
DELIMITER ;
call get_all_employees();



PROCEDURE WITH IN PARAMETER:-

FIND EMPLOYEES FROM A PARTICULAR DEPT?


DELIMITER //

CREATE PROCEDURE get_employees_by_department(
    IN dept_id INT
)
BEGIN
    SELECT 
        employee_id,
        employee_name,
        salary,
        department_id
    FROM employees
    WHERE department_id = dept_id;
END //

DELIMITER ;



PROCEDURE TO INSERT EMPLOYEE:-

DELIMITER //

CREATE PROCEDURE add_employee(
	IN emp_name VARCHAR(100),
    IN emp_email VARCHAR(100),
    in emp_salary DECIMAL(10,2),
    IN dept_id INT,
    IN join_date DATE
)
BEGIN
    INSERT INTO employees
    (
        employee_name,
        email,
        salary,
        department_id,
        joining_date
	)
    VALUES
    (
		emp_name,
        emp_email,
        emp_salary,
        dept_id,
        join_date
	);
END //

DELIMITER ;

CALL add_employee(
	'vijaya',
    'vijaya@gmail.com',
    65000,
    1,
    '2026-01-26'
);



PROCEDURE TO UPDATE SALARY:-


DELIMITER //

CREATE PROCEDURE update_employee_salary1(
	IN emp_id int,
    in new_salary DECIMAL(10,2)
)
BEGIN
    UPDATE employees
    SET salary = new_salary
    WHERE employee_id = emp_id;
END //

DELIMITER ;

CALL update_employee_salary1(2,70000);



PROCEDURE TO DELETE EMPLOYEE:-

CREATE PROCEDURE update_employee_salary1(
	IN emp_id int,
)


PROCEDURE TO DELETE EMPLOYEE:-


DELIMITER //

CREATE PROCEDURE delete_employee(
	IN emp_id int
)
BEGIN
    delete from employees
    WHERE employee_id = emp_id;
END //

DELIMITER ;


STORED PROCEDURE WITH IF:-

FIND WHETHER AN EMPLOYEE EARNS A HIGH SALARY?




































