Create table #OrderedIDs(    
ID INT,
    PrevID INT)
Insert into #OrderedIDs (ID,  PrevID)
(
    SELECT 
        ID,
        LAG(ID) OVER (ORDER BY ID) AS PrevID
    FROM Employee
)
SELECT 
    PrevID + 1 AS GapStart,
    ID - 1 AS GapEnd
FROM OrderedIDs
WHERE ID - PrevID > 1
