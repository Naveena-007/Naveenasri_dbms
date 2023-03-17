
USE exercise_hr;

-- Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT first_name,last_name,e.department_id,department_name
FROM employees AS e INNER JOIN departments AS d
 ON e.department_id = d.department_id;


-- Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
SELECT  first_name,last_name,salary,min_salary,j.job_id,job_title
FROM employees AS e INNER JOIN jobs AS j
ON e.job_id = j.job_id;

-- Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90;
SELECT employee_id,job_title,job_history
FROM job_history AS j INNER JOIN emplyees AS e
ON e.employee_id = j.job_id;
WHERE employees.department_id = 90;

