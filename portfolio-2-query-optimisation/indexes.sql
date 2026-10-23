-- Portfolio 2: Indexing examples

CREATE UNIQUE INDEX idx_customer_email
ON Customer(Email);

CREATE INDEX idx_order_customer
ON Orders(CustomerID);

CREATE INDEX idx_product_name
ON Product(ProductName);

CREATE INDEX idx_orderitem_product
ON OrderItem(ProductID);

CREATE INDEX idx_servicerequest_status
ON ServiceRequest(RequestStatus);

-- Example EXPLAIN statement
EXPLAIN
SELECT OrderID, OrderDate, OrderStatus
FROM Orders
WHERE CustomerID = 101;
