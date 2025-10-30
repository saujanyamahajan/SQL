--Find the maximum salary in each department along with the employee name.





select max(a.salary),a.department,a.name
from employee  a
join
(select max(salary) as maxSalary,department
from employee
group by department)b
on a.department=b.department and a.salary=b.maxSalary

