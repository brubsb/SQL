--Questão 1

DECLARE @valor1 INT = 10;
DECLARE @valor2 INT = 5;
DECLARE @valor3 INT = 34;
DECLARE @valor4 INT = 7;

DECLARE @soma INT;
DECLARE @subtracao INT;
DECLARE @multiplicacao INT;
DECLARE @divisao DECIMAL(10, 2);

SET @soma = @valor1 + @valor2;
SET @subtracao = @valor3 - @valor4;
SET @multiplicacao = @valor1 * @valor4;
SET @divisao = ROUND(CAST(@valor3 AS DECIMAL(10, 2)) / @valor4, 2);

SELECT @soma AS Soma,
       @subtracao AS Subtracao,
       @multiplicacao AS Multiplicacao,
       @divisao AS Divisao;



--Questão 2

DECLARE @produto NVARCHAR(50) = 'Celular';
DECLARE @quantidade INT = 12;  
DECLARE @preco DECIMAL(10, 2) = 9.99;   
DECLARE @faturamento DECIMAL(10, 2);   

SET @faturamento = @quantidade * @preco;

SELECT @produto AS Produto,
       @quantidade AS Quantidade,
       @preco AS Preco,
       @faturamento AS Faturamento;



--Questão 3

DECLARE @nome VARCHAR(50);
DECLARE @data_nascimento DATE;
DECLARE @num_pets INT;

SET @nome = 'André';
SET @data_nascimento = '1998-02-10';
SET @num_pets = 2;

SELECT 'Meu nome é ' + @nome + 
       ', nasci em ' + FORMAT(@data_nascimento, 'dd/MM/yyyy') + 
       ' e tenho ' + CAST(@num_pets AS VARCHAR) + ' pets.';



--Questão 4

DECLARE @nome_das_lojas NVARCHAR(MAX);

SELECT @nome_das_lojas = STRING_AGG(StoreName, ', ')
FROM DimStore
WHERE Year(CloseDate) = 2008;

PRINT 'As lojas fechadas no ano de 2008 foram: ' + @nome_das_lojas;



--Questão 5

DECLARE @subcategoria NVARCHAR(50);
SET @subcategoria = 'Lamps';

SELECT p.*
FROM DimProduct p
JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
WHERE ps.ProductSubcategoryName = @subcategoria;