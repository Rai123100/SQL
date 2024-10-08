--SELECT TOP (100)
--	StoreName,
--	EmployeeCount
--FROM DimStore
--ORDER BY EmployeeCount


--SELECT TOP (100)
--	StoreName,
--	EmployeeCount
--FROM DimStore
--ORDER BY EmployeeCount DESC


--SELECT TOP (100)
--	ProductName,
--	Weight,
--	UnitCost
--FROM DimProduct
--ORDER BY UnitCost DESC, Weight ASC


--SELECT *
--FROM DimProduct
--WHERE ProductName LIKE '%MP3%'


--SELECT *
--FROM DimProduct
--WHERE BrandName = 'Contoso' AND ColorName = 'Silver'


--SELECT *
--FROM DimProduct
--WHERE ColorName = 'Blue' OR ColorName = 'Silver' OR ColorName = 'Red' 


--SELECT *
--FROM DimProduct
--WHERE NOT ColorName ='Blue'


--SELECT *
--FROM DimProduct
--WHERE ColorName IN ('Blue', 'Black', 'Silver')


--SELECT *
--FROM DimProduct
--WHERE ColorName NOT IN ('Blue', 'Black', 'Silver')


--SELECT TOP (1000) *
--FROM FactSales
--WHERE SalesQuantity BETWEEN 10 AND 15


--SELECT *
--FROM DimCustomer
--WHERE FirstName IS NULL


--SELECT *
--FROM DimCustomer
--WHERE FirstName IS NOT NULL