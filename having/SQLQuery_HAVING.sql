-- HAVING Clause

SELECT JobTitle, COUNT(JobTitle)
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

-- Where there's an aggregate we cannot use WHERE condition, instead we have to use HAVING clause. 
-- WHERE comes before GROUP BY command. HAVING comes right after GROUP BY command.

SELECT JobTitle, AVG(Salary)
FROM SQLTutorial.dbo.EmployeeDemographics
INNER JOIN SQLTutorial.dbo.EmployeeSalary
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 30000
ORDER BY AVG(Salary)
