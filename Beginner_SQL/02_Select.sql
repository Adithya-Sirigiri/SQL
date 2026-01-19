SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name
FROM parks_and_recreation.employee_demographics;

SELECT first_name,age,gender
FROM parks_and_recreation.employee_demographics;

#can also be written as
SELECT first_name,
age,
gender,
age+10
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

#This is known as a comment and it is similar to python 
#This extract the data from the entire data and colums only if selected 