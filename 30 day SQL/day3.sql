select * from 
(select car from footer where car is not null order by 1 desc limit 1) as car
cross join
(select length from footer where length is not null order by 1 desc limit 1) as length
cross join
(select width from footer where width is not null order by 1 desc limit 1) as width
cross join
(select height from footer where height is not null order by 1 desc limit 1) as height
