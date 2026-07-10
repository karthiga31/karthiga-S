/* Scenario 1 - Employee Management System
Scenario

You have joined an IT company as a Database Developer.
The HR team wants to maintain employee information.
Create an Employee table and insert the given records.
Later, HR asks you to display all employee details.
Table to Create
Employee
Column Data Type
EmpID INT
EmpName VARCHAR(50)
Department VARCHAR(30)
Salary INT
Records to Insert
EmpID EmpName Department Salary
101 John IT 45000
102 Mary HR 35000
103 David Finance 55000
104 Sam IT 40000
105 Priya HR 38000
Question
Display all employee records.
SQL Command Type: DQL */
Create table Employee(EmpID INT,
EmpName VARCHAR(50),
Department VARCHAR(30),
Salary INT);
insert into employee(EmpID,EmpName,Department,Salary) values (
101,'John','IT',45000),
(102,'Mary','HR', 35000),
(103,'David','Finance',55000),
(104,'Sam','IT', 40000),
(105,'Priya','HR', 38000);
select * From Employee;

/* Scenario 2 - College Student Database
Scenario
A college wants to maintain student details.
Create a Student table and insert the following records.
Later, the college decides to add an Email column.
Table
Student
Column Data Type
StudentID INT
StudentName VARCHAR(50)
Course VARCHAR(30)
Records
StudentID StudentName Course
1 Rahul SQL
2 Priya Python
3 Arun Power BI
4 Sneha Java
5 Karthik SQL
Question
Modify the Student table by adding a new column called Email.
SQL Command Type: DDL */
create table student (StudentID INT,
StudentName VARCHAR(50),
Course VARCHAR(30));
insert into student (StudentID,StudentName, course) values(1,'Rahul','SQL'),
(2, 'Priya' ,'Python'),
(3,'Arun', 'Power BI'),
(4, 'Sneha' ,'Java'),
(5, 'Karthik' ,'SQL');
select * from student;
Alter table student add (email varchar (30));


/* Scenario 3 - Online Shopping System
Scenario
An online shopping company stores product information.
Create a Product table and insert the following records.
Later, the manager wants to increase the price of Product ID 103.
Table
Product
Column Data Type
ProductID INT
ProductName VARCHAR(50)
Price INT
Records
ProductID ProductName Price
101 Laptop 60000
102 Mouse 800
103 Keyboard 1200
104 Monitor 15000
105 Printer 9000
Question
Update the price of Product ID 103 to 1500.
SQL Command Type: DML */
Create table product(ProductID INT,
ProductName VARCHAR(50),
Price INT);
select *from product;
insert into product (ProductID,ProductName,Price) Values (101,'Laptop','60000'),
(102,'Mouse',800),
(103,'Keyboard','1200'),
(104,'Monitor','15000'),
(105,'Printer','9000');
update product set price ='1500' where productID =103 ;
SET SQL_SAFE_UPDATES = 0;
select * from product;

/* Scenario 4 - Hospital Database
Scenario
A hospital stores patient details.
Create a Patient table and insert the following records.
Later, Patient ID 2 requests that their record be removed from the system.
Table
Patient
Column Data Type
PatientID INT
PatientName VARCHAR(50)
Disease VARCHAR(50)
Records
PatientID PatientName Disease
1,'Ramesh','Fever'
2,'Suresh','Cold'
3,'Anitha','Diabetes'
4,'Meena','Asthma'
5,'Kumar','Typhoid'
Question
Delete Patient ID 2 from the table.
SQL Command Type: DML */
Create table patient(PatientID INT,
PatientName VARCHAR(50),
Disease VARCHAR(50));
insert into patient VALUES(1,'Ramesh','Fever'),
(2,'Suresh','Cold'),
(3,'Anitha','Diabetes'),
(4,'Meena','Asthma'),
(5,'Kumar','Typhoid');
select * from patient;
delete from patient where patientid = 2;



