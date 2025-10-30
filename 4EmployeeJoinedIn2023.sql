select * from employee
where year(joiningDate)=2025



--Get employees who joined in the last 90 days.

select * from employee
where cast(joiningDate as date)>= cast( dateadd(date,-90,getDate()) as date )


DATEADD(datepart, number, date)