-- Get the total salary expense per department.

select department,sum(salary) as totalSalary
from employee
group by department
