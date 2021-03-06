DROP DATABASE IF EXISTS EXERCICIO20;

CREATE DATABASE EXERCICIO20;

USE EXERCICIO20;

CREATE TABLE PESSOA(
TELEFONE CHAR (8),
ID_PESSOA INT NOT NULL,
PRIMARY KEY (ID_PESSOA)
);

CREATE TABLE PEDIDO(
ID_PEDIDO INT NOT NULL,
ID_PESSOA INT,
DATA_DO_PEDIDO DATE,
PRIMARY KEY (ID_PEDIDO),
FOREIGN KEY (ID_PESSOA) REFERENCES ENTIDADE_PESSOA (ID_PESSOA)
);