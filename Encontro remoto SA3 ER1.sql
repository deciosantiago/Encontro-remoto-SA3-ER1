
--Criar banco de dados

CREATE DATABASE SA3ER1 
GO

--Banco a ser utilizado nas instruções senguites

USE SA3ER1

GO


--Criando tabea de usuarios e suas respectivas colunas

CREATE TABLE usuarios

(

Id INT PRIMARY KEY IDENTITY,
Nome VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE NOT NULL,
Senha VARCHAR(50) NOT NULL

)


--Inserindo dados nas colunas

INSERT INTO usuarios VALUES ('Decio Santiago','thenthaculos@gmail.com', 1234) 
INSERT INTO usuarios VALUES ('Rogerio Santiago','rogerio.sb@gmail.com', 1234) 
--coletando dados da tabela

SELECT * FROM usuarios 


--coleta de dados e converte para HASH o tipo de criptografia utilizada na coluna destinada a senha com filtro por id de usuario

SELECT email, HASHBYTES('MD2', senha) FROM usuarios
SELECT email, HASHBYTES('MD4', senha) FROM usuarios
SELECT email, HASHBYTES('MD5', senha) FROM usuarios
SELECT email, HASHBYTES('SHA', senha) FROM usuarios
SELECT email, HASHBYTES('SHA1', senha) FROM usuarios
SELECT email, HASHBYTES('SHA2_256', senha) FROM usuarios where id= 2
SELECT email, HASHBYTES('SHA2_512', senha) FROM usuarios where id= 2