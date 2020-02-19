--For each employee, list: employee number, last name, first name, gender, and salary.
SELECT ED.emp_no, ED.last_name, ED.first_name, ED.gender, S.salary
FROM EMPLOYEES_DATA AS ED
INNER JOIN SALARIES AS S ON
ED.emp_no=S.emp_no;

--List employees who were hired in 1986.
SELECT ED.emp_no, ED.last_name, ED.first_name, ED.hired_date
FROM EMPLOYEES_DATA AS ED
WHERE ED.hired_date < '31/12/1985'
AND ED.hired_date > '01/01/1987';

-- List the manager of each department: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT MA.dept_no, MA.emp_no, D.dep_name, ED.last_name, ED.first_name, EP.from_date, EP.to_date
FROM MANAGERS AS MA
	JOIN DEPARTMENTS AS D 
	ON (MA.dept_no = D.dept_no)
		JOIN EMPLOYEES_PERIOD AS EP
		ON (D.dept_no = EP.dept_no)
		JOIN EMPLOYEES_DATA AS ED
		ON (EP.emp_no = ED.emp_no);

--List the department of each employee: employee number, last name, first name, and department name.
SELECT ED.emp_no, ED.last_name, ED.first_name, D.dep_name
FROM EMPLOYEES_DATA AS ED
	JOIN EMPLOYEES_PERIOD AS EP 
	ON (ED.emp_no = EP.emp_no)
		JOIN DEPARTMENTS AS D
		ON (EP.dept_no = D.dept_no);

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT ED.emp_no, ED.last_name, ED.first_name
FROM EMPLOYEES_DATA AS ED
WHERE ED.first_name = 'Hercules'
AND ED.last_name  LIKE 'B%';

-- Employees in the Sales department: employee number, last name, first name, and department name.
SELECT ED.emp_no, ED.last_name, ED.first_name, D.dep_name
FROM EMPLOYEES_DATA AS ED
	JOIN EMPLOYEES_PERIOD AS EP 
	ON (ED.emp_no = EP.emp_no)
		JOIN DEPARTMENTS AS D
		ON (EP.dept_no = D.dept_no)
		WHERE D.dep_name = 'Sales';

-- Employees in the Sales and Development departments: employee number, last name, first name, and department name.
SELECT ED.emp_no, ED.last_name, ED.first_name, D.dep_name
FROM EMPLOYEES_DATA AS ED
	JOIN EMPLOYEES_PERIOD AS EP 
	ON (ED.emp_no = EP.emp_no)
		JOIN DEPARTMENTS AS D
		ON (EP.dept_no = D.dept_no)
		WHERE D.dep_name = 'Sales' OR D.dep_name ='Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, 
COUNT (last_name) AS last_name_count
FROM EMPLOYEES_DATA
GROUP BY last_name
ORDER BY last_name_count DESC;


