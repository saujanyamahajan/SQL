--write a query to pivot data – e.g., show sales per region per month as columns.

Select * from
(select month , region ,amount 
From sales)
 as sourcetable
pivot( sum(amount)
For month in ([jan],[feb],[march],[april],[may],[june],[july],[aug],[sept],[oct],[nov],[dec])
) as pivottable 
