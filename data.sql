USE EcommerceDB;
GO

-- Customers
INSERT INTO Customers VALUES
(1, 'Asha Kumar', 'asha@example.com', 'Toronto', '2024-01-10'),
(2, 'Ravi Patel', 'ravi@example.com', 'Ottawa', '2024-02-15'),
(3, 'Meera Singh', 'meera@example.com', 'Vancouver', '2024-03-20');

-- Products
INSERT INTO Products VALUES
(101, 'Wireless Mouse', 'Electronics', 25.99),
(102, 'Keyboard', 'Electronics', 45.50),
(103, 'Water Bottle', 'Home', 12.00),
(104, 'Notebook', 'Stationery', 5.50);

-- Orders
INSERT INTO Orders VALUES
(1001, 1, '2024-04-01', 71.49),
(1002, 2, '2024-04-03', 12.00),
(1003, 3, '2024-04-05', 51.00);

-- Order Items
INSERT INTO OrderItems VALUES
(1, 1001, 101, 1, 25.99),
(2, 1001, 102, 1, 45.50),
(3, 1002, 103, 1, 12.00),
(4, 1003, 104, 3, 16.50),
(5, 1003, 101, 1, 25.99),
(6, 1003, 103, 1, 12.00);
