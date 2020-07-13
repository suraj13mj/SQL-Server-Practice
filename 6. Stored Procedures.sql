-- Stored Procedures are like functions in SQL
-- Creating a Stored Procedure

CREATE PROCEDURE usp_GetEmployeeDetails
AS
BEGIN
	SELECT * FROM Employee
END

--CREATE PROC usp_GetEmployeeDetails1
--AS
--BEGIN
--	SELECT * FROM Employee
--END


-- Executing Stored Procedures
usp_GetEmployeeDetails
EXEC usp_GetEmployeeDetails
EXECUTE usp_GetEmployeeDetails


--Parameterised Stored Procedures

ALTER PROC usp_GetEmpNameDept
@Name nvarchar(30),
@Dept int
AS
BEGIN
	SELECT * FROM Employee WHERE EmpName = @Name and EmpDept = @Dept
END


-- Executing Parameterised Stored Procedures

EXEC usp_GetEmpNameDept 'Kavita',4
EXEC usp_GetEmpNameDept @Dept = 2, @Name = 'Ramesh'


-- To view the text of created Stored Procedure

sp_helptext usp_GetEmpNameDept

-- Altering Stored Procedure

ALTER PROC usp_GetEmpNameDept
@Gender nvarchar(10),
@Dept int
AS
BEGIN
	SELECT * FROM Employee WHERE EmpGender = @Gender and EmpDept = @Dept ORDER BY EmpName	
END

EXEC usp_GetEmpNameDept 'Male',3


-- Dropping a Stored Procedure

DROP PROC usp_GetEmployeeDetails


-- Encrypting the Text of a Stored Procedure

CREATE PROCEDURE usp_GetEmployeeNames
WITH ENCRYPTION
AS
BEGIN
	SELECT EmpName FROM Employee
END

EXEC usp_GetEmployeeNames
sp_helptext usp_GetEmployeeNames   --Gives message as encrypted


