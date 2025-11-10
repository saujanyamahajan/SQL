--Find the maximum salary in each department along with the employee name.





select max(a.salary),a.department,a.name
from employee  a
join
(select max(salary) as maxSalary,department
from employee
group by department)b
on a.department=b.department and a.salary=b.maxSalary



-- Overall Running Total
SELECT 
    id,
    name,
    salary,
    SUM(salary) OVER (ORDER BY id) AS running_total
FROM employee;

--Department-wise Running Total
SELECT 
    id,
    name,
    department,
    salary,
    SUM(salary) OVER (PARTITION BY department ORDER BY id) AS dept_running_total
FROM employee;