/* Scenario 5 - School Management System
Scenario
A school created a temporary table for annual event registration.
After the event, the school wants to remove all records but keep the table for next year.
Table
EventRegistration
Column Data Type
StudentID INT
StudentName VARCHAR(50)
EventName VARCHAR(50)
Records
StudentID StudentName EventName
1 Rahul Dance
2 Priya Singing
3 Arun Drawing
4 Sneha Quiz
5 Karthik Drama
Question
Remove all records from the table without deleting the table structure.
SQL Command Type: DDL */

truncate table eventregistration;

/* Scenario 6 - Company Database
Scenario
The company wants to rename its existing Employee table to Staff.
Table
Employee
EmpID EmpName Salary
101 John 45000
102 Mary 35000
103 David 50000
104 Sam 42000
105 Priya 39000
Question
Rename the Employee table to Staff.
SQL Command Type: DDL */
ALTER TABLE employee RENAME TO Staff;
select * from staff;

/* Scenario 7 - Banking System
Scenario
A bank manager updates a customer's account balance.
The manager wants the changes to be permanently saved in the database.
Table
Account
Column Data Type
AccountNo INT
CustomerName VARCHAR(50)
Balance INT
Records
AccountNo CustomerName Balance
1001 John 50000
1002 Mary 30000
1003 David 70000
1004 Sam 45000
1005 Priya 60000
Question
Update Account No. 1002's balance to 35000 and permanently save the changes.
SQL Command Type: TCL */
Create table Account(AccountNo INT,
CustomerName VARCHAR(50),
Balance INT);
insert into account (AccountNo,CustomerName,Balance) values(1001,'John',50000),
(1002,'Mary','30000'),
(1003,'David','70000'),
(1004,'Sam','45000'),
(1005,'Priya','60000');
select * from account;
update account set balance ='3500' where AccountNo =1002;
commit;

/* Scenario 8 - Library Management System
Scenario
A librarian accidentally deletes one book record.
Before committing the transaction, they realize the mistake and want to restore the deleted
record.
Table
Book
Column Data Type
BookID INT
BookName VARCHAR(50)
Author VARCHAR(50)
Records
BookID BookName Author
1,'SQL Basics','James'
2,'Python Guide','Robert'
3,'Java Programming','John'
4,'Power BI','David'
5,'Data Science','Peter'
Question
Delete Book ID 3 and restore it before committing the transaction.
SQL Command Type: TCL */
Create table book(BookID INT,
BookName VARCHAR(50),
Author VARCHAR(50));
insert into book (BookID,BookName,Author) Values (1,'SQL Basics','James'),
(2,'Python Guide','Robert'),
(3,'Java Programming','John'),
(4,'Power BI','David'),
(5,'Data Science','Peter');
select * from book;
delete from book where bookid =3;
rollback;

/* Scenario 9 - Company Security
Scenario
A new employee named Student1 has joined the reporting team.
The manager wants the employee to view employee details but should not modify any records.
Existing Table
Employee
Sample Records
EmpID EmpName Department Salary
101 John IT 45000
102 Mary HR 35000
103 David Finance 50000
104 Sam IT 42000
105 Priya HR 38000
Question
Give Student1 permission to view the Employee table only.
SQL Command Type: DCL
Scenario 10 - E-Commerce Database
Scenario
A junior developer accidentally creates a table called CustomerDetails2026.
The company decides to delete the entire table because it is no longer required.
Table
CustomerDetails2026
CustomerID CustomerName City
1 John Chennai
2 Mary Bangalore
3 David Hyderabad
4 Sam Coimbatore
5 Priya Madurai
Question
Delete the entire table permanently from the database.*/
drop table CustomerDetails2026;





/* SQL Command Type: DDL
Command Coverage
Scenario SQL Command Type
1 DQL (SELECT)
2 DDL (ALTER)
3 DML (UPDATE)
4 DML (DELETE)
5 DDL (TRUNCATE)
6 DDL (RENAME)
7 TCL (COMMIT)
8 TCL (ROLLBACK)
9 DCL (GRANT)
Scenario SQL Command Type
10 DDL (DROP); */
