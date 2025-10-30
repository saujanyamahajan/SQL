-- Get the total salary expense per department.

select department,sum(salary) as totalSalary
from employee
group by department



--List departments having more than 5 employees.

select department,count(employeeid) as totalEmployees
from employees
group by department