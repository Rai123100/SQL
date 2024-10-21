--ATIVIDADE 1

----ETAPA A)
SELECT 
 channelKey,
 SUM (SalesQuantity) AS 'Quantidade vendida'
FROM
 FactSales
GROUP BY
 channelKey

--ETAPA B)
SELECT
 StoreKey,
 SUM (SalesQuantity) AS 'Quantidade vendida',
 SUM (ReturnQuantity) AS 'Quantidade devolvida'
FROM
 FactSales
GROUP BY
 StoreKey

--ETAPA C)
SELECT 
 channelKey,
 SUM (SalesAmount) AS 'Total vendido'
FROM
 FactSales
WHERE
 DateKey BETWEEN '01/01/2007' AND '31/12/2007'
GROUP BY
 channelKey


--ATIVIDADE 2

----ETAPA A)
SELECT 
 ProductKey,
 SUM (SalesAmount) AS 'Quantidade vendida'
FROM
 FactSales
GROUP BY
 ProductKey
HAVING
 SUM (SalesAmount) >= 5000000
ORDER BY
 SUM (SalesAmount) DESC

----ETAPA B)
SELECT TOP (10)
 ProductKey,
 SUM (SalesAmount) AS 'Quantidade vendida'
FROM
 FactSales
GROUP BY
 ProductKey
HAVING
 SUM (SalesAmount) >= 5000000
ORDER BY
 SUM (SalesAmount) DESC


--ATIVIDADE 3

----ETAPA A)
SELECT TOP (1)
 CustomerKey,
 SUM (SalesQuantity) AS 'Total comprado'
FROM
 FactOnlineSales
GROUP BY
 CustomerKey
ORDER BY
 SUM (SalesQuantity) DESC

----ETAPA B)
SELECT TOP (3)
 ProductKey,
 SUM (SalesQuantity) AS 'Total vendido'
FROM
 FactOnlineSales
WHERE
 CustomerKey = '19037'
GROUP BY
 ProductKey
ORDER BY
 SUM (SalesQuantity) DESC


--ATIVIDADE 4

----ETAPA A)
SELECT
 BrandName,
 COUNT (DISTINCT ProductKey) AS 'Quantidade de produtos'
FROM
 DimProduct
GROUP BY
 BrandName

----ETAPA B)
SELECT
 ClassName,
 AVG (UnitPrice) AS 'Média dos produtos'
FROM
 DimProduct
GROUP BY
 ClassName

----ETAPA C)
SELECT
 ColorName,
 SUM (Weight) AS 'Peso'
FROM
 DimProduct
GROUP BY
 ColorName


--ATIVIDADE 5

SELECT
 StockTypeName,
 SUM (Weight) AS 'Peso'
FROM
 DimProduct
WHERE
 BrandName = 'Contoso'
GROUP BY
 StockTypeName
ORDER BY
 SUM (Weight) DESC


--ATIVIDADE 6

SELECT 
 BrandName,
 COUNT (DISTINCT ColorName) AS 'Quantidade de cores'
FROM
 DimProduct
GROUP BY
 BrandName


--ATIVIDADE 7

SELECT
 Gender,
 COUNT (CustomerKey) AS 'Quantidade de clientes',
 AVG (YearlyIncome) AS 'Média salarial anual'
FROM
 DimCustomer
WHERE
 Gender IS NOT NULL
GROUP BY
 Gender


--ATIVIDADE 8

SELECT
 Education,
 COUNT (CustomerKey) AS 'Quantidade de clientes',
 AVG (YearlyIncome) AS 'Média salarial'
FROM
 DimCustomer
GROUP BY
 Education


--ATIVIDADE 9

SELECT
 DepartmentName,
 COUNT (EmployeeKey) AS 'Quantidade de funcionários'
FROM
 DimEmployee
WHERE
 Status = 'Current'
GROUP BY
 DepartmentName


--ATIVIDADE 10

SELECT 
 Title,
 SUM (VacationHours) AS 'férias'
FROM
 DimEmployee
WHERE
 Gender = 'F' AND
 DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND
 HireDate BETWEEN '01/01/1999' AND '31/12/2000'
GROUP BY
 Title
