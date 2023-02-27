DROP TABLE salaries CASCADE

CREATE TABLE salaries(
	emp_no SERIAL PRIMARY KEY NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT *
FROM salaries

