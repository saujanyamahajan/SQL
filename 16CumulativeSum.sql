SELECT 
    id,
    name,
    salary,
    SUM(salary) OVER (ORDER BY id) AS running_total
FROM employee;

SELECT 
    id,
    name,
    department,
    salary,
    SUM(salary) OVER (PARTITION BY department ORDER BY id) AS dept_running_total
FROM employee;
