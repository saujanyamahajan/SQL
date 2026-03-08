with CTE as (
select *,
case when brand1 < brand2 then concat(brand1,brand2,year)
 else concat(brand2,brand1,year) end as pair_id
from brands;)

with CTE2 as (
    select *,row_number() over (partition by pair_id order by pair_id) as rn
     from CTE)


select brand1,brand2,year,custom1,custom2,custom3,custom4
from CTE2
where rn = 1
or (custom1<>custom3 and custom2<>custom4 )