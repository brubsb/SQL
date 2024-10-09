--Questão 1

SELECT
SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM FactSales

SELECT
SUM(DiscountQuantity) AS 'Quantidade Devolvida'
FROM FactSales


--Questão 2

SELECT
AVG(YearlyIncome) AS 'Média Salarial Anual'
FROM DimCustomer
WHERE Occupation = 'Professional'


--Questão 3

--Loja com mais funcionários

SELECT TOP(1)
StoreName,
EmployeeCount
FROM DimStore
ORDER BY EmployeeCount DESC

SELECT
MAX(EmployeeCount) AS 'Qtd. Funcionário'
FROM DimStore

--Loja com menos funcionários

SELECT TOP(1)
StoreName,
EmployeeCount
FROM DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC

SELECT
MIN(EmployeeCount) AS 'Qtd. Funcionário'
FROM DimStore


--Questão 4

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

--Questão 5

SELECT
COUNT(DISTINCT ColorName) AS 'Qtd. Cores',
COUNT(DISTINCT BrandName) AS 'Qtd. Marcas',
COUNT(DISTINCT ClassName) AS 'Qtd. Classes de Produto'
FROM DimProduct