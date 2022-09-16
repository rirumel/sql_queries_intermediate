-- CASE Statement

-- We use Case statement in SQL queries to add conditions and get results based on the given condition(s)

-- Usecase: Suppose the chairman of the company wants to group young and old employee. Since there were no categories before, he introduced an approach.
-- That is any employee who is above 30 will be marked as OLD and under 30 will be marked as Young. Use Employee Demographics table and 
-- update this information

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END AS 'EmployeeType'
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER by Age

-- Usecase: The chairman not wants to increase the salary of his employees in the following manner:
-- Salesman: 10% of the existing salary
--Accountant: 5% of the existing salary
-- HR: 3% of the existing salary
-- The rest will get 1% of the existing salary

-- Now Using Employee Demographics and Employee Salary show the First Name, Last Name, Job title, Salary, New Salary in a table

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.03)
	ELSE Salary + (Salary * 0.01)
END AS NEW_Salary
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
 ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
ORDER BY NEW_Salary Desc