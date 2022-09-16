-- UPDATE AND DELETE

 -- Look into Employee Demographics table

 SELECT *
 FROM SQLTutorial.dbo.EmployeeDemographics

 -- You Notice that row 11 doesn't contain Employee ID and Age.
 -- Please update this row. Employee ID = 1012, Age = 31

 UPDATE SQLTutorial.dbo.EmployeeDemographics
 SET EmployeeID = 1012, Age = 31
 WHERE FirstName = 'Holly' AND LastName='Flax'

-- Now look into the table again to see if the row is updated or not

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics

-- An employee with Employee ID 1005 has left the company and the company wants to remove his information from Employee Demographics

--1) Just to be on the safe side, I will first select the row that I want to delete and check if the selected row is what I want delete
SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

-- 2) Then I will use the same query and replace SELECT * with DELETE

DELETE
FROM SQLTutorial.dbo.EmployeeDemographics
WHERE EmployeeID = 1005

-- 3) Then I will check the full table again to confirm it's deleted successfully

SELECT * 
FROM SQLTutorial.dbo.EmployeeDemographics
