SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

-- Join both of the tables as Outer Join

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Inner Join

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Left Outer Join

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	on SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Right Outer Join

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- -- -- Show only Employee ID, First Name, Last Name , and Salary in the following exercises: -- -- --

-- Join both of the tables as Right Outer Join

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	on SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Left Outer Join

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Right Outer Join on Employee ID from Employee Demographics

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
RIGHT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	on SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- Join both of the tables as Left Outer Join on Employee ID from Employee Salary

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
LEFT OUTER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID

-- USE CASE 1: Suppose Michael Scott wants to cut some salary from the employee who is getting highest salary. 
-- He wants to know the Employee ID, First Name, Last Name, and the salary information of the employee

SELECT SQLTutorial.dbo.EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	on SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary Desc

-- USE CASE 2: Suppose Kevin Malone wants to know the average salary of a sales person.

SELECT JobTitle, AVG(Salary) as Average_Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle




