--Quest�o 1

--Etapa A

--SELECT *
--FROM DimProduct

--Aquantidade de produtos est� correta (2.517).


--Etapa B

--SELECT *
--FROM DimCustomer

--O n�mero de clientes reduziu, no momento existem 18.869 clientes.



--Quest�o 2

--Etapa A

--SELECT CustomerKey, FirstName, EmailAddress, BirthDate
--FROM DimCustomer


--Etapa B

--SELECT
--CustomerKey AS 'ID do Cliente',
--FirstName AS Nome,
--EmailAddress AS Email,
--BirthDate AS 'Data de Nascimento'
--From DimCustomer



--Quest�o 3

--Etapa A

--SELECT TOP(100) *
--FROM DimCustomer


--Etapa B

--SELECT TOP(20) PERCENT *
--FROM DimCustomer


--Etapa C

--SELECT TOP(100) FirstName, EmailAddress, BirthDate
--FROM DimCustomer


--Etapa D

--SELECT
--FirstName AS Nome,
--EmailAddress AS Email,
--BirthDate AS 'Data de Nascimento'
--From DimCustomer



--Quest�o 4 

--SELECT Manufacturer
--FROM DimProduct
--SELECT
--Manufacturer AS Fornecedor
--FROM DimProduct



--Quest�o 5

--SELECT DISTINCT ProductKey
--FROM FactSales

--2.516 (Produtos vendidos)


--SELECT DISTINCT ProductName
--FROM DimProduct

--2.517 (Produtos existentes)


--1 produto nao foi vendido