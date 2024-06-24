-------1--------
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee as e
	join salaries as s
	ON (e.emp_no = s.emp_no)


-------2--------
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';


-------3--------
SELECT d.dept_name, dm.dept_no, dm.emp_no, e.last_name, e.first_name
FROM departments as d
	join dept_manager as dm
	on (d.dept_no = dm.dept_no)
		join employee as e
		on (dm.emp_no = e.emp_no);


-------4--------
SELECT e.last_name, e.first_name, e.emp_no, dm.dept_no, d.dept_name
FROM employee as e
	left join dept_manager as dm
	on (e.emp_no = dm.emp_no)
	left join departments as d
	on (dm.dept_no = d.dept_no);


-------5--------
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-------6--------
SELECT e.emp_no, e.last_name, e.first_name
FROM employee e
	JOIN dept_emp de
	ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-------7--------
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employee as e
join dept_emp as dm on (e.emp_no = dm.emp_no)
join departments as d on (dm.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';


-------8--------
SELECT DISTINCT(last_name)
FROM employee;

SELECT last_name, COUNT(*) AS name_count
FROM employee
GROUP BY last_name
ORDER BY name_count DESC;

