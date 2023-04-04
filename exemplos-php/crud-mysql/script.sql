-- Comandos de SQL no MySQL
--  Criar uma base de dados, comando executado apenas 1x
CREATE DATABASE myDB;

-- Antes de fazer outras alterações é necessário estar dentro de uma Base de Dados
-- Nacessário clicar na menu da direita no banco de dados criado myDB

-- criar uma tabela para gravar pessoas
-- nome e email

CREATE TABLE pessoa(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	email VARCHAR(100)
);

-- comando para gravar um NOVO registro na tabela
INSERT INTO pessoa(nome, email) VALUES('luiz felipe','luiz@gmail.com');