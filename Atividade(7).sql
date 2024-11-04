--EXERCICIO 1

--ETAPA A
CREATE DATABASE BD_Teste

--ETAPA B
DROP DATABASE BD_Teste

--ETAPA B
CREATE DATABASE Exercicios

----------------------------------------------------------------------------

--EXERCICIO 2

--TABELA 1

CREATE TABLE dCliente (
 ID_Cliente INT PRIMARY KEY,
 Nome_Cliente VARCHAR(100),
 Data_de_Nascimento DATETIME );

SELECT
 *
FROM
 dCliente

--TABELA 2

CREATE TABLE dGerente (
 ID_Gerente INT,
 Nome_Gerente VARCHAR(100),
 Data_de_Contratacao DATETIME,
 Salario FLOAT );

SELECT
 *
FROM
 dGerente

--Tabela 3

CREATE TABLE fContratos (
 ID_Contrato INT,
 Data_de_Assinatura DATETIME,
 ID_Cliente INT,
 ID_Gerente INT,
 Valor_do_Contrato FLOAT )

SELECT
 *
FROM
 fContratos

----------------------------------------------------------------------------

--EXERCICIO 3

--TABELA dCliente

INSERT INTO dCliente
VALUES 
 (1,'Andr� Martins','1989-12-02'),
 (2,'B�rbara Campos','1992-07-05'),
 (3,'Carol Freitas','1985-23-04'),
 (4,'Diego Cardoso','1994-11-10'),
 (5,'Eduardo Pererira','1988-09-11'),
 (6,'Fabiana Silva','1989-02-09'),
 (7,'Gustavo Barbosa','1993-27-06'),
 (8,'Helen Viana','1990-11-02');

--TABELA dGerente

INSERT INTO dGerente
VALUES
 (1,'Lucas Sampaio','2015-21-03',6700),
 (2,'Mariana Padilha','2011-10-01',9900),
 (3,'Nath�lia Santos','2018-03-10',7200),
 (4,'Ot�vio Costa','2017-18-04',11000);

--TABELA fContratos

INSERT INTO fContratos
VALUES 
 (1,'2019-12-01',8,1,23000),
 (2,'2019-10-02',3,2,15500),
 (3,'2019-07-03',7,2,6500),
 (4,'2019-15-03',1,3,3300),
 (5,'2019-21-03',5,4,11100),
 (6,'2019-23-03',4,2,5500),
 (7,'2019-28-03',9,3,55000),
 (8,'2019-04-04',2,1,31000),
 (9,'2019-05-04',10,4,3400),
 (10,'2019-05-04',6,2,9200);

----------------------------------------------------------------------------

--EXERCICIO 4

--INSERINDO NA TABELA CLIENTE

INSERT INTO dCliente
VALUES 
 (9,'Ra� Carvalho','2008-14-02')

--INSERINDO NA TABELA GERENTE

INSERT INTO dGerente
VALUES
 (5,'Ra� Carvalho','2024-25-10',100000)

--INSERINDO NA TABELA CONTRATOS

INSERT INTO fContratos
VALUES
 (11,'2024-25-10',9,5,100000)

----------------------------------------------------------------------------

--EXERCICIO 5

UPDATE
 fContratos
SET
 Data_de_Assinatura = '2019-17-03',
 ID_Gerente = 2,
 Valor_do_Contrato = 33500
WHERE
 ID_Contrato = 4

------------------------------------------------------------------------------------

--EXERCICIO 6

DELETE 
FROM
 fContratos
WHERE
 ID_Contrato = 4