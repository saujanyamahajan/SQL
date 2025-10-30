'Count the number of employees in each department.'


select department,count(employeeId)
from employees
group by department