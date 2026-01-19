SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT first_name,last_name
FROM parks_and_recreation.employee_demographics
UNION
SELECT first_name,last_name
FROM parks_and_recreation.employee_salary;

SELECT first_name,last_name,"OLD MAN" AS Label
FROM parks_and_recreation.employee_demographics
WHERE age>50 AND gender="Male"
UNION
SELECT first_name,last_name,"OLD WOMAN" AS Label
FROM parks_and_recreation.employee_demographics
WHERE age>50 AND gender="Female"
UNION
SELECT first_name,last_name,"High Paid" AS Label
FROM parks_and_recreation.employee_salary
WHERE salary>70000;