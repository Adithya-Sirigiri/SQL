#Having is only used in the cases of involvement of aggregrated functions and it does not work in the case of normally
#We cannot use WHERE in the case of aggregrated functons as these aer calculated after GROUP BY which is done fter WHERE
#The orde of flow is WHERE -- GROUP BY -- AGG FUNCTIONS --HAVING

SELECT *
FROM parks_and_recreation.employee_salary;

SELECT occupation,AVG(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation
HAVING AVG(salary)>60000;

#This is how we use the concept of HAVING