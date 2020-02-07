-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT CategoryId, CategoryName, ProductName FROM Product as pd
JOIN Category as cg
ON pd.CategoryId = cg.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.id, s.CompanyName, o.OrderDate FROM Orders as o
JOIN Shipper as s
ON o.ShipVia = s.Id
WHERE o.OrderDate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity FROM OrderDetail as od
JOIN Orders as o
ON od.OrderId = o.Id
JOIN Product as p
ON od.ProductId = p.Id
WHERE orderId = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id, c.CompanyName, e.LastName FROM Orders as o
JOIN Customer as c
ON o.CustomerId = c.Id
JOIN Employee as e
ON o.EmployeeId = e.Id;

