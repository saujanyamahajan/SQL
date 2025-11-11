--Get all employee detail from EmployeeDetail table whose "FirstName" start with
--any single character between 'a-p'


SELECT * FROM EmployeeDetail WHERE FirstName like '[a-p]%'


-- Get all employee detail from EmployeeDetail table whose "FirstName" not start
-- with any single character between 'a-p'

SELECT * FROM [EmployeeDetail] WHERE FirstName like '[^a-p]%'

-- Get all employee detail from EmployeeDetail table whose "Gender" end with 'le'
-- and contain 4 letters. The Underscore(_) Wildcard Character represents any single
-- character.

SELECT * FROM [EmployeeDetail] WHERE Gender like ' le' --there are two "_"