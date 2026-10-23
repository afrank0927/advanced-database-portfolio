-- Portfolio 3: Transactions and Concurrency
-- Successful stock and order transaction example

START TRANSACTION;

UPDATE Product
SET Quantity = Quantity - 1
WHERE ProductID = 1001
  AND Quantity >= 1;

-- Check affected row count.
-- If no row was updated, ROLLBACK and report insufficient stock.

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderStatus)
VALUES (5001, 101, CURRENT_DATE, 'Pending');

COMMIT;

-- Rollback example
START TRANSACTION;
UPDATE Product
SET Quantity = Quantity - 10
WHERE ProductID = 1001;
ROLLBACK;

-- Lost update prevention: atomic condition
UPDATE Product
SET Quantity = Quantity - 2
WHERE ProductID = 1001
  AND Quantity >= 2;

-- Row locking example
START TRANSACTION;
SELECT Quantity
FROM Product
WHERE ProductID = 1001
FOR UPDATE;
-- Validate stock and perform update
COMMIT;
