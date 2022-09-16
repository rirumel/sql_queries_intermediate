-- Aliasing

-- Employee Demographics table has two columns: First Name, and Last Name. The Chairman of the company just wants to have a quick look
-- on the full name of all of the employees as a Full Name column only

SELECT FirstName+' '+LastName AS FullName
FROM SQLTutorial.dbo.EmployeeDemographics

-- You now need to join 3 tables that are available however when joining them using the common and unique column of different tables
-- make sure you make the relationship a readable one. For example instead of 
-- SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID write
-- Demo.EmployeeID = Sal.EmployeeID
-- For WareHouseEmployeeDemographics rename the table to Ware only

SELECT Demo.FirstName, Demo.LastName, Ware.Gender, Ware.Age, Sal.JobTitle, Sal.Salary 
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
LEFT JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
 ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID
WHERE Sal.Salary IS NOT NULL