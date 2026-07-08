--Criando o banco de dados
CREATE DATABASE anafit; 

--Criando primeira tabela
CREATE TABLE cliente(
    cpf BIGINT PRIMARY KEY,
    primeironome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    datansc DATA NOT NULL,
    peso DECIMAL(5,2),
    altura FLOAT,
    email VARCHAR(100) UNIQUE NOT NULL
);

--Inserindo dado na tabela cliente
INSERT INTO cliente (
    cpf,
    primeironome,
    sobrenome,
    datansc,
    peso,
    altura,
    email
) VALUES
(12345678901, 'Ana', 'Silva', '1995-04-15', 62.50, 1.65, 'ana.silva@email.com'),
(23456789012, 'Bruno', 'Souza', '1990-08-22', 78.30, 1.80, 'bruno.souza@email.com');

--Read, lendo todos os dados cadastrados na tabela cliente

SELECT * FROM cliente;

--Lendo dados só de um coluna

--Selecionar um cliente pelo nome

SELECT *
FROM cliente
WHERE primeironome LIKE '%Ana%';


--Selecionando uma coluna de um cadastro específico
SELECT primeironome
FROM cliente
WHERE cpf = 12345678901;


--Update - alterando o pesos de um cliente específico
UPDATE cliente 
SET peso = 65.00
WHERE cpf = 12345678901;

--Cuidado com esse update - é um possível erro
UPDATE cliente
SET peso = 70.00;

--Delete - excluindo um dado específico da tabela

DELETE FROM cliente
WHERE cpf = 12345678901

--Deletando a tabela cliente
DROP TABLE cliente;

--Deletando o banco de dados - MUITO CUIDADO
DROP DATABASE anafit;

