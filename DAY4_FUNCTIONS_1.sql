/*SQL Single Row Functions – Scenario Based Task Questions
Scenario 1 – Employee Name Standardization
Scenario
A company stores employee names in different formats such as lowercase, uppercase, and mixed
case. The HR department wants a report where all employee names are displayed in uppercase.
Write a SQL query to generate the required report.
Table Required
Table Name: Employee*/
select upper(empname) from employee;

/*Scenario 2 – Product Price Calculation
Scenario
An online shopping company stores product prices with decimal values.
The finance team wants to generate a report showing:
• Original Price
• Rounded Price
• Ceiling Price
• Floor Price
Write a SQL query to generate the report.*/
select `Price (Rs.)` AS Original_Price, 
round(`Price (Rs.)`) AS Rounded_Price, 
ceil(`Price (Rs.)`) AS Ceiling_Price, 
floor(`Price (Rs.)`) AS Floor_Price
from ecommerce_dataset_updated;