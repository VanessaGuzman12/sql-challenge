--List the following details of each employee: 
--			employee number, last name, first name, sex, and salary.

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
left join salaries s 
on e.emp_no=s.emp_no;



--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date 
from employees
where substring(hire_date, length(hire_date)-3,4) = '1986';



--List the manager of each department with the following information: 
--	department number, department name, the manager's employee number,
--	last name, first name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_emp dn
on e.emp_no=dn.emp_no
left join departments d
on dn.dept_no=d.dept_no;



--List first name, last name, and sex for employees whose first name is "Hercules" 
-- 	and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';



--List all employees in the Sales department, including their employee number,
--	last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_emp dn
on e.emp_no=dn.emp_no
left join departments d
on dn.dept_no=d.dept_no
where dept_name= 'Sales';



--List all employees in the Sales and Development departments, 
--	including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
left join dept_emp dn
on e.emp_no=dn.emp_no
left join departments d
on dn.dept_no=d.dept_no
where dept_name= 'Sales' or dept_name='Development';



--In descending order, list the frequency count of employee last names, 
--	i.e., how many employees share each last name.

select last_name, count (*) as Employees_count
from employees
group by last_name
order by Employees_count DESC;


