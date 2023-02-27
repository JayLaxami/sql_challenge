DROP TABLE employees CASCADE
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