# online-shop-database
## CUSTOMERS TABLES
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    Email VARCHAR(255),
    Address VARCHAR(255)
)

```
;
## ORDERS TABLES
```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID))

```
;
## PAYMENTS TABLES
```sql
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentMethod VARCHAR(50),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID))

```
;
## CATEGORIES TABLES
```sql
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255)
)

```
;
## PRODUCTS TABLES
```sql
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Price DECIMAL(10, 2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
)

```
;


## Insert INTO CUSTOMERS
```sql
INSERT INTO Customers (CustomerID, CustomerName, Email, Address)
VALUES (1, 'Mbabazi', 'Mbabazi@example.com', '123 KN');
commit;
INSERT INTO Customers (CustomerID, CustomerName, Email, Address)
VALUES (2, 'Mutesi', 'Mutesi@example.com', '124 KN');
commit;
INSERT INTO Customers (CustomerID, CustomerName, Email, Address)
VALUES (3, 'INGABIRE', 'INGABIRE@example.com', '125 KN')
```;
## Insert INTO ORDERS

```sql 


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
