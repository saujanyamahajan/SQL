select max(Salary) from employee
where Salary<(select max(salary)from employee)


---third highest salary

select max(Salary) from employee
where Salary<(select max(salary)from employee where salary<select * from employee)



---Find employees with salaries greater than the average salary.

select * from employees where salary > (select avg(salary) from employees)
