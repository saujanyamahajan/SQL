SELECT *, COUNT(*) AS dup_count
FROM your_table
GROUP BY col1, col2, col3  -- replace with all columns
HAVING COUNT(*) > 1;
— —-- —--
CREATE TABLE #dup (
    id INT,
    col1 VARCHAR(100),
    col2 VARCHAR(100),
    col3 VARCHAR(100),
    rn INT
);
Insert into #dup
    SELECT  *, 
        ROW_NUMBER() OVER (PARTITION BY col1, col2, col3 ORDER BY id) AS rn
    FROM your_table


DELETE FROM your_table
WHERE id IN (
    SELECT id FROM #dup WHERE rn > 1
)
DROP TABLE #dup;





-- ROW_NUMBER() OVER (PARTITION BY col1, col2, col3 ORDER BY id) groups records by values of col1, col2, and col3. It assigns:
-- rn = 1 to the first row in each group


-- rn > 1 to duplicates
