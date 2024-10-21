--Atividade 1

--SELECT 
--SUM (SalesQuantity) AS 'Quantidade vendida',
--SUM (ReturnQuantity) AS 'Quantidade vendida'
--FROM FactSales
--WHERE channelKey = 1

  
--Atividade 2

--SELECT
--AVG (YearlyIncome) AS 'Média salarial anual'
--FROM DimCustomer
--WHERE Occupation = 'Professional'


--Atividade 3

----ETAPA A)
--SELECT 
--MAX (EmployeeCount) 'Funcionários'
--FROM DimStore

----ETAPA B)
--SELECT StoreName
--FROM DimStore
--WHERE EmployeeCount = '325'

----ETAPA C)
--SELECT 
--MIN (EmployeeCount) 'Funcionários'
--FROM DimStore

----ETAPA D)
--SELECT StoreName
--FROM DimStore
--WHERE EmployeeCount = '7'

----Professor
--SELECT 
--MAX (EmployeeCount) AS 'Maior quantidade de funcionários',
--MIN (EmployeeCount) AS 'Menor quantidade de funcionários'
--FROM DimStore

--SELECT TOP (1)
--StoreName,
--EmployeeCount
--FROM DimStore
--ORDER BY EmployeeCount DESC

--SELECT TOP (1)
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount IS NOT NULL
--ORDER BY EmployeeCount ASC


--Atividade 4

------ETAPA A)
--SELECT 
--COUNT (EmployeeKey) AS 'Quantidade de funcionários do sexo Masculino'
--FROM DimEmployee
--WHERE Gender = 'M'

--SELECT 
--COUNT (EmployeeKey) AS 'Quantidade de funcionários do sexo Feminino'
--FROM DimEmployee
--WHERE Gender = 'F'

----ETAPA B)
--SELECT TOP (1)
--FirstName,
--EmailAddress,
--HireDate
--FROM DimEmployee
--WHERE Gender = 'F'
--ORDER BY HireDate ASC

--SELECT TOP (1)
--FirstName,
--EmailAddress,
--HireDate
--FROM DimEmployee
--WHERE Gender = 'M'
--ORDER BY HireDate ASC


--Atividade 5

--SELECT
--COUNT (DISTINCT BrandName) AS 'Nome da Marca',
--COUNT (DISTINCT ClassName) AS 'Classe do Produto',
--COUNT (DISTINCT ColorName) AS 'Cor'
--FROM DimProduct