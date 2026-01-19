#GROUP BY
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT gender,SUM(age),SUM(employee_id)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

SELECT first_name
FROM parks_and_recreation.employee_demographics
GROUP BY first_name;

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT occupation,SUM(salary),AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation;

SELECT occupation,SUM(salary),AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE AVG(salary)>50000
GROUP BY occupation
;