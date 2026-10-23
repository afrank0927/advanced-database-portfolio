-- Sample seed data for ALFXION-TECH HUB

INSERT INTO Customer (CustomerID, FullName, Email, Phone, Address) VALUES
(101, 'Ada Johnson', 'ada.johnson@example.com', '08011111111', 'Lagos, Nigeria'),
(102, 'Daniel Okafor', 'daniel.okafor@example.com', '08022222222', 'Abuja, Nigeria');

INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Computer Hardware'),
(2, 'Networking Equipment'),
(3, 'Software'),
(4, 'Web Development'),
(5, 'IT Support'),
(6, 'Cybersecurity');

INSERT INTO Product (ProductID, ProductName, Price, Quantity, CategoryID) VALUES
(1001, 'Laptop', 350000.00, 15, 1),
(1002, 'Router', 95000.00, 20, 2),
(1003, 'Antivirus Suite', 45000.00, 30, 3),
(1004, 'Website Design Package', 180000.00, 8, 4),
(1005, 'Network Troubleshooting', 70000.00, 12, 5);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, OrderStatus) VALUES
(5001, 101, '2026-10-20', 'Pending'),
(5002, 102, '2026-10-21', 'Delivered');

INSERT INTO OrderItem (OrderItemID, OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 5001, 1001, 1, 350000.00),
(2, 5002, 1002, 2, 95000.00),
(3, 5002, 1003, 1, 45000.00);

INSERT INTO Payment (PaymentID, OrderID, Amount, PaymentDate, PaymentMethod) VALUES
(1, 5001, 350000.00, '2026-10-20', 'Bank Transfer'),
(2, 5002, 185000.00, '2026-10-21', 'Card');

INSERT INTO Delivery (DeliveryID, OrderID, DeliveryStatus, DeliveryDate) VALUES
(1, 5001, 'In Transit', '2026-10-23'),
(2, 5002, 'Delivered', '2026-10-22');

INSERT INTO ServiceRequest (ServiceRequestID, CustomerID, ServiceType, Description, RequestDate, RequestStatus) VALUES
(1, 101, 'Network Configuration', 'Office network setup and configuration.', '2026-10-18', 'In Progress'),
(2, 102, 'Website Development', 'E-commerce website redesign.', '2026-10-19', 'Pending');
