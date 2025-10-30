select name, Count(*) 
from employee 
group by name 
having Count(*)>1


--'5. List all duplicate records in a table.'
--'aggregate (sum ,avg, count) doesnt work in where '
--'having is needed'


select id,name,department,Count(*) 
from employees
group by id,name,department
having Count(*) >1



--DUP IN TABLE 

SELECT ID,department,NAME,Count(*) 
FROM employee
group by ID,department,NAME
having Count(*)>1