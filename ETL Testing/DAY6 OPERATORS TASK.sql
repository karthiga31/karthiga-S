/* A company is planning to provide a fixed salary increment of ₹5,000 to every employee. The HR
department wants to generate a report showing both the current salary and the revised salary after
the increment.
Write a SQL query to generate the report.
Table Required
Table Name: Employee */
UPDATE EMPLOYEE
SET AGE = CASE EmpID
    WHEN 101 THEN 24
    WHEN 102 THEN 25
    WHEN 103 THEN 30
    WHEN 104 THEN 31
    WHEN 105 THEN 22
END
WHERE EmpID IN (101, 102, 103, 104, 105);
set sql_safe_updates = 0;
select salary, salary+5000 as increament from employee ;

/*Scenario 2 – Employee Eligibility Report
Scenario
The HR department wants to identify employees who belong to the Sales department and
whose salary is greater than ₹45,000.
Generate a report containing only employees who satisfy both conditions.
Table Required
Table Name: Employee*/
select * from employee;
select * from employee where salary >45000 AND department = 'sales';

/*Scenario 3 – Department-wise Employee
Search
Scenario
The management wants to retrieve employees who are working in either the HR department or
the IT department.
Generate a report displaying all matching employees.
Table Required
Table Name: Employee*/
select * from employee where department = 'HR' OR 'IT';


/*Scenario 4 – Employee Name Pattern Search
Scenario
The recruitment team wants to identify employees whose names start with the letter 'A' and
employees whose names end with the letter 'n'.
Write the required SQL queries to generate both reports.
Table Required
Table Name: Employee*/

select * from employee where EMPNAME like 'A%' ;
SELECT * 
FROM Employee 
WHERE EmpName LIKE 'A%' 
   OR EmpName LIKE '%N';
   
/*Scenario 5 – Employee Data Validation
Report
Scenario
A company has migrated employee records from another system. During migration, some
employees were assigned a department, while others were left without one.
Generate the following reports:
• Employees whose department information is missing.
• Employees whose department information is available.
Table Required
Table Name: Employee
Minimum Records Required
10 Records (Include at least 3 records with NULL department values.)*/
UPDATE EMPLOYEE SET DEPARTMENT = NULL;
SELECT *,
       CASE 
           WHEN Department IS NULL OR Department = '' THEN 'Missing'
           ELSE 'Available'
       END AS Department_Status
FROM Employee;



