-- Replace N with the rank you want (e.g., 3 for third highest)

 Create table #SalaryRanks(    
EmployeeID INT,
Name varchar (100)
Salary int
    RANK INT)
Insert into #SalaryRanks (EmployeeID,  Name, Salary,RANK)
( SELECT 
        EmployeeID,
        Name,
        Salary,
        DENSE_RANK() OVER (ORDER BY Salary DESC) AS Rank
    FROM Employee
)
SELECT * 
FROM SalaryRanks
WHERE Rank = 3;  -- <-- Nth highest

