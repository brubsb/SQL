--Quest�o 1

SELECT 
    p.ProductKey, 
    p.ProductName, 
    ps.ProductSubcategoryKey, 
    ps.ProductSubcategoryName
FROM DimProduct p
INNER JOIN DimProductSubcategory ps 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey;


--Quest�o 2

SELECT 
    ps.ProductSubcategoryKey, 
    ps.ProductSubcategoryName, 
    ps.ProductCategoryKey, 
    pc.ProductCategoryName
FROM DimProductSubcategory ps
LEFT JOIN DimProductCategory pc 
ON ps.ProductCategoryKey = pc.ProductCategoryKey;


--Quest�o 3

SELECT 
    s.StoreKey, 
    s.StoreName, 
    s.EmployeeCount, 
    g.ContinentName, 
    g.RegionCountryName
FROM DimStore s
LEFT JOIN DimGeography g 
ON s.GeographyKey = g.GeographyKey;


--Quest�o 4

SELECT 
    p.ProductKey, 
    p.ProductName, 
    ps.ProductSubcategoryName, 
    pc.ProductCategoryName, 
    pc.ProductCategoryDescription
FROM DimProduct p
LEFT JOIN DimProductSubcategory ps 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN DimProductCategory pc 
ON ps.ProductCategoryKey = pc.ProductCategoryKey;


--Quest�o 5

SELECT TOP(100) *
FROM FactStrategyPlan;

SELECT 
    fsp.StrategyPlanKey, 
    fsp.DateKey, 
    da.AccountName, 
    fsp.Amount
FROM FactStrategyPlan fsp
INNER JOIN DimAccount da 
ON fsp.AccountKey = da.AccountKey;


--Quest�o 6

SELECT 
    fsp.StrategyPlanKey, 
    fsp.DateKey, 
    ds.ScenarioName, 
    fsp.Amount
FROM FactStrategyPlan fsp
INNER JOIN DimScenario ds 
ON fsp.ScenarioKey = ds.ScenarioKey;


--Quest�o 7

SELECT 
    ps.ProductSubcategoryKey, 
    ps.ProductSubcategoryName
FROM DimProductSubcategory ps
LEFT JOIN DimProduct p 
ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
WHERE p.ProductKey IS NULL;


--Quest�o 8

SELECT
BrandName,
DimChannel.ChannelName
FROM DimProduct
INNER JOIN FactSales
ON FactSales.ProductKey = DimProduct.Productkey
INNER JOIN DimChannel
ON DimChannel.ChannelKey = FactSales.ChannelKey


--Quest�o 09

SELECT 
OnlineSalesKey,
DateKey,
PromotionName,
SalesAmount	
FROM FactOnlineSales
INNER JOIN DimPromotion
ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC


--Quest�o 10

SELECT 
FactSales.SalesKey,
DimChannel.ChannelName,
DimStore.StoreName,
DimProduct.ProductName,
FactSales.SalesAmount
FROM FactSales
INNER JOIN DimChannel
ON FactSales.channelKey = DimChannel.ChannelKey
INNER JOIN DimStore
ON FactSales.StoreKey = DimStore.StoreKey
INNER JOIN DimProduct
ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY FactSales.SalesAmount DESC