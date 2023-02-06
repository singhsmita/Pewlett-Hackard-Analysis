select * from departments;

select * from dept_emp;

select * from employees;

select * from dept_manager;

select * from salaries;

select * from titles;

select first_name , last_name
from employees
where birth_date between '1952-01-01' AND '1955-12-31';
--- 90398

select first_name , last_name 
from employees
where birth_date between '1952-01-01' AND '1952-12-31';
--21209


select first_name , last_name 
from employees
where birth_date between '1953-01-01' AND '1953-12-31';
--22857

select first_name , last_name 
from employees
where birth_date between '1954-01-01' AND '1954-12-31';
--23228


select first_name , last_name 
from employees
where birth_date between '1955-01-01' AND '1955-12-31';
--23104

1985 and 1988

select first_name , last_name
from employees
where (birth_date between '1952-01-01' AND '1955-12-31' )
and (hire_date between '1985-01-01' and '1988-12-31');
--41380


select count(first_name)
from employees
where (birth_date between '1952-01-01' AND '1955-12-31' )
and (hire_date between '1985-01-01' and '1988-12-31');
--41380

SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


select * from retirement_info;

DROP TABLE retirement_info;

SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

select * from retirement_info;

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;


-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
	FROM retirement_info
	LEFT JOIN dept_emp
	ON retirement_info.emp_no = dept_emp.emp_no;
	
	-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;


SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
de.to_date
FROM retirement_info as ri
	LEFT JOIN dept_emp as de
	ON ri.emp_no = de.emp_no;

-- Joining departments and dept_manager tables
SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;


SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
	 FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;


select count(ce.emp_no) , de.dept_no
from current_emp ce
left join dept_emp de 
on ce.emp_no = de.emp_no
group by de.dept_no
order by count(ce.emp_no);



SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

select count(ce.emp_no) , de.dept_no
into emp_retire_dept
from current_emp ce
left join dept_emp de 
on ce.emp_no = de.emp_no
group by de.dept_no
order by count(ce.emp_no);

----employee_info
SELECT emp_no,
    first_name,
last_name,
    gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


drop table emp_info;


select e.emp_no ,
e.first_name,
e.last_name,
e.gender,
s.salary,
de.to_date
into emp_info
from employees e
inner join salaries s
on (e.emp_no = s.emp_no)
inner join dept_emp de
on (e.emp_no = de.emp_no)
where (e.birth_date between '1952-01-01' and '1955-12-31')
	   and (e.hire_date between '1985-01-01' and '1988-12-31')
	   and (de.to_date = '9999-01-01');
	   
---list of managers per department

select dm.dept_no,
	d.dept_name,
	dm.emp_no,
	ce.last_name,
	ce.first_name,
	dm.from_date,
	dm.to_date
into manager_info
from dept_manager as dm
inner join departments as d
on (dm.dept_no = d.dept_no)
inner join current_emp as ce
on (dm.emp_no = ce.emp_no);


----dept

SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
into dept_info
from current_emp as ce
inner join dept_emp as de
on (ce.emp_no = de.emp_no)
inner join departments as d
on (de.dept_no = d.dept_no);


select * from retirement_info;
select * from emp_info;


select ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
from retirement_info ri
inner join dept_emp de
on (ri.emp_no = de.emp_no)
inner join departments d
on (de.dept_no = d.dept_no)
where (d.dept_name in ('Sales' ,'Development'));
	


