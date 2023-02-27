--dept_emp
DROP TABLE dept_emp CASCADE
CREATE TABLE dept_emp(
	emp_no SERIAL NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	PRIMARY KEY(emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no) 
);
SELECT *
FROM dept_emp