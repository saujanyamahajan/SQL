drop table if exists  student_tests;
create table student_tests
(
	test_id		int,
	marks		int
);
insert into student_tests values(100, 55);
insert into student_tests values(101, 55);
insert into student_tests values(102, 60);
insert into student_tests values(103, 58);
insert into student_tests values(104, 40);
insert into student_tests values(105, 50);

select * from student_tests;


-- single products
SELECT dates,
       CAST(product_id AS VARCHAR) AS products
FROM orders

UNION

-- product combinations
SELECT a.dates,
       CONCAT(a.product_id, ',', b.product_id) AS products
FROM orders a
JOIN orders b
ON a.customer_id = b.customer_id
AND a.dates = b.dates
AND a.product_id < b.product_id

ORDER BY dates, products;