# online-shop-database
## CUSTOMER TABLES
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255)
)

```
;
# Inserting Records

To insert records into the tables, you can use the following examples:

## Insert Countries

sql
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Rwanda', 'RW');  -- Inserting Rwanda
INSERT INTO Countries (Country_Name, Country_Code) VALUES ('Uganda', 'UG');  -- Inserting Uganda


## nsert Departments

sql 
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('Human Resources', 'Kigali', 1);  -- HR department in Rwanda
INSERT INTO Departments (Department_Name, Location, Country_ID) VALUES ('Finance', 'Kigali', 1);  -- Finance department in Rwanda

## Insert Roles

sql
INSERT INTO Roles (Role_Name) VALUES ('Manager');  -- Inserting Manager role
INSERT INTO Roles (Role_Name) VALUES ('Employee');  -- Inserting Employee role



## Insert Employees

sql
INSERT INTO Employees (First_Name, Last_Name, Email, Phone_Number, Address, Hire_Date, Department_ID, Role_ID, Salary)
VALUES ('Alice', 'Kanayana', 'alice@example.com', '+250788123456', 'Kigali, Rwanda', SYSDATE, 1, 1, 50000);  -- Inserting employee Alice


## Insert Attendance

sql
INSERT INTO Attendance (Employee_ID, Attendance_Date, Status) VALUES (1, SYSDATE, 'Present');  -- Attendance record for employee Alice


## Conceptual, Logical and Physical Data Model

![alt text](image.png)

## Conclusion

This Employee Management Database schema is provided for educational and development purposes. You are free to use, modify, and distribute this code as you see fit, provided that proper attribution is given.
