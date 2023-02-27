--departments 
DROP TABLE departments CASCADE

CREATE TABLE departments(
	dept_no VARCHAR(30) PRIMARY KEY NOT NULL , 
    dept_name VARCHAR(30) NOT NULL
);
SELECT *
FROM departments