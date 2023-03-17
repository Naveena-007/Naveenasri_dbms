USE exercise_hr;

-- Write a query to get the total salaries payable to employees.
SELECT SUM(salary) AS "Total Salary"
FROM employees;


-- Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary) AS "Maximum Salary",MIN(salary) AS "Minimum Salary"
FROM employees;


-- Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) AS "Average Salary",COUNT(salary) AS "Number of employees"
FROM employees;


-- Write a query to get the number of employees working with the company.
SELECT COUNT(*) AS "Number of employees"
FROM employees;


-- Write a query to get the number of distinct jobs available in the employees table.
SELECT COUNT(DISTINCT job_id) 
FROM employees;


-- Write a query get all first name from employees table in upper case.
SELECT UCASE(first_name) AS "First Name"
FROM employees;


-- Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTR(first_name, 1,3) AS "First 3 Characters of First Name"
FROM employees;


-- Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.
SELECT CONCAT(first_name, ' ',last_name) AS "Full Name"
FROM employees;


-- Write a query to get the length of the employee names ('<first name> <last name>') from employees table.
 SELECT LENGTH(CONCAT(first_name, ' ',last_name)) AS "Length of Full Name"
FROM employees;


-- Write a query to get monthly salary (round 2 decimal places) of each and every employee
SELECT ROUND(salary, 2) AS "Monthly Salary"
FROM employees;



-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT employees.first_name, employees.last_name, employees.department_id, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id; 


-- Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
SELECT employees.first_name, employees.last_name, employees.job_title, employees.department_id, departments.department_name
FROM employees INNER JOIN departments ON employees.department_id = departments.department_id
WHERE departments.location = 'London';

-- Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
SELECT e.employee_id, e.last_name AS employee_last_name, e.manager_id, m.last_name AS manager_last_name
FROM employees e INNER JOIN employees m ON e.manager_id = m.employee_id;



