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


--remove dup from a table

create table #temp
(
    empid int,
    name varchar(100),
    department varchar(100),
    salary int,
    rank int
)

insert into #temp (id,name,department,salary,rank)
(select id,name, department,salary
,Row_Number() over (partition by name,id,salary,department order by id desc)
from employee)

delete from employee where id in (select id from #temp where rank>1)

drop table #temp