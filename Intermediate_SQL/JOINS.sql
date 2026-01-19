-- INNER JOINS --

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.employee_demographics
JOIN parks_and_recreation.employee_salary
  ON employee_demographics.employee_id=employee_salary.employee_id;
  
SELECT *
FROM parks_and_recreation.employee_demographics AS adi
JOIN parks_and_recreation.employee_salary AS paw
  ON adi.employee_id=paw.employee_id;
  
SELECT adi.first_name,paw.last_name
FROM parks_and_recreation.employee_demographics AS adi
JOIN parks_and_recreation.employee_salary AS paw
  ON adi.employee_id=paw.employee_id;
  
  
-- OUTER JOINS --

SELECT *
FROM parks_and_recreation.employee_demographics AS adi
LEFT JOIN parks_and_recreation.employee_salary AS paw
  ON adi.employee_id=paw.employee_id;
  
SELECT *
FROM parks_and_recreation.employee_demographics AS adi
RIGHT JOIN parks_and_recreation.employee_salary AS paw
  ON adi.employee_id=paw.employee_id;