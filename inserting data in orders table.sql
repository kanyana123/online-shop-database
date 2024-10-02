INSERT INTO Orders (OrderID,OrderDate,customerID)
VALUES (1,TO_DATE('27-09-2024', 'DD-MM-YYYY'),1);
COMMIT;

INSERT INTO Orders (OrderID,orderdate,customerID)
VALUES (2,TO_DATE('29-09-2024', 'DD-MM-YYYY'),2);
COMMIT;
INSERT INTO Orders (OrderID,orderdate,customerID)
VALUES (3,TO_DATE('30-09-2024', 'DD-MM-YYYY'),3);
COMMIT;