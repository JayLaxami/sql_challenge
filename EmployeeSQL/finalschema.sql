DROP TABLE titles CASCADE
DROP TABLE employees CASCADE
DROP TABLE departments CASCADE
DROP TABLE dept_emp CASCADE
DROP TABLE dept_manager CASCADE
DROP TABLE salaries CASCADE


--titles

CREATE TABLE titles(
	title_id VARCHAR(30) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);
SELECT *
FROM titles

--employees

CREATE TABLE employees(
	emp_no SERIAL PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);
SELECT *
FROM employees

--departments 

CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY NOT NULL , 
    dept_name VARCHAR(30) NOT NULL
);
SELECT *
FROM departments

--dept_emp

CREATE TABLE dept_emp(
	emp_no SERIAL NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);
SELECT *
FROM dept_emp

--dept_manager

CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL, 	
	emp_no SERIAL NOT NULL,
	PRIMARY KEY(dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM dept_manager

--salaries

CREATE TABLE salaries(
	emp_no SERIAL PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM salaries


