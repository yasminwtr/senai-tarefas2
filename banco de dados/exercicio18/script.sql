drop database if exists exercicio18;

create database exercicio18;

use exercicio18;

CREATE TABLE DEPARTAMENTO (
ID_DEPARTAMENTO INT NOT NULL AUTO_INCREMENT,
ID_FUNCIONARIO INT,
NOME VARCHAR (45),
DATA_ADMISSAO DATE,
TELEFONE VARCHAR (9),
PRIMARY KEY (ID_DEPARTAMENTO),
FOREIGN KEY (ID_DEPARTAMENTO_FUNCIONARIO) REFERENCES DEPARTAMENTO (ID_DEPARTAMENTO)
);