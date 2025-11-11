--Get all employee detail from EmployeeDetail table whose "FirstName" start with
--any single character between 'a-p'


SELECT * FROM EmployeeDetail WHERE FirstName like '[a-p]%'


-- Get all employee detail from EmployeeDetail table whose "FirstName" not start
-- with any single character between 'a-p'

SELECT * FROM [EmployeeDetail] WHERE FirstName like '[^a-p]%'