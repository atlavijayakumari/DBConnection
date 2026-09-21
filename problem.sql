use company_db;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    
    course_name VARCHAR(100) UNIQUE NOT NULL,
    
    duration INT CHECK (duration > 0),
    
    fees DECIMAL(10,2) CHECK (fees > 0)
);

INSERT INTO courses
(course_id, course_name, duration, fees)
VALUES
(1, 'Java Full Stack', 6, 35000);

INSERT INTO courses
(course_id, course_name, duration, fees)
VALUES
(2, 'Python Full Stack', 6, 32000);

select * from couses


CREATE TABLE students (
    student_id INT PRIMARY KEY,
    
    student_name VARCHAR(100) NOT NULL,
    
    email VARCHAR(100) UNIQUE,
    
    age INT CHECK (age >= 18),
    
    city VARCHAR(50) DEFAULT 'Bangalore',
    
    course_id INT,
    
    FOREIGN KEY (course_id)
    REFERENCES courses(course_id)
);

INSERT INTO students
(student_id, student_name, email, age, course_id)
VALUES
(101, 'VIJAYA', 'vijaya@gmail.com', 20, 1);

INSERT INTO students
(student_id, student_name, email, age, course_id)
VALUES
(102, 'SIVA', 'siva@gmail.com', 21, 2);

INSERT INTO students
(student_id, student_name, email, age, course_id)
VALUES
(103, 'KUMARI', 'kumari@gmail.com', 23, 3);


select * from students

