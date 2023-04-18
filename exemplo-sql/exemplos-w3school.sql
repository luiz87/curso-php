 - SQL -
DDL - LINGUAL DE DEFINIÇÃO DE DADOS
- CREATE
- ALTER
- DROP
DML - LINGUAL DE MANIPULAÇÃO DE DADOS
- INSERT
- SELECT
- UPDATE
- DELETE

Exemplos SQL
SELECT 
	Country, 
    COUNT(*) 
FROM Customers
GROUP BY Country;

SELECT * FROM Customers WHERE Country = 'Brazil';
SELECT * FROM [Products] where price > 20;
SELECT * FROM [Products] where price < 20;
SELECT * FROM [Products] WHERE price >= 30 AND price <= 39;
SELECT * FROM [Products] WHERE price BETWEEN 30 AND 39;

SELECT * FROM Products WHERE ProductName LIKE 'a%'; -- inicia com a letra A
SELECT * FROM Products WHERE ProductName LIKE '%o'; -- termina com a letra O
SELECT * FROM Products WHERE ProductName LIKE '%z%'; -- tem a letra Z em qualquer ligar

SELECT * FROM Products WHERE ProductName LIKE 'a%' OR ProductName LIKE '%o' OR ProductName LIKE '%z%';
SELECT * FROM Products WHERE ProductID IN (23,45,62);
SELECT * FROM Employees WHERE FirstName IN ('Steven','Laura');

SELECT * FROM [Customers] where Country = 'Mexico' OR Country = 'Brazil';
SELECT * FROM [Customers] where Country = 'Brazil' AND City = 'São Paulo';
SELECT * FROM [Customers] where NOT (Country = 'Brazil' AND City = 'São Paulo');

-- update Customers set City = 'Rio de Janeiro' where CustomerID = 28;
SELECT * FROM [Customers] WHERE Country = 'Brazil' AND (City = 'São Paulo' OR City = 'Rio de Janeiro');
SELECT * FROM [Customers] WHERE Country = 'Brazil' AND City IN ('São Paulo','Rio de Janeiro');

SELECT Country, CustomerName, ContactName , Address FROM [Customers] order by Country asc, ContactName desc;

-- update Customers set Address = NULL where CustomerID = 28;
SELECT * FROM [Customers] WHERE address is null;
SELECT * FROM [Customers] WHERE address is not null;

SELECT TOP 3 * FROM Customers;

SELECT CategoryID , COUNT(*), MIN(Price), MAX(Price), AVG(Price), SUM(Price) FROM Products GROUP BY CategoryID;
-- USANDO ALIAS 
SELECT 
	CategoryID , 
	COUNT(*) AS QUANTIDADE, 
    MIN(Price) AS MENOR, 
    MAX(Price) AS MAIOR, 
    AVG(Price) AS MEDIA, 
    SUM(Price) AS TOTAL
 FROM 
	Products 
 GROUP BY 
	CategoryID;

-- INNER JOIN 
SELECT 
	CategoryName , 
	COUNT(*) AS QUANTIDADE, 
    MIN(Price) AS MENOR, 
    MAX(Price) AS MAIOR, 
    AVG(Price) AS MEDIA, 
    SUM(Price) AS TOTAL
 FROM 
	Products AS P INNER JOIN
    Categories AS C ON 
    P.CategoryID = C.CategoryID
 GROUP BY 
	CategoryName;
	
-- UPDATE [Products] SET CategoryID = 5 WHERE CategoryID = 7;
SELECT 
	CategoryName , 
	COUNT(P.CategoryID) AS QUANTIDADE, 
    MIN(Price) AS MENOR, 
    MAX(Price) AS MAIOR, 
    AVG(Price) AS MEDIA, 
    SUM(Price) AS TOTAL
 FROM 
	Categories AS C LEFT JOIN
    Products AS P ON 
    P.CategoryID = C.CategoryID
 GROUP BY 
	CategoryName;
	
SELECT 
	CategoryName , 
	COUNT(P.CategoryID) AS QUANTIDADE, 
    COALESCE(MIN(Price),0) AS MENOR, 
    COALESCE(MAX(Price),0) AS MAIOR, 
    COALESCE(AVG(Price),0) AS MEDIA, 
    COALESCE(SUM(Price),0) AS TOTAL
 FROM 
	Categories AS C LEFT JOIN
    Products AS P ON 
    P.CategoryID = C.CategoryID
 GROUP BY 
	CategoryName;
-- UNION
SELECT Country , City FROM [Customers]
UNION ALL
SELECT Country , City FROM [Suppliers];

SELECT 
	Country , 
	City, 
	COUNT(*) QT
FROM (
	SELECT Country , City FROM [Customers]
	UNION ALL
	SELECT Country , City FROM [Suppliers]
	)
GROUP BY 
	Country , 
	City;