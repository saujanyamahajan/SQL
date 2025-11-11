--Get all employee detail from EmployeeDetail table whose "FirstName" start with
--any single character between 'a-p'


SELECT * FROM EmployeeDetail WHERE FirstName like '[a-p]%'


-- Get all employee detail from EmployeeDetail table whose "FirstName" not start
-- with any single character between 'a-p'

SELECT * FROM [EmployeeDetail] WHERE FirstName like '[^a-p]%'

-- Get all employee detail from EmployeeDetail table whose "Gender" end with 'le'
-- and contain 4 letters. The Underscore(_) Wildcard Character represents any single
-- character.

SELECT * FROM [EmployeeDetail] WHERE Gender like '__le' --there are two "_"

-- Get all employee detail from EmployeeDetail table whose "FirstName" start with
-- 'A' and contain 5 letters.
SELECT * FROM [EmployeeDetail] WHERE FirstName like 'A '
--there are four "_"

-- Get all employee detail from EmployeeDetail table whose "FirstName"
-- containing '%'. ex:-"Vik%as".
SELECT * FROM [EmployeeDetail] WHERE FirstName like '%[%]%'