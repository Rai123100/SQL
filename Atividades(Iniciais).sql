--Quest�o 1

--Etapa A)

--RESPOSTA: A quantidade de produtos continua igual.

--SELECT *
--FROM DimProduct

--Etapa B)

--RESPOSTA: A quantidade de clientes diminuiu em 631.

--SELECT *
--FROM DimCustomer


--Quest�o 2

--Etapa A)

--SELECT CustomerKey, FirstName, EmailAddress, BirthDate
--FROM DimCustomer

--Etapa B)

--SELECT 
--CustomerKey AS 'ID do Cliente',
--FirstName AS Nome,
--EmailAddress AS 'E-mail',
--BirthDate AS 'Data de Nascimento'
--FROM DimCustomer

 
--Quest�o 3

--Etapa A)

--SELECT TOP (100) *
--FROM DimCustomer

--Etapa B)

--SELECT TOP (20) PERCENT *
--FROM DimCustomer

--Etapa C)

--SELECT TOP (100) FirstName, EmailAddress, BirthDate
--FROM DimCustomer

--Etapa D)

--SELECT 
--FirstName AS Nome,
--EmailAddress AS 'E-mail',
--BirthDate AS 'Data de Nascimento'
--FROM DimCustomer


--Quest�o 4

--SELECT DISTINCT
--Manufacturer AS Fornecedor
--FROM DimProduct


--Quest�o 5

--SELECT Distinct ProductKey
--FROM FactSales

--SELECT DISTINCT ProductName
--FROM DimProduct

--RESPOSTA: 1 unico produto n�o foi vendido.