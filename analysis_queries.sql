USE EcommerceDB;
GO

-- 1. Total revenue
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders;

-- 2. Top 5 customers by spending
SELECT C.CustomerName, SUM(O.TotalAmount) AS TotalSpent
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalSpent DESC;

-- 3. Most sold products
SELECT P.ProductName, SUM(OI.Quantity) AS TotalQuantity
FROM Products P
JOIN OrderItems OI ON P.ProductID = OI.ProductID
GROUP BY P.ProductName
ORDER BY TotalQuantity DESC;

-- 4. Revenue by category
SELECT P.Category, SUM(OI.LineTotal) AS CategoryRevenue
FROM Products P
JOIN OrderItems OI ON P.ProductID = OI.ProductID
GROUP BY P.Category
ORDER BY CategoryRevenue DESC;

-- 5. Monthly sales trend
SELECT FORMAT(OrderDate, 'yyyy-MM') AS Month, SUM(TotalAmount) AS MonthlyRevenue
FROM Orders
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Month;

-- 6. Customers with no orders
SELECT C.CustomerName
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.OrderID IS NULL;

-- 7. Average order value
SELECT AVG(TotalAmount) AS AvgOrderValue
FROM Orders;

-- 8. Top category by revenue
SELECT TOP 1 P.Category, SUM(OI.LineTotal) AS Revenue
FROM Products P
JOIN OrderItems OI ON P.ProductID = OI.ProductID
GROUP BY P.Category
ORDER BY Revenue DESC;
