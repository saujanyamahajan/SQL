select name, Count(*) 
from employee 
group by name 
having Count(*)>1
