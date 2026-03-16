drop table if exists mountain_huts;
create table mountain_huts 
(
	id 			integer not null unique,
	name 		varchar(40) not null unique,
	altitude 	integer not null
);
insert into mountain_huts values (1, 'Dakonat', 1900);
insert into mountain_huts values (2, 'Natisa', 2100);
insert into mountain_huts values (3, 'Gajantut', 1600);
insert into mountain_huts values (4, 'Rifat', 782);
insert into mountain_huts values (5, 'Tupujjr', 1370);

drop table if exists trails;
create table trails 
(
	hut1 		integer not null,
	hut2 		integer not null
);
insert into trails values (1, 3);
insert into trails values (3, 2);
insert into trails values (3, 5);
insert into trails values (4, 5);
insert into trails values (1, 5);

select * from mountain_huts;
select * from trails;




WITH cte_hut1 AS (
    SELECT 
        b.hut1 AS start_pt,
        a.name AS start_pt_name,
        a.altitude AS start_pt_altitude,
        b.hut2 AS end_pt
    FROM mountain_huts a
    JOIN trails b
        ON a.id = b.hut1
),

cte_trails2 AS (
    SELECT 
        a.*,
        b.name AS end_pt_name,
        b.altitude AS end_pt_altitude,
        CASE 
            WHEN start_pt_altitude > b.altitude THEN 1 
            ELSE 0 
        END AS altitude_flag
    FROM cte_hut1 a
    JOIN mountain_huts b
        ON a.end_pt = b.id
),

cte_final As(
SELECT 
    CASE 
        WHEN altitude_flag = 1 THEN start_pt  
        ELSE end_pt 
    END AS start_pt,

    CASE 
        WHEN altitude_flag = 1 THEN start_pt_name 
        ELSE end_pt_name 
    END AS start_pt_name,

    CASE 
        WHEN altitude_flag = 1 THEN end_pt 
        ELSE start_pt 
    END AS end_pt,

    CASE 
        WHEN altitude_flag = 1 THEN end_pt_name 
        ELSE start_pt_name 
    END AS end_pt_name

FROM cte_trails2
)

SELECT c1.start_pt_name as start_pt,
c1.end_pt_name as middle_pt,
c2.end_pt_name as end_pt
 FROM
cte_final c1
join cte_final c2
on c1.end_pt=c2.start_pt


-- 1 3 5
-- 2 3 5
--3 5 4
-- 1 5 4