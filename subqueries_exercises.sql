use employees;

-- 1. Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows
SELECT first_name, last_name, hire_date, emp_no
FROM employees
WHERE hire_date = ( -- where hire date is like emp 101010
    SELECT hire_date
    from employees
    where emp_no like '%101010%'
);

-- 2. Find all the titles held by all employees with the first name Aamod.
select title from titles
where emp_no in (
    select emp_no
    from employees
    where first_name like '%Aamod%'
)
group by title;


-- 3.  Find all the current department managers that are female.
SELECT CONCAT(first_name, ' ', last_name) AS Department_Manager_female
FROM employees
    where emp_no in (
         select emp_no
             from dept_manager
                 where
          to_date = '9999-01-01' and gender = 'f'
        );