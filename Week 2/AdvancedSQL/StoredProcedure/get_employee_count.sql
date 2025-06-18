-- Step 1: Create Stored Procedure to Return Total Employees by Department
CREATE PROCEDURE sp_GetEmployeeCountByDepartment
    @DepartmentID INT
AS
BEGIN
    SELECT COUNT(*) AS TotalEmployees
    FROM Employees
    WHERE DepartmentID = @DepartmentID;
END;
GO

-- Step 2: Execute the Stored Procedure
-- Example: Count employees in Department ID 1 (HR)
EXEC sp_GetEmployeeCountByDepartment @DepartmentID = 1;
