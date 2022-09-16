-- Create a new table in SQLTutorial database and name the table as WareHouseEmployeeDemographics
-- The table must contain these fields: Employe ID, First Name, Last Name, Age, Gender

CREATE TABLE WareHouseEmployeeDemographics
(EmployeeID int,
FirstName varchar(80),
LastName varchar(80),
Age int,
Gender varchar(80)
)

-- Insert values into WareHouseEmployeeDemographics

INSERT INTO SQLTutorial.dbo.WareHouseEmployeeDemographics VALUES
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 30, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

-- Check the table if all the values are inserted successfully or not

SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics

-- First try to do full outer join of Employee Demographics and Warehouse Employee Demographics tables:

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
FULL OUTER JOIN SQLTutorial.dbo.WareHouseEmployeeDemographics
	ON SQLTutorial.dbo.EmployeeDemographics.EmployeeID = SQLTutorial.dbo.WareHouseEmployeeDemographics.EmployeeID 

-- Now merge Employee Demographics and WareHouseEmployeeDemographics table using UNION

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

-- Now merge Employee Demographics and WareHouseEmployeeDemographics table using UNION ALL

SELECT *
FROM SQLTutorial.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLTutorial.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

-- COMMENT: The difference between UNION and UNION ALL is UNION chooses the disctinct values only where UNION ALL takes all
-- the values from both tables. For example, Employee ID appeared only once when UNION is used and twice when UNION ALL is used.

-- Now join Emplooyee Demographics table with Employee Salary using UNION and see what happens
-- From Employee Demographics use: Employee ID, First Name, and Age
-- From Employee Salary use: Employee ID, Jobtitle, and Salary

SELECT EmployeeID, FirstName, Age
FROM SQLTutorial.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLTutorial.dbo.EmployeeSalary

-- It still merges two tables because number of columns and the datatypes of each column from both table match.
-- However, the table itself is not meaningful.