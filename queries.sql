-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT p.ProductName, cat.CategoryName
FROM Product AS p
JOIN Category AS cat
ON p.CategoryId = cat.id;



-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.Id, ship.CompanyName
From [Order] AS o 
JOIN Shipper AS ship
ON o.ShipVia = ship.id where o.OrderDate < '2012-08-09';



-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.Id, p.ProductName, od.Quantity
FROM Product as p
JOIN OrderDetail as od
ON p.Id = od.ProductId
WHERE od.OrderId = 10251
ORDER BY asc;



-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id, cust.CompanyName, e.LastName
FROM [Order] as o 
JOIN [Customer] as cust ON o.CustomerId = cust.Id
JOIN [Employee] as e ON o.EmployeeId = e.Id;


--Task 3: Stretch Problems
--In SQL Try Editor at W3Schools.com:
-- Displays CategoryName and a new column called Count that shows how many products are in each category. Shows 8 records.
SELECT cat.CategoryName AS Categories, COUNT(p.CategoryID)
FROM Products as p
JOIN Categories as cat on p.CategoryID = cat.CategoryID
GROUP BY cat.CategoryName
ORDER BY cat.CategoryName;



-- Display OrderID and a column called ItemCount that shows the total number of products placed on the order. Shows 196 records.
SELECT OrderID, COUNT(p.ProductID) as 'TotalProducts' 
FROM OrderDetails
AS od
JOIN Products
AS p
ON p.ProductID = od.ProductID
GROUP BY OrderID;