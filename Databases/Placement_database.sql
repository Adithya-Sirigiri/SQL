DROP DATABASE IF EXISTS  placement_db;
CREATE DATABASE placement_db;
USE placement_db;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
cgpa DECIMAL(3,2),
branch VARCHAR(30),
placed BOOLEAN
);

INSERT INTO students VALUES 
(1,'Adithya',9.4,'DSA',false),
(2,'Satwik',7.5,'CS',true),
(3,'Sai',8,'CS',false),
(4,'Shashi',7,'IT',true),
(5,'Nani',6.4,'IT',false);

ALTER TABLE students MODIFY cgpa DECIMAL(3,2) NOT NULL;
ALTER TABLE students MODIFY placed boolean DEFAULT false;

UPDATE students set placed=true WHERE student_id=3;

DELETE FROM students WHERE cgpa<6.0;

ALTER TABLE Students DROP branch;
DROP DATABASE placement_db;