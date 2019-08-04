CREATING TABLES FOR CSV IMPORTS

CREATE TABLE dept_emp (
	emp_no INT,
	dept_no CHAR(4),
	from_date VARCHAR(255),
	to_date VARCHAR(255));
	
SELECT *
FROM dept_emp

CREATE TABLE departments (
	dept_no CHAR(4) PRIMARY KEY,
	dept_name VARCHAR(255));

SELECT * 
FROM departments

CREATE TABLE department_manager (
	dept_no CHAR(4),
	emp_no INT,
	from_date VARCHAR(255),
	to_date VARCHAR(255));

SELECT * 
FROM department_manager

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	birth_date VARCHAR(255),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	gender CHAR(1),
	hire_date VARCHAR(255));

SELECT * 
FROM employees

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date VARCHAR(255),
	to_date VARCHAR(255));

SELECT *
FROM salaries

CREATE TABLE titles(
	emp_no INT,
	title VARCHAR(255),
	from_date VARCHAR(255),
	to_date VARCHAR(255));

SELECT * 
FROM titles


-- NOTES: Two tables (dept_emp and titles) have errors with the date formatting on 1/1/99. 
-- (changes it to 9999-01-01 instead of 1999-01-01)
















