


-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'  899 rows.
-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT concat (first_name, ' ', last_name) as full_name
FROM employees
WHERE last_name like 'E%'
  and last_name like '%E'
ORDER BY first_name;

-- Find all employees born on Christmas — 842 rows.
select concat (first_name, ' ', last_name) as Born_Christmas_Day
from employees
where month(birth_date) = 12
and day(birth_date) = 25
order by last_name;
-- Find all employees hired in the 90s and born on Christmas — 362 rows.
select first_name, last_name, birth_date, hire_date
from employees
where month(birth_date) = 12
and day(birth_date) = 25
and year(hire_date) between 1990 and 1999;

-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
select concat(first_name, ' ', last_name, ' ', birth_date, ' ', hire_date) as old_dog_new_tricks
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999
-- isolate the oldest new hire
order by birth_date, hire_date desc
limit 1;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).
select first_name, last_name, birth_date, hire_date,
-- (a, b) = (a-b), or datediff(expression1, expression2)
    datediff(curdate(), hire_date) as days_since_hired
from employees
where month(birth_date) = 12
  and day(birth_date) = 25
  and year(hire_date) between 1990 and 1999;