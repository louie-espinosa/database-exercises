-- describe employees;
-- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
-- order by first_name, last_name. Finally, refactor to order by LN, then FN
SELECT *
FROM employees
WHERE first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;
-- Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name like 'E%'
order by emp_no desc;

-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name like 'E%'
   or last_name like '%E'
order by emp_no desc;
-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name like 'E%'
  and last_name like '%E'
order by emp_no desc;

