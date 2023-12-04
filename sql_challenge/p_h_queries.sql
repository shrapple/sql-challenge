SELECT e.emp_no,e.first_name, 
e.last_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s 
ON s.emp_no = e.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT e.first_name, e.last_name, e.emp_no, 
cdm.dept_name, cdm.dept_no
FROM cdm
INNER JOIN employees e
ON e.emp_no = cdm.emp_no
ORDER BY "dept_name", "last_name";

SELECT e.first_name, e.last_name, e.emp_no, 
cde.dept_name, cde.dept_no
FROM cde
INNER JOIN employees e
ON e.emp_no = cde.emp_no
ORDER BY "dept_name", "last_name";

SELECT first_name, last_name, sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

SELECT * 
FROM complete_directory
WHERE "dept_name" = 'Sales'
ORDER BY "last_name";

SELECT *
FROM complete_directory
WHERE "dept_name" = 'Sales' OR 
	  "dept_name" = 'Development'
ORDER BY "dept_name" DESC, "last_name";

SELECT e.last_name, COUNT(*) AS occurances
FROM employees e
GROUP BY e.last_name
ORDER BY "occurances" DESC, "last_name";
