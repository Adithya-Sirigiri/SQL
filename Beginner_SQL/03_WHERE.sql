#where extracts the data from the rows
#where is independent of select it intially searches the columns and keep it side
#when we select what we wnated then it will display the rows selected beforehand 

SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age >40;

#when dealing with tables we have to use the name of column for one atleast for comaprison

SELECT first_name
FROM parks_and_recreation.employee_demographics
WHERE age >40;

SELECT first_name,gender,birth_date
FROM parks_and_recreation.employee_demographics
WHERE age >40;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name='Donna';

SELECT last_name
FROM parks_and_recreation.employee_demographics
WHERE first_name='Donna';

#order of execution follows:
#from,where,select as of now

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != "Female";

SELECT last_name
FROM parks_and_recreation.employee_demographics
WHERE gender = "Female";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date>1985-01-01;

# 1985-01-01 it is being teated as a math expression s use double/single quotes

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01";

#we can also use logical operator in this where
#where is more verstile

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date > "1985-01-01" AND gender="Female";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (birth_date > "1985-01-01" OR gender="Female") AND age>40;

#Like statement -->if you dont know what it will be you can use like statement
#like has two components one is for % -->it can be anything and the other is _ it is used for a particular one

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "T%";

SELECT last_name
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "T%";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE "_o_";#exact number should be given to it

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1985-%";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1985-__-__";

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE "1985-__-%";