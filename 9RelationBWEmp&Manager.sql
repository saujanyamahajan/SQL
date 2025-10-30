
--Write a query to show manager → employee relationship.
select * from employee e
inner join manager m
on e.id=m.id



--Find common employees in two tables Employee_A and Employee_B.
select * from Employee_A a
inner join Employee_B b
on a.id=b.id