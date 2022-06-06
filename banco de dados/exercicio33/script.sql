DROP DATABASE IF EXISTS DBCOMERCIO;

CREATE DATABASE DBCOMERCIO;
USE DBCOMERCIO;

CREATE TABLE VENDAS (
	IDVENDA INT NOT NULL AUTO_INCREMENT,
	DT_VENDA DATE ,
	IDCLIENTE INT NOT NULL,
	NOME VARCHAR(45) ,
	TELEFONE VARCHAR(50) ,
	DTNASCIMENTO DATE ,
	IDPRODUTO INT NOT NULL,
	DESCRICAO VARCHAR(45) ,
	PRECO DECIMAL(8,2) ,
	QTDE INT ,
	TOTAL DECIMAL(8,2), 
	PRIMARY KEY (IDVENDA)
);

INSERT INTO VENDAS (DT_VENDA, IDCLIENTE, NOME, TELEFONE, DTNASCIMENTO, IDPRODUTO, DESCRICAO, PRECO, QTDE, TOTAL)
SELECT     
	DT_VENDA,
	IDCLIENTE,
	NOME,
	TELEFONE,
	DTNASCIMENTO,
    IDPRODUTO,
	DESCRICAO,
	PRECO,
	QTDE,
	PRECO * QTDE AS TOTAL 
FROM (
    
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA UNION 
SELECT DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 DAY) AS DT_VENDA ) AS VENDA,  
(
SELECT 01 AS IDCLIENTE, 'JOÃO' AS NOME, '1111-1111' AS TELEFONE, DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 YEAR) DTNASCIMENTO UNION 
SELECT 02 AS IDCLIENTE, 'MARIA' AS NOME, '2222-2222' AS TELEFONE, DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 YEAR) DTNASCIMENTO UNION 
SELECT 03 AS IDCLIENTE, 'ANTONIO' AS NOME, '3333-3333' AS TELEFONE, DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 YEAR) DTNASCIMENTO UNION 
SELECT 04 AS IDCLIENTE, 'ANA' AS NOME, '4444-4444' AS TELEFONE, DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 YEAR) DTNASCIMENTO UNION 
SELECT 05 AS IDCLIENTE, 'JOAQUINA' AS NOME, '5555-5555' AS TELEFONE, DATE_ADD(DATE(NOW()), INTERVAL RAND() * -100 YEAR) DTNASCIMENTO) AS CLIENTE,
(
SELECT 1 AS IDPRODUTO, 'TELEFONE' AS DESCRICAO, RAND() * 1000 AS PRECO UNION 
SELECT 2 AS IDPRODUTO, 'CALCULADORA' AS DESCRICAO, RAND() * 1000 AS PRECO UNION 
SELECT 3 AS IDPRODUTO, 'COMPUTADOR' AS DESCRICAO, RAND() * 1000 AS PRECO UNION 
SELECT 4 AS IDPRODUTO, 'FONE' AS DESCRICAO, RAND() * 1000 AS PRECO UNION 
SELECT 5 AS IDPRODUTO, 'BATERIA' AS DESCRICAO, RAND() * 1000 AS PRECO UNION 
SELECT 6 AS IDPRODUTO, 'TV' AS DESCRICAO, RAND() * 1000 AS PRECO) AS PRODUTO,

(SELECT ROUND(RAND() * 10, 0) + 1 AS QTDE UNION
SELECT ROUND(RAND() * 10, 0) + 1 AS QTDE UNION
SELECT ROUND(RAND() * 10, 0) + 1 AS QTDE UNION
SELECT ROUND(RAND() * 10, 0) + 1 AS QTDE UNION
SELECT ROUND(RAND() * 10, 0) + 1 AS QTDE ) AS QTDE
ORDER BY
	RAND();


SELECT * FROM VENDAS;

-- nova estrutura

-- criando table cliente
create table cliente (
idCliente int not null,
nome varchar(45),
telefone varchar(15),
dtNascimento date,
primary key (idCliente)
);

-- migrando os dados
insert into cliente(idCliente, nome, dtNascimento, telefone)
select distinct idCliente, nome, dtNascimento, telefone from vendas order by 1;

-- adicionando o auto_increment
alter table cliente
modify idCliente int not null auto_increment;

-- descobrindo o maior valor do IdCliente
select max(idCliente) from cliente;

-- ajustando o auto_increment da table para o maior valor encontrado
alter table cliente 
auto_increment = 5;

select * from cliente;


-- criando table produto
create table produto (
idProduto int not null,
descricao varchar(45),
preco decimal(8,2),
primary key (idProduto)
);

-- migrando os dados
insert into produto(idProduto, descricao, preco)
select distinct idProduto, descricao, preco from vendas order by 1;

-- adicionando o auto_increment
alter table produto
modify idProduto int not null auto_increment;

-- descobrindo o maior valor do idProduto
select max(idProduto) from produto;

-- ajustando o auto_increment da table para o maior valor encontrado
alter table produto 
auto_increment = 6;

select * from produto;


-- criando table venda
create table venda (
idVenda int not null,
idCliente int not null,
dt_venda date,
primary key (idVenda),
foreign key (idCliente) references cliente (idCliente)
);

-- migrando os dados
insert into venda(idVenda, idCliente, dt_venda)
select distinct idVenda, idCliente, dt_venda from vendas order by 1;

-- adicionando o auto_increment
alter table venda
modify idVenda int not null auto_increment;

-- descobrindo o maior valor do idProduto
select max(idVenda) from venda;

-- ajustando o auto_increment da table para o maior valor encontrado
alter table venda 
auto_increment = 1000;

select * from venda;


-- criando table vendaProduto
create table venda_produto (
idProduto int not null,
idVenda int not null,
qtde int,
primary key (idProduto, idVenda),
foreign key (idProduto) references produto (idProduto),
foreign key (idVenda) references venda (idVenda)
);

-- migrando os dados
insert into venda_produto(idProduto, idVenda, qtde)
select distinct idProduto, idVenda, qtde from vendas order by 1;

select * from venda_produto;