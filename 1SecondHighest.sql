select max(Salary) from employee
where Salary<(select max(salary)from employee)


---third highest salary

select max(Salary) from employee
where Salary<(select max(salary)from employee where salary<select * from employee)



---Find employees with salaries greater than the average salary.

select * from employees where salary > (select avg(salary) from employees)




---3rd highest salary using DENSE_RANK() or ROW_NUMBER()
create table #DENSE_RANK
{
empId int;
name varchar(50);
department varchar(50)
salary int;
}

insert into #rank(empId,name,department,salary)
(select employeeid,name,department,salary 
DENSE_RANK() over (order by salary desc)
from employee  )