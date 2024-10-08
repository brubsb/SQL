--Questão 1

--SELECT TOP(100)
-- ProductKey,
-- SalesAmount
--FROM FactSales
--ORDER BY SalesAmount DESC


--Questão 2

--SELECT TOP(10)
-- ProductName,
-- Weight,
-- UnitPrice,
-- StyleID
--FROM DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, StyleID DESC


--Questão 3

--SELECT
-- ProductName AS 'Nome do Produto',
-- Weight AS 'Peso'
--FROM DimProduct
--WHERE Weight > 100
--ORDER BY Weight DESC


--Questão 4

--SELECT
-- StoreName AS 'Nome da Loja',
-- OpenDate AS 'Data de Abertura',
-- EmployeeCount AS 'Contagem de Funcionários',
-- Status
--FROM DimStore
--WHERE Status LIKE 'ON'


--Questão 5

--SELECT
-- ProductKey,
-- ProductName,
-- AvailableForSaleDate,
-- BrandName
--FROM DimProduct
--WHERE BrandName = 'Litware' AND AvailableForSaleDate = '15/03/2009'


--Questão 6

--a

--SELECT
-- StoreName,
-- Status
--FROM DimStore
--WHERE Status = 'OFF'

--b

--SELECT
-- StoreName,
-- CloseDate
--FROM DimStore
--WHERE CloseDate IS NOT NULL


--Questão 7

--Categoria 1

--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount BETWEEN 1 AND 20

--Categoria 2 

--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount BETWEEN 21 AND 50

--Categoria 3 

--SELECT
--StoreName,
--EmployeeCount
--FROM DimStore
--WHERE EmployeeCount >= 51



--Questão 8

--SELECT
--	ProductKey,
--	ProductName,
--	UnitPrice
--FROM DimProduct
--WHERE ProductName LIKE '%LCD%'



--Questão 9

--SELECT 
--	ProductKey,
--	ProductName,
--	BrandName,
--	ColorName
--FROM DimProduct
--WHERE BrandName IN ('Contoso', 'Litware', 'Fabrikam') AND ColorName IN ('Green', 'Orange', 'Black',
--'Silver', 'Pink')



--Questão 10

--SELECT
--	ProductKey,
--	ProductName,
--	BrandName,
--	UnitPrice,
--	ColorName
--FROM DimProduct
--WHERE BrandName = 'Contoso' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
--ORDER BY UnitPrice DESC