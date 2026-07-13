/*A training institute wants to generate a student result report.
Students who score 50 or above should be displayed as "Pass", and students scoring below 50
should be displayed as "Fail".
Write a SQL query to generate the report.
Table Required
Table Name: Student*/
select *, if(marks>=50 ,'Pass','Fail') as Result from students;

/*Scenario 2 – Employee Bonus Eligibility
Scenario
The HR department wants to identify employees eligible for a yearly bonus.
Employees with a salary of ₹60,000 or more should be displayed as "Bonus Eligible"; all
others should be displayed as "Not Eligible".
Write the SQL query.*/
select *, if(salary >= 60000,'Bonus eligible','Not eligible') as result from employee;

/*Scenario 3 – Customer Premium Status
Scenario
An online shopping company wants to classify customers based on their total purchase amount.
Customers meeting the company's purchase criteria should be displayed as "Premium
Customer", otherwise display "Regular Customer".
Write the SQL query.
Table Required
Table Name: Customer*/
-- Create the Customer table with your exact columns
select*,
case
 when purchase_amount>1000 then 'premium customer'
 else 'regular customer'
 end AS result from customers;
 
 /*Scenario 4 – Product Availability Report
Scenario
An inventory management system wants to display the stock status of every product.
Products satisfying the company's stock condition should display "In Stock", otherwise display
"Out of Stock".
Write the SQL query.
Table Required*/
select *from prod;
Select *,case 
when stock_quatity >0 then 'instock'
else 'out of stock'
end as status from prod;

/*Scenario 5 – Employee Performance Rating
Scenario
The HR department wants to classify employee performance into multiple levels based on their
performance score.
Generate the report according to the company's performance policy.
Write the SQL query.
Table Required
Table Name: Employee_Performance*/
select *,
CASE 
when performance_score<=200 then 'low_performance'
when performance_score<=300 then'Average'
when performance_score>300 then'high_performance'
else 'Empty' end AS 'RESULT_set'from Employee_Performance;

/*Scenario 6 – Student Scholarship Report
Scenario
A university wants to classify students into different scholarship categories based on their
semester marks.
Generate the scholarship report according to the university's scholarship rules.
Write the SQL query.
Table Required
Table Name: Student*/
SELECT *,
CASE
    WHEN health_score <= 60 THEN 'High Priority'
    WHEN health_score <= 80 THEN 'Priority'     
    ELSE 'Low priority'                           
END AS priority_levels FROM patient;

/* Scenario 7 – Loan Approval Status
Scenario
A bank wants to classify loan applications into different approval categories based on the
applicant's monthly income.
Generate the loan approval report according to the bank's business policy.
Write the SQL query.
Table Required
Table Name: Loan_Application
Column Name Data Type
Application_ID INT
Customer_Name VARCHAR(100)
Monthly_Income DECIMAL(10,2)
Loan_Amount DECIMAL(10,2) */
select* from loan_application ;
select *,
CASE 
        WHEN Monthly_Income >= 100000.00 THEN 'Pre-Approved'
        WHEN Monthly_Income >= 50000.00  THEN 'Approved'
        WHEN Monthly_Income >= 25000.00  THEN 'Pending'
        ELSE 'Rejected'
    END AS Approval_Status
FROM Loan_Application;

/*Scenario 9 – Hospital Patient Priority Report
Scenario
A hospital wants to categorize patients based on their health score into different treatment
priority levels.
Generate the patient priority report according to the hospital's treatment policy.
Write the SQL query.
Table Required
Table Name: Patient*/
select *,
CASE
when health_score <=60 then 'High Priority'
when health_score between 61 and 70 then 'priority'
when health_score>=80 then 'Low priority'
else 'patientdead'
end as 'priority_levels' from patient;

/*Scenario 10 – Employee Salary Band
Classification
Scenario
The Finance department wants to classify employees into different salary bands based on their
monthly salary.
Generate the salary band report according to the company's salary classification policy.
Write the SQL query.
Table Required
Table Name: Employee */
select * from employe;
alter table employe add (department varchar(50));
/*UPDATE employe
SET department = CASE empid
    WHEN 1 THEN 'DE'
    WHEN 2 THEN 'ETL'
    WHEN 3 THEN 'DA'
END
WHERE empid IN (1, 2, 3);*/
select*, case 
when salary>=50000 then 'BAND A'
WHEN SALARY>=35000 THEN 'BAND B'
ELSE 'BAND C' END AS 'RESULT' FROM EMPLOYE;