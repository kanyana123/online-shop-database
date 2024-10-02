SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT Orders.CustomerID
    FROM Payments
    INNER JOIN Orders ON Payments.OrderID = Orders.OrderID
    WHERE Amount> 100);
    commit;