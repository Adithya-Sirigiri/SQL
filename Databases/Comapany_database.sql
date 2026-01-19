DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees
(emp_id INT PRIMARY KEY,
name VARCHAR(50),
salary INT,
department VARCHAR(30),
join_date DATE);

INSERT INTO employees VALUES
(1,'Adi',20000,'DA','2006-09-27'),
(2,'Satwik',150000,'CEO','2007-11-28'),
(3,'Sha',40000,'ML','2007-03-02'),
(4,'Sai',50000,'AI','2007-12-24'),
(5,'Nan',250000,'Chairamn','2006-09-16'),
(6,'Paw',100000,'Head','2004-04-12');

ALTER TABLE employees MODIFY salary INT NOT NULL;
ALTER TABLE employees MODIFY salary INT CHECK(salary>=15000);

DELETE FROM employees WHERE emp_id=5;

UPDATE employees set salary=0.1*salary WHERE department='IT';

#Changes the logic for the salary incrementation
#Before it used to decrease the salary of all the IT employees by 10%

UPDATE employees set salary=1.1*salary WHERE department='IT';

DELETE FROM employees;

DROP TABLE employees;
DROP Database company_db;