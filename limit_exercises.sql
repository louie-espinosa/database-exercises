
-- 2.
select distinct last_name
from employees
where last_name like 'z%'
order by last_name desc
limit 10;

-- 3. Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be: 43624 43624 254466 47978 253939.

