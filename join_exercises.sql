-- EMPLOYEE DATABASE
use employees;
-- 2. Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
-- First I select the dept name from departments
SELECT departments.dept_name, CONCAT(first_name, ' ', last_name) AS Department_Manager
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE to_date = '9999-01-01';

-- 3. now isolate the females
SELECT departments.dept_name, CONCAT(first_name, ' ', last_name) AS Department_Manager
FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE to_date = '9999-01-01' and gender = 'f';
-- 4. find the curret titles currenlty working
select t.title, count(*) as Total
from employee e
join dept_emp as de on e.emp_no = de.emp_no
join departments as d on de.dept_name = d.dept_no
join
where d.dept_name = 'Customer Service'
and t.to_date = '9999-01-01'
and de.to_date = '9999-01-01'
order by title;


-- 5. Find all the salaries of the current managers
SELECT departments.dept_name, CONCAT(first_name, ' ', last_name) AS Department_Manager
       FROM employees
         JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
         JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE to_date = '9999-01-01';