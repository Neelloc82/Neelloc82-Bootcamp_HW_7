-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM "Salaries" as s
INNER JOIN "Employees" as e on
e.emp_no = s.emp_no;

-- 2. List employees who were hired in 1986.
SELECT * FROM "Employees"
WHERE hire_date LIKE '1986%';

-- 3. List the manager of each department with the following information: department number, department name, 
--    manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM "Department" AS d
INNER JOIN "Dept_manager" AS m ON
m.dept_no = d.dept_no
JOIN "Employees" AS e ON
e.emp_no = m.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_emp" AS d ON
e.emp_no = d.emp_no
INNER JOIN "Department" AS dp ON
dp.dept_no = d.dept_no;

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM "Employees"
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_emp" AS d ON
e.emp_no = d.emp_no
INNER JOIN "Department" AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_emp" AS d ON
e.emp_no = d.emp_no
INNER JOIN "Department" AS dp ON
dp.dept_no = d.dept_no
WHERE dp.dept_name LIKE 'Development'
OR dp.dept_name LIKE 'Sales';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;
