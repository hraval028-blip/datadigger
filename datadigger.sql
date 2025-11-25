create database data;
use data;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(255)
);

-- Insert at least 5 sample customers
INSERT INTO Customers (Name, Email, Address) VALUES
('Alice', 'alice@email.com', '123 Road A'),
('Bob', 'bob@email.com', '456 Road B'),
('Carol', 'carol@email.com', '789 Road C'),
('Dave', 'dave@email.com', '101 Road D'),
('Eve', 'eve@email.com', '202 Road E');

-- Retrieve all customer details
SELECT * FROM Customers;

-- Update a customer’s address
UPDATE Customers SET Address = '999 Updated Avenue' WHERE CustomerID = 1;

-- Delete a customer using their CustomerID
DELETE FROM Customers WHERE CustomerID = 2;

-- Display all customers whose name is 'Alice'
SELECT * FROM Customers WHERE Name = 'Alice';
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert at least 5 sample orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-10-01', 500.00),
(3, '2025-10-02', 800.00),
(1, '2025-10-05', 1200.00),
(4, '2025-10-07', 750.00),
(5, '2025-10-11', 300.00);

-- Retrieve all orders made by a specific customer (e.g., CustomerID = 1)
SELECT * FROM Orders WHERE CustomerID = 1;

-- Update an order's total amount
UPDATE Orders SET TotalAmount = 1500.00 WHERE OrderID = 2;

-- Delete an order using its OrderID
DELETE FROM Orders WHERE OrderID = 3;

-- Retrieve orders placed in the last 30 days
SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

-- Retrieve the highest, lowest, and average order amount
SELECT MAX(TotalAmount) AS HighestAmount, MIN(TotalAmount) AS LowestAmount, AVG(TotalAmount) AS AverageAmount FROM Orders;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

-- Insert at least 5 sample products
INSERT INTO Products (ProductName, Price, Stock) VALUES
('Laptop', 70000, 10),
('Mouse', 1200, 50),
('Keyboard', 2500, 40),
('Monitor', 15000, 20),
('Webcam', 2000, 0);

-- Retrieve all products sorted by price in descending order
SELECT * FROM Products ORDER BY Price DESC;

-- Update the price of a specific product
UPDATE Products SET Price = 1300 WHERE ProductID = 2;

-- Delete a product if it is out of stock
DELETE FROM Products WHERE Stock = 0;

-- Retrieve products whose price is between ₹500 and ₹2000
SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

-- Retrieve the most expensive and cheapest product
SELECT MAX(Price) AS MostExpensive, MIN(Price) AS Cheapest FROM Products;

    
