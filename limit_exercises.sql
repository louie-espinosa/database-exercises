
-- 2. List the first 10 distinct last name sorted in descending order.
select distinct last_name
from employees
-- where last_name like 'z%' this is redundant
order by last_name desc
limit 10;

-- 3. Create a query to get the top 5 salaries and display just the employees number from the salaries table. The employee number results should be: 43624 43624 254466 47978 253939.

select emp_no
from salaries
order by salary desc
limit 5;
-- offset is determined by mathing: (a*b-b), or desired page_number * limit number - limit number
-- Try to think of your results as batches, sets, or pages. The first five results are your first page. The five after that would be your second page, etc. Update the previous query to find the tenth page of results. The employee number results should be:
select emp_no
from salaries
order by salary desc
limit 5 offset 45;






