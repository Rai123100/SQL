--Atividade 1

SELECT 
 ProductName,
 ProductSubcategoryName
FROM
 DimProduct
INNER JOIN
 DimProductSubcategory
ON
 DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

--------------------------------------------------------------

--Atividade 2

SELECT
 *
FROM
 DimProductSubcategory
LEFT JOIN
 DimProductCategory
ON
 DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

--------------------------------------------------------------

--Atividade 3

SELECT
 StoreKey,
 StoreName,
 EmployeeCount,
 ContinentName,
 RegionCountryName
FROM
 DimStore
LEFT JOIN
 DimGeography
ON
 DimStore.GeographyKey = DimGeography.GeographyKey

--------------------------------------------------------------

--Atividade 4

SELECT 
 ProductKey,
 ProductName,
 BrandName,
 ColorName,
 ProductCategoryDescription
FROM
 DimProduct
LEFT JOIN
 DimProductSubcategory
ON
 DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
LEFT JOIN
 DimProductCategory
ON
 DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey

--------------------------------------------------------------

--Atividade 5

SELECT
 StrategyPlanKey,
 DateKey,
 AccountName,
 Amount
FROM
 FactStrategyPlan
INNER JOIN
 DimAccount
ON
 FactStrategyPlan.AccountKey = DimAccount.AccountKey

--------------------------------------------------------------

--Atividade 6

SELECT 
 StrategyPlanKey,
 DateKey,
 ScenarioName,
 Amount
FROM
 FactStrategyPlan
INNER JOIN
 DimScenario
ON
 FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey

--------------------------------------------------------------

--Atividade 7

SELECT
 *
FROM
 DimProductSubcategory
LEFT JOIN
 DimProduct
ON
 DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
WHERE
 DimProduct.ProductKey IS NULL

--------------------------------------------------------------

--Atividade 8

SELECT DISTINCT
 BrandName,
 ChannelName
FROM
 DimChannel
INNER JOIN
 FactSales
ON
 FactSales.ChannelKey = DimChannel.ChannelKey
INNER JOIN
 DimProduct
ON
 FactSales.ProductKey = DimProduct.ProductKey
WHERE
 BrandName IN ('Contoso', 'Fabrikam', 'Litware');

--Versão Correta
SELECT
 DISTINCT
  DimProduct.BrandName,
  DimChannel.ChannelName
FROM
 DimProduct 
CROSS JOIN
 DimChannel
WHERE
 BrandName IN ('Contoso', 'Fabrikam', 'Litware')

--------------------------------------------------------------

--Atividade 9

SELECT TOP (1000)
 OnlineSalesKey,
 DateKey,
 PromotionName,
 SalesAmount
FROM
 FactOnlineSales
INNER JOIN
 DimPromotion
ON
 FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE
 PromotionName <> 'No Discount'
ORDER BY
 DateKey ASC

--------------------------------------------------------------

--Atividade 10

SELECT
 *
FROM
 FactSales
INNER JOIN
 DimChannel
ON
 FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN
 DimStore
ON
 FactSales.StoreKey = DimStore.StoreKey
INNER JOIN
 DimProduct
ON
 FactSales.ProductKey = DimProduct.ProductKey
ORDER BY
 SalesAmount DESC
