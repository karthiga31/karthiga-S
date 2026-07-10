/*SQL Multiple Row Functions (Aggregate Functions) –
Scenario Based Task Questions
Scenario 1 – Employee Salary Summary
Scenario
A company's HR department wants to know the total salary expense paid to all employees
every month.
Write a SQL query to generate the required report.
Table Required
Table Name: Employee
Column Name Data Type
Emp_ID INT
Emp_Name VARCHAR(100)
Department VARCHAR(50)
Salary DECIMAL(10,2)
Minimum Records Required
8 Records*/
use test;
create table employee(
Emp_ID INT,
Emp_Name VARCHAR(100),
Department VARCHAR(50),
Salary DECIMAL(10,2));
ALTER TABLE employee 
Add salary decimal(10,2);
select* from employee;
INSERT INTO employee (salary) 
VALUES ('500'),('600'),('300'),('200'),('400');
delete from employee where salary is null;
UPDATE employee SET salary = 50000 WHERE empid = '101';
UPDATE employee SET salary = 60000 WHERE empid = '102';
UPDATE employee SET salary = 50000 WHERE empid = '104';
UPDATE employee SET salary = 60000 WHERE empid = '103';
UPDATE employee SET salary = 50000 WHERE empid = '105';
select sum(salary)from employee;

/*Scenario 2 – Student Average Marks Report
Scenario
A training institute wants to calculate the average marks scored by all students in the SQL
course.
Write a SQL query to display the average marks.
Table Required
Table Name: Student
Column Name Data Type
Student_ID INT
Student_Name VARCHAR(100)
Course VARCHAR(50)
Marks INT
Minimum Records Required
10 Records*/
use de_course;
alter table de_course.Student add (Mark int);
select * from de_course.student;
UPDATE student SET mark = 500  WHERE std_id = '2';
UPDATE student SET mark = 600 WHERE std_id = '102';
UPDATE student SET mark = 500 WHERE std_id = '103';
UPDATE student SET mark = 600 WHERE std_id = '104';
select avg(mark) from student;

/*Scenario 3 – Product Price Analysis
Scenario
An e-commerce company wants to identify the most expensive product and the least expensive
product available in its inventory.
Write a SQL query to generate the report.
Table Required
Table Name: Product
Column Name Data Type
Product_ID INT
Product_Name VARCHAR(100)
Category VARCHAR(50)
Price DECIMAL(10,2)
Minimum Records Required
8 Records*/
CREATE TABLE Prod (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);
INSERT INTO Prod (Product_ID, Product_Name, Category, Price) VALUES
(101, 'Wireless Mouse', 'Electronics', 25.50),
(102, 'Gaming Laptop', 'Electronics', 1200.00),
(103, 'Running Shoes', 'Footwear', 85.00),
(104, 'Coffee Maker', 'Appliances', 45.99),
(105, 'Ergonomic Desk Chair', 'Furniture', 189.50),
(106, 'Leather Wallet', 'Accessories', 15.00),
(107, 'Bluetooth Speaker', 'Electronics', 59.99),
(108, 'Stainless Steel Water Bottle', 'Accessories', 12.50);
select * from prod;
SELECT 
    MAX(Price) AS Most_Expensive_Price,
    MIN(Price) AS Least_Expensive_Price
FROM Prod;


/*Scenario 4 – Customer Registration Report
Scenario
A banking application needs to know how many customers have registered in the system.
Write a SQL query to display the total number of customer records.
Table Required
Table Name: Customer
Column Name Data Type
Customer_ID INT
Customer_Name VARCHAR(100)
Mobile_No VARCHAR(15)
City VARCHAR(50)
Minimum Records Required
12 Records*/
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(100),
    Mobile_No VARCHAR(15),
    City VARCHAR(50)
);
INSERT INTO Customer (Customer_ID, Customer_Name, Mobile_No, City) VALUES
(1, 'Amit Sharma', '9876543210', 'Mumbai'),
(2, 'Priya Patel', '8765432109', 'Ahmedabad'),
(3, 'Rahul Verma', '7654321098', 'Delhi'),
(4, 'Sneha Reddy', '6543210987', 'Hyderabad'),
(5, 'Vijay Kumar', '9123456780', 'Bangalore'),
(6, 'Ananya Sen', '8234567891', 'Kolkata'),
(7, 'Deepak Singh', '7345678912', 'Lucknow'),
(8, 'Pooja Rao', '6456789123', 'Chennai'),
(9, 'Vikram Malhotra', '9567891234', 'Pune'),
(10, 'Kriti Joshi', '8678912345', 'Jaipur'),
(11, 'Rohan Das', '7789123456', 'Bhubaneswar'),
(12, 'Meera Nair', '6891234567', 'Kochi');
select * from customer;
select count(*) AS total from customer;

/*Scenario 5 – Company Salary Dashboard
Scenario
The management team wants a salary summary dashboard that displays the following
information:
• Total number of employees
• Total salary paid
• Average salary
• Highest salary
• Lowest salary
Write a single SQL query to generate the dashboard.
Table Required
Table Name: Employee
Column Name Data Type
Emp_ID INT
Emp_Name VARCHAR(100)
Department VARCHAR(50)
Column Name Data Type
Salary DECIMAL(10,2)
Minimum Records Required
10 Records*/

SELECT 
    COUNT(*) AS Total_Employees,
    SUM(Salary) AS Total_Salary_Paid,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    MAX(Salary) AS Highest_Salary,
    MIN(Salary) AS Lowest_Salary
FROM Employee;
