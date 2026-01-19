SELECT birth_date
FROM parks_and_recreation.employee_demographics
ORDER BY birth_date DESC
LIMIT 3;

SELECT gender,AVG(age) AS adi
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING adi >30;

