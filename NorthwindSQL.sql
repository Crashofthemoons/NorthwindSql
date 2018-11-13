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

--Get the list of the products which don’t have any orders across all the months and years

SELECT p.ProductName
FROM Product p
LEFT JOIN  (SELECT od.ProductId From OrderDetail od
Group By od.ProductId) pd ON pd.ProductId = p.Id
WHERE pd.ProductId IS NULL;


--Get the list of employees who processed orders for the product chai



--Get the list of employees and the count of orders they processed in the month of march across all years

--Get the list of employees who processed the orders that belong to the city in which they live

--Get the list of employees who processed the orders that don’t belong to the city in which they live

--Get the shipping companies that processed ordersfor the category Seafood

--Get the category name and count of orders processed by employees in the USA
