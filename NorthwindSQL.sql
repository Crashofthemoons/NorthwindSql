--Get a list of all the orders processed with category name (as an input parameter) *not implemented yet

SELECT * FROM [Order];

--Get the product name , count of orders processed

SELECT p.ProductName, Count(od.Id)
FROM Product p
JOIN OrderDetail od ON p.Id = od.ProductId
GROUP BY p.ProductName;

--Get the list of the months which don’t have any orders

SELECT o.OrderDate
FROM [Order] o;

SELECT EXTRACT(MONTH FROM [Order].OrderDate);

SELECT distinct OrderDate FROM [Order]
WHERE OrderDate LIKE ;


--Get the top 3 products which have the most orders


SELECT p.ProductName, Count(od.Id) as OCount
FROM Product p
JOIN OrderDetail od ON p.Id = od.ProductId
GROUP BY p.ProductName
ORDER BY OCount desc
LIMIT 3;

--Get the list of the months which don’t have any orders for product chai

SELECT p.ProductName,  o.OrderDate
FROM Product p 
JOIN OrderDetail od ON p.Id = od.ProductId
JOIN [Order] o ON o.Id = od.OrderId
WHERE p.ProductName = "Chai";

