-- Get consecutive attendance streaks for employees (advanced date problem).
 Create table #AttendanceWithRow(    
EmployeeID INT,
    AttendanceDate date,
rn INT )
Insert into #AttendanceWithRow (EmployeeID,  AttendanceDate,rn)
(
SELECT 
        EmployeeID,
        AttendanceDate,
        ROW_NUMBER() OVER (PARTITION BY EmployeeID ORDER BY AttendanceDate) AS rn
    FROM EmployeeAttendance
)
Create table #StreakGroups(    
EmployeeID INT,
    AttendanceDate date,
rn INT )
Insert into #StreakGroups (EmployeeID,  AttendanceDate,rn)
(
    SELECT 
        EmployeeID,
        AttendanceDate,
        DATEADD(DAY, -rn, AttendanceDate) AS StreakGroup
    FROM #AttendanceWithRow
)
SELECT 
    EmployeeID,
    MIN(AttendanceDate) AS StreakStart,
    MAX(AttendanceDate) AS StreakEnd,
    COUNT(*) AS DaysInStreak
FROM #StreakGroups
GROUP BY EmployeeID, StreakGroup
ORDER BY EmployeeID, StreakStart;

