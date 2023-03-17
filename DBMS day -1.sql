/*
SQL IS CASE-INSENSITIVE
but we usually use UPPERCASE FOR KEYWORDS
and lowercase for table names, column names, etc.
*/ 
USE store;

SHOW tables;

SELECT *
FROM customers;

SELECT *
FROM customer
ORDER BY first_name;

SELECT *
FROM customer
ORDER BY first_name DESC;

-- How to comment a line? 
-- how to see the data in the table?
-- how to order the data in the table -deschow to run a single line 
-- how to run the entire script 
-- how to use SELECT query


SELECT 1,2;

SELECT 1+2;

SELECT 100-50 / 2 AS  value;

SELECT 100 - 50 / 2 AS 'answer value';

USE store;

select*
FROM customers;

SELECT first_name, last_name, points
FROM customers;

/*
syntax of SELECT STATEMENT:
SELECT <column_1>,<column_2>...<column_3>
FROM <table_ name>;

select * -- all columns of the table
FROM <TABLE_name>;
*/

SELECT first_name, last_name,points +10 
FROM customers;

SELECT 171*214+625;

USE exercise_hr;

SELECT first_name AS 'first Name', last_name AS 'last Name'
FROM employees;

SELECT first_name, last_name ,salary, salary* 15 / 100 AS 'PF'
FROM employees;

SELECT DISTINCT department_id 
FROM employees;


USE store;

SELECT  name,unit_price,(unit_price*1.1 )  AS new_price
FROM products;

select*
FROM customers
WHERE state = 'FL';

-- comparison operators;
-- >
-- >=
-- <
-- <=
-- =
-- != or <>

SELECT *
FROM customers
WHERE points > 3000;


SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

select*
FROM customers
WHERE state != 'FL';

SELECT *
FROM customers
WHERE points > 3000 AND birth_date > '1990-01-01';


SELECT *
FROM customers
WHERE points > 3000 OR birth_date > '1990-01-01';


-- born after 18 OR points > 1000 AND live in virginia (VA)


SELECT *
FROM customers
WHERE birth_date > '1889-01-01' OR points > '1000' AND state = 'VA';


-- order
-- 1. AND
-- 2. OR

SELECT *
FROM customers
WHERE (birth_date > '1989-01-01' AND points > '1000') OR state = 'VA';


SELECT *
FROM customers
WHERE NOT (state ='FL');

SELECT * FROM customers
WHERE state = 'FL'OR state ='VA' OR  state = 'GA';

SELECT * FROM customers
WHERE state IN ('FL', 'VA', 'GA');


-- Return products with
-- quantity in stock equal to 49, 38, 72
-- no product with quantity_in_stock = 72.
-- 2. Return customers born
-- between 1/1/1990 and 1/1/2000
-- 3. Get the customers whose
-- 1. addresses contain TRAIL or AVENUE
-- 2. phone numbers end with 9
-- 3. phone numbers do not end with 9
-- 4. Get the customers whose
-- 1. first names are ELKA or AMBUR
-- 2. last names end with EY or ON
-- 3. last names start with MY or contains SE
-- 4. last names contains B followed by R or U

USE store ;

SELECT * FROM products
WHERE quantity_in_stock IN ('49','38','72');

SELECT * FROM products
WHERE quantity_in_stock ='72';

USE exercise_hr;
SELECT first_name, last_name, salary
FROM employees
WHERE NOT (salary BETWEEN 10000 AND 15000);

USE store;
SELECT *
FROM customers 
WHERE points BETWEEN 3000 AND 10000;

USE store;
SELECT *
FROM customers 
WHERE birth_date BETWEEN '1990/01/01' AND '2000/01/01';

-- LAST NAME start WITH MAC 
SELECT *
FROM customers 
WHERE last_name LIKE '%Y';

-- first name contains ba 
SELECT *
FROM customers 
WHERE last_name LIKE 'MAC%';


-- BETWEEN THE SENTENCE 
SELECT *
FROM customers 
WHERE last_name LIKE '%MAC%';

-- serching of pattern into a column
-- regular expertion

SELECT first_name
FROM employees
WHERE first_name LIKE '%b%c%';


USE store;
SELECT *
FROM customers
WHERE last_name REGEXP 'ge|ie|me';

SELECT *
FROM customers
WHERE last_name REGEXP '[g|i|m]e';

SELECT *
FROM customers
WHERE last_name REGEXP '[gim]e';

-- 2. last names end with EY or ON
SELECT *
from customers
WHERE last_name REGEXP 'EY$|ON$';

-- 3. last names start with MY or contains SE
SELECT *
from customers
WHERE last_name REGEXP '^MY|SE';

-- 4. last names contains B followed by R or U
SELECT *
from customers
WHERE last_name REGEXP 'b[a-z]*[ru]';

SELECT *
from customers
WHERE last_name REGEXP 'br|bu';

-- last names contains br or bu
SELECT *
from customers
WHERE last_name REGEXP 'b[ru]';

-- null operater
SELECT *
from customers
WHERE phone  IS  NULL;


-- select customers where phone is null 
SELECT *
from customers
WHERE phone  IS NOT NULL;

-- get top three
USE store ;
SELECT *
FROM customers
LIMIT 3 ;	

SELECT *
FROM customers
ORDER BY  points DESC
limit 3;

-- the limit clause should be always come at the end 
-- the order of the clase matter .select => from => optionally where => optionally order by => limit 
 --  Not following the order gives error . 
 
 USE exercise_hr;
 SELECT *
 FROM employees;
 
  EXPLAIN SELECT *
 FROM employees;
 
SELECT *
 FROM employees
 WHERE first_name = "Lex";
 
EXPLAIN SELECT *
 FROM employees
 WHERE first_name = "Lex";
 
 
 -- If the argument is greater than the number of customers, then we get all the customers.
-- Pagination
-- page 1: 1-3
-- page 2: 4-6
-- page 3: 7-9
-- Get customers on Page 3





-- Write a query to get the total salaries payable to employees.;

USE exercise_hr;
 SELECT *
 FROM employees INNER JOIN departments 
 ON employees.department_id = departments.department_id;  
 
  -- find the emplyees working in the 'IT' department
 SELECT employee_id,first_name,last_name,e.department_id,department_name
 FROM employees AS e INNER JOIN departments AS d 
 ON e.department_id = d.department_id
 where department_name = 'IT';
  

  


 