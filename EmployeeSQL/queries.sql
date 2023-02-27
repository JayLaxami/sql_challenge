SELECT e.emp_no, e.last_name,e.first_name,e.sex,s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

SELECT first_name,last_name ,hire_date
FROM employees where (hire_date BETWEEN '1986-01-01' AND '1986-12-31');

SELECT d.dept_no, d.dept_name,ma.emp_no, e.last_name,e.first_name
FROM departments d
JOIN dept_manager ma
ON (d.dept_no = ma.dept_no)
JOIN employees e
ON (ma.emp_no = e.emp_no);
		
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name,d.dept_no
FROM employees e
JOIN dept_emp dem
ON (e.emp_no=dem.emp_no)
JOIN departments d
ON (dem.dept_no=d.dept_no);

SELECT first_name,last_name,sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name like 'B%';

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e
JOIN dept_emp dem
ON (e.emp_no= dem.emp_no) 
JOIN departments d
ON (dem.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees e
JOIN dept_emp dem
ON (e.emp_no= dem.emp_no) 
JOIN departments d
ON (dem.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

SELECT last_name, COUNT(last_name)AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;

