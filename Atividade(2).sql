--Atividade 1

--SELECT TOP (100) *
--FROM FactSales
--ORDER BY SalesAmount DESC


--Atividade 2

--SELECT TOP (10) *
--FROM DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, ProductLabel ASC


--Atividade 3

--ETAPA a,b e c)

--SELECT 
--	ProductName AS 'Nome do Produto',
--	Weight AS Peso
--FROM DimProduct
--WHERE Weight>100
--ORDER BY Weight DESC


--Atividade 4

--SELECT 
--	StoreName AS 'Nome da Loja',
--	OpenDate AS 'Data da Abertura',
--	EmployeeCount AS 'Contagem de funcionários'
--FROM DimStore
--WHERE CloseDate IS NULL


--Atividade 5

--SELECT 
--	ProductKey
--FROM DimProduct
--WHERE BrandName = 'Litware' AND AvailableForSaleDate = '15/03/2009'


--Atividade 6

--ETAPA a)

--SELECT *
--FROM DimStore
--WHERE Status = 'ON'

--ETAPA b)

--SELECT *
--FROM DimStore
--WHERE CloseDate IS NULL



--Atividade 7

--LOJAS QUE RECEBERÃO 1 MÁQUINA DE CAFÉ

--SELECT *
--FROM DimStore
--WHERE EmployeeCount BETWEEN 1 AND 20

--LOJAS QUE RECEBERÃO 2 MÁQUINA DE CAFÉ

--SELECT *
--FROM DimStore
--WHERE EmployeeCount BETWEEN 21 AND 50

--LOJAS QUE RECEBERÃO 2 MÁQUINA DE CAFÉ

--SELECT *
--FROM DimStore
--WHERE EmployeeCount > 50


--Atividade 8

SELECT ProductKey, ProductName, UnitPrice
FROM DimProduct