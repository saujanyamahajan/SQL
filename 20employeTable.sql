INSERT INTO Employees
(
    FirstName,
    LastName,
    Email,
    Phone,
    Department,
    Designation,
    DateOfJoining,
    IsActive
)
VALUES
(
    'Saujanya',
    'Mahajan',
    'saujanya.mahajan@email.com',
    '9876543210',
    'IT',
    'Senior Software Developer',
    '2024-11-01',
    1
);





CREATE TABLE Employees (
    EmployeeId INT IDENTITY PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    Department NVARCHAR(50),
    Designation NVARCHAR(50),
    DateOfJoining DATE,
    IsActive BIT
)


