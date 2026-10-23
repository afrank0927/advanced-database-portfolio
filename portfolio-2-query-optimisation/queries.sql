-- Portfolio 2: Query Processing and Optimisation
-- Sample SQL queries for ALFXION-TECH HUB

SELECT *
FROM Customer;

SELECT SUM(Amount) AS TotalRevenue
FROM Payment;

SELECT
    P.ProductName,
    SUM(OI.Quantity) AS TotalSold
FROM Product AS P
JOIN OrderItem AS OI ON P.ProductID = OI.ProductID
JOIN Orders AS O ON OI.OrderID = O.OrderID
WHERE O.OrderStatus IN ('Completed', 'Delivered')
GROUP BY P.ProductID, P.ProductName
ORDER BY TotalSold DESC;

SELECT
    C.FullName,
    O.OrderID,
    O.OrderDate,
    O.OrderStatus
FROM Customer AS C
JOIN Orders AS O ON C.CustomerID = O.CustomerID
ORDER BY O.OrderDate DESC;

SELECT
    C.FullName,
    S.ServiceRequestID,
    S.ServiceType,
    S.RequestDate,
    S.RequestStatus
FROM Customer AS C
JOIN ServiceRequest AS S ON C.CustomerID = S.CustomerID
WHERE S.RequestStatus IN ('Pending', 'In Progress')
ORDER BY S.RequestDate ASC;
