-- PARTITION BY

-- Join Employee Demographics and Employee Salary
-- Choose First Name, Last Name, Gender, Salary to show
-- Also do partition so that it adds a new column called TotalGender and shows how many females and males work in the company
-- with respect to each row

SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER(PARTITION BY Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
INNER JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

-- Now do Group BY query using the same information

SELECT Gender, COUNT(Gender) AS TotalGender
FROM SQLTutorial.dbo.EmployeeDemographics AS Demo
INNER JOIN SQLTutorial.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender
