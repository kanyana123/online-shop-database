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
```
;


## Insert INTO ORDERS

```sql 
INSERT INTO Orders (OrderID,OrderDate,customerID)
VALUES (1,TO_DATE('27-09-2024', 'DD-MM-YYYY'),1);
COMMIT;

INSERT INTO Orders (OrderID,orderdate,customerID)
VALUES (2,TO_DATE('29-09-2024', 'DD-MM-YYYY'),2);
COMMIT;
INSERT INTO Orders (OrderID,orderdate,customerID)
VALUES (3,TO_DATE('30-09-2024', 'DD-MM-YYYY'),3)
```
;


## Insert INTO PRODUCTS

```sql
INSERT INTO Products (ProductID, ProductName, Price, CategoryID)
VALUES (1, 'Laptop', 999.99, 1);
COMMIT;
INSERT INTO Products (ProductID, ProductName, Price, CategoryID)
VALUES (2, 'DICTIONARY', 98.99, 2);
COMMIT;
INSERT INTO Products (ProductID, ProductName, Price, CategoryID)
VALUES (3, 'FRIDGE', 555.99, 3)
```
;





## Insert INTO PAYMENTS

```sql
INSERT INTO Payments (PaymentID, OrderID, Paymentmethod, Amount)
VALUES (1,1,'cash',999.99);
commit;
INSERT INTO Payments (PaymentID, OrderID, Paymentmethod, Amount)
VALUES (2,2,'creditcard',98.99);
commit;
INSERT INTO Payments (PaymentID, OrderID, Paymentmethod, Amount)
VALUES (3,3,'cash',555.99)
```
;

## Insert INTO CATEGORIES
```sql
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (1, 'Electronics');
COMMIT;
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (2, 'Books');
COMMIT;
INSERT INTO Categories (CategoryID, CategoryName)
VALUES (3, 'Home Appliances')
```
;
## Conceptual, Logical and Physical Data Model

![alt text](image.png)

## Conclusion

This Employee Management Database schema is provided for educational and development purposes. You are free to use, modify, and distribute this code as you see fit, provided that proper attribution is given.
