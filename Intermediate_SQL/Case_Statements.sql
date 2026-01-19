-- Case Statements--

SELECT first_name,last_name,age,
CASE
    WHEN age>=50 THEN "You are dead"
    WHEN age<30 THEN "Live a Happy life"
    WHEN age BETWEEN 31 AND 49 THEN "Okay"
END AS age_bracket
FROM parks_and_recreation.employee_demographics;

-- Example--
SELECT *
FROM parks_and_recreation.employee_salary;

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.parks_departments;

-- IMPORTANT HERE--

SELECT first_name,last_name,salary,
CASE
    WHEN salary<=50000 THEN salary+(salary * 0.05)
	WHEN salary>50000 THEN salary+(salary * 0.07)
    # WHEN salary<50000 THEN salary+(salary * 0.1)
END AS New_salary,
CASE
    WHEN parks_departments.department_id=6 THEN salary * .01
END AS Bonus
FROM parks_and_recreation.employee_salary;
SELECT *
FROM parks_and_recreation.parks_departments;
    