select max(Salary) from employee
where Salary<(select max(salary)from employee)


---third highest salary

select max(Salary) from employee
where Salary<(select max(salary)from employee where salary<select * from employee)