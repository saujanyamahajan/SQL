Select * 
from employee
Where salary = (    SELECT MAX(salary)
    FROM employee
    WHERE department = e.department)
