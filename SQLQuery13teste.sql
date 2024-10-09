--Quest�o 1

SELECT
SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM FactSales

SELECT
SUM(DiscountQuantity) AS 'Quantidade Devolvida'
FROM FactSales


--Quest�o 2

SELECT
AVG(YearlyIncome) AS 'M�dia Salarial Anual'
FROM DimCustomer
WHERE Occupation = 'Professional'


--Quest�o 3

--Loja com mais funcion�rios

SELECT TOP(1)
StoreName,
EmployeeCount
FROM DimStore
ORDER BY EmployeeCount DESC

SELECT
MAX(EmployeeCount) AS 'Qtd. Funcion�rio'
FROM DimStore

--Loja com menos funcion�rios

SELECT TOP(1)
StoreName,
EmployeeCount
FROM DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC

SELECT
MIN(EmployeeCount) AS 'Qtd. Funcion�rio'
FROM DimStore


--Quest�o 4

--Mulheres

SELECT
COUNT(EmployeeKey) AS 'Qtd. Mulheres'
FROM DimEmployee
WHERE Gender = 'F' AND EndDate IS NULL

SELECT TOP(1)
FirstName,
EmailAddress,
HireDate
FROM DimEmployee
WHERE Gender = 'F'AND EndDate IS NULL
ORDER BY HireDate

--Homens

SELECT
COUNT(EmployeeKey) AS 'Qtd. Homens'
FROM DimEmployee
WHERE Gender = 'M' AND EndDate IS NULL

SELECT TOP(1)
FirstName,
EmailAddress,
HireDate
FROM DimEmployee
WHERE Gender = 'M'AND EndDate IS NULL
ORDER BY HireDate

--Quest�o 5

SELECT
COUNT(DISTINCT ColorName) AS 'Qtd. Cores',
COUNT(DISTINCT BrandName) AS 'Qtd. Marcas',
COUNT(DISTINCT ClassName) AS 'Qtd. Classes de Produto'
FROM DimProduct