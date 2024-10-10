--Quest�o 1

--A

SELECT 
	ChannelKey, 
	SUM(SalesQuantity) AS 'Qtd. Vendas'
FROM FactSales
GROUP BY ChannelKey

--B

SELECT 
	StoreKey, 
    SUM(SalesQuantity) AS 'Qtd. Vendas', 
    SUM(ReturnQuantity) AS 'Qtd. Devolu��o'
FROM FactSales
GROUP BY StoreKey

--C

SELECT 
	ChannelKey, 
	SUM(SalesAmount) AS 'Valor das Vendas'
FROM FactSales
WHERE YEAR(DateKey) = 2007
GROUP BY ChannelKey


--Quest�o 2

SELECT TOP(10)
	ProductKey,
	SUM(SalesQuantity) AS 'Qtd. Vendas',
	SUM(SalesAmount) AS 'Valor das Vendas'
FROM FactSales
GROUP BY ProductKey
--HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesQuantity) DESC


--Quest�o 3

--A

SELECT TOP(1)
	CustomerKey,
	SUM(SalesQuantity) AS 'Qtd. Compras Online'
FROM FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC

--B

SELECT TOP(3)
	ProductKey,
	SUM(SalesQuantity) AS 'Qtd. Compras Online'
FROM FactOnlineSales
WHERE CustomerKey = 19037
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC


--Quest�o 4

--A

SELECT DISTINCT
	BrandName,
	COUNT(ProductKey) AS 'Qtd. Produtos'
FROM DimProduct
GROUP BY BrandName

--B

SELECT DISTINCT
	ClassName,
	AVG(UnitPrice) AS 'Pre�o Unit�rio'
FROM DimProduct
GROUP BY ClassName

--C

SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM DimProduct
GROUP BY ColorName


--Quest�o 5

SELECT
	StockTypeName,
	SUM(Weight) AS 'Peso Total da Marca Contoso'
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC


--Quest�o 6

SELECT
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Cores'
FROM DimProduct
GROUP BY BrandName


--Quest�o 7

SELECT
	Gender,
	COUNT(CustomerKey) AS 'Total de Clienes',
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender


--Quest�o 8

SELECT
	Education,
	COUNT(CustomerKey) AS 'Total de Clienes',
	AVG(YearlyIncome) AS 'M�dia Salarial'
FROM DimCustomer
GROUP BY Education


--Quest�o 9

SELECT
	DepartmentName,
	COUNT(EmployeeKey) AS 'Total de Funcion�rios'
FROM DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName


--Quest�o 10

SELECT
	Title,
	SUM(VacationHours) AS 'Total de Horas de F�rias'
FROM DimEmployee
WHERE Gender = 'F' AND DepartmentName IN ('Production', 'Marketing', 'Engineering', 'Finance') AND HireDate BETWEEN '01/01/1999' AND '31/12/2000'
GROUP BY Title