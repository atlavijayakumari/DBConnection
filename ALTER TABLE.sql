ALTER TABLE:-

1.Add column:

ALTER TABLE students
ADD phone_number INT;


2.Rename column:

ALTER TABLE students
rename COLUMN phone_number TO phone_no;


3.Modify Column:

ALTER TABLE students
 MODIFY age DECIMAL(12,2);


4.Drop Column:

ALTER TABLE students
DROP COLUMN phone_no;
