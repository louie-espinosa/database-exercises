-- 2. use the employees database.
use employees;

-- 3. Return 10 employees in a result set named 'full_name' in the format of 'last name, first name' for each employee.
select concat(last_name, ' ',  first_name) as full_name
from employees as full_name
limit 10 offset 50;

-- 4. Add the date of birth for each employee as 'DOB' to the query.

select concat(last_name, ' ',  first_name) as full_name,
birth_date as DOB
from employees
limit 10 offset 50;


-- 5. Update the query to format full name to include the employee number so it is formatted as 'employee number - last name, first name'.
select concat(emp_no, ' - ', last_name, ' ',  first_name)as full_name,  birth_date as DOB
from employees
limit 10;