/*Scenario-Based Interview Questions –
CONSTRAINTS
Scenario 1: Employee Registration System
Table: Employee
EmpID EmpName Email PhoneNo Department
101 Ravi ravi@gmail.com 9876543210 IT
102 Meena meena@gmail.com 9876543211 HR
Scenario
A company is developing an Employee Registration System. Every employee should have a
unique Employee ID and Email ID. During testing, one employee tries to register using an Email
ID that already exists in the database.
Interview Question
Which SQL Constraint should be implemented to prevent duplicate Email IDs, and why? */
use demo;
select * from employee;
-- unique


/*Scenario 2: Online Shopping Application
Table: Orders
OrderID CustomerID ProductID OrderDate
1001 201 P101 2026-07-01
1002 202 P102 2026-07-02
Scenario
An order can be created only if the Customer already exists in the Customer table. During
testing, a developer attempts to insert an order for a Customer ID that is not available in the
Customer table.
Interview Question
Which SQL Constraint should be used to enforce this business rule? */

-- foriegn key


/*Scenario 3: College Student Admission
System
Table: Student
StudentID StudentName Age Course
101 Arjun 20 BCA
102 Divya 19 B.Sc
Scenario
The college has decided that every student must provide their name during admission. While
entering records, a staff member leaves the Student Name field empty.
Interview Question
Which SQL Constraint should be applied to ensure that every student record contains a
Student Name? */
-- primary key


/* Scenario 4: Banking Account Management
Table: BankAccount
AccountNo CustomerName AccountType Balance
5001 John Savings 25000
5002 Priya Current 80000
Scenario
The bank allows only two account types: Savings and Current. During data entry, an employee
enters the Account Type as "Personal".
Interview Question
Which SQL Constraint should be used to restrict invalid account types from being stored
in the database? */
-- Check

/*Scenario 5: Company Asset Management
Table: Assets
AssetID AssetName Status PurchaseDate
A101 Laptop Active 2026-01-15
A102 Monitor Active 2026-02-10
Scenario
Whenever a new asset is added to the system, if the user does not specify the Status, it should
automatically be stored as 'Active'.
Interview Question
Which SQL Constraint can automatically assign a value when no value is provided during
insertion? */

-- default