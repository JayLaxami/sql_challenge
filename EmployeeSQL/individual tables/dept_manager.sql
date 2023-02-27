--dept_manager
DROP TABLE dept_manager CASCADE
CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL, 	
	emp_no SERIAL NOT NULL,
	PRIMARY KEY(dept_no,emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM dept_manager