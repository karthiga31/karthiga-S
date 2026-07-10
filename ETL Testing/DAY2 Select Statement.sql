create table Employee(EmpID int ,EmpName varchar(80),Department varchar(50),Salary varchar(60),City varchar(60));
insert into employee values(101,'John', 'IT','50000','Chennai'),
(102,'Mary','HR','35000','Bangalore'),
(103,'David','Finance','60000','Hyderabad'),
(104,'Sam','IT','45000','Chennai'),
(105,'Priya','HR','40000','Madurai');
select * from employee;
/*Scenario-Based Interview Questions – SELECT
STATEMENT
Scenario 1: Employee Directory Report
Table: Employee
EmpID EmpName Department Salary City
101 John IT 50000 Chennai
102 Mary HR 35000 Bangalore
103 David Finance 60000 Hyderabad
104 Sam IT 45000 Chennai
105 Priya HR 40000 Madurai
Interview Question
The HR department wants a complete employee directory containing every column for all
employees.
Expected Output
The result should display all five employee records along with EmpID, EmpName, Department,
Salary, and City.*/
select * from employee;


/*Scenario 2: Finance Salary Report
Table: Employee
EmpID EmpName Department Salary City
101 John IT 50000 Chennai
102 Mary HR 35000 Bangalore
103 David Finance 60000 Hyderabad
104 Sam IT 45000 Chennai
105 Priya HR 40000 Madurai
Interview Question
The Finance Manager needs a report showing only employee names and their salaries.
Expected Output
The result should display five rows containing only the EmpName and Salary columns for all
employees.*/
select EmpName from employee;

/*Scenario 3: Unique Department List
Table: Employee
EmpID EmpName Department Salary City
101 John IT 50000 Chennai
102 Mary HR 35000 Bangalore
103 David Finance 60000 Hyderabad
104 Sam IT 45000 Chennai
105 Priya HR 40000 Madurai
Interview Question
The Administration team wants to know how many different departments exist in the company
without repeating department names.
Expected Output
The result should display only three department names: IT, HR, and Finance, with no duplicate
values.*/
select distinct(department) from employee;

/*Scenario 4: Unique Employee Cities
Table: Employee
EmpID EmpName Department Salary City
101 John IT 50000 Chennai
102 Mary HR 35000 Bangalore
103 David Finance 60000 Hyderabad
104 Sam IT 45000 Chennai
105 Priya HR 40000 Madurai
Interview Question
The company is planning new branch offices and wants a list of all unique cities where
employees are currently located.
Expected Output
The result should display four unique city names: Chennai, Bangalore, Hyderabad, and Madurai.*/
select distinct(city) from employee;


/*Scenario 5: Dashboard Preview Report
Table: Employee
EmpID EmpName Department Salary City
101 John IT 50000 Chennai
102 Mary HR 35000 Bangalore
103 David Finance 60000 Hyderabad
104 Sam IT 45000 Chennai
105 Priya HR 40000 Madurai
Interview Question
A dashboard should initially show only a small preview of employee records instead of loading
the entire table.
Expected Output
The result should display only the first three employee records from the Employee table as a
preview.*/
select empname from employee limit 3;
