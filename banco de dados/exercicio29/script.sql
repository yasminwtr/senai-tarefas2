DROP DATABASE IF EXISTS DBELEICAO;
CREATE DATABASE DBELEICAO;
USE DBELEICAO;

CREATE TABLE PARTIDO(
	IDPARTIDO INT PRIMARY KEY,
	NOME VARCHAR(255),
	SIGLA VARCHAR(10)
);

CREATE TABLE CANDIDATO(
	IDCANDIDADTO INT NOT NULL,
	IDPARTIDO INT, 
	NOME VARCHAR(255),
	RUA VARCHAR(100),
	CEP VARCHAR(8),
	CIDADE VARCHAR(100),
	ESTADO CHAR(2),
	FOREIGN KEY (IDPARTIDO) REFERENCES PARTIDO(IDPARTIDO)
);

CREATE TABLE FUNCIONARIO (
	FUNCIONARIO INT PRIMARY KEY,
	IDPARTIDO INT NOT NULL,
	DESCRICAO VARCHAR (100)
);

CREATE TABLE USUARIO (
  LOGIN VARCHAR(100),
  SENHA VARCHAR(255),
  EMAIL VARCHAR(100)
);

CREATE TABLE SETOR(
	IDSETOR INT NOT NULL,
	NOME VARCHAR(100)
);

CREATE TABLE FUNCAO(
	DESCRICAO VARCHAR(100)
);

CREATE TABLE PARTICIPA(
	IDFUNCAO INT,
	IDUSUARIO INT
);

CREATE TABLE VOTAR(
	IDELEICAO INT PRIMARY KEY,
	IDUSUARIO INT,
	IDCANDIDATO INT,
	DT_VOTO DATETIME
);

CREATE TABLE ELEICAO (
	IDELEICAO INT NOT NULL,
	TITULO VARCHAR(100),
	DT_INICIO DATETIME,
	DT_FIM DATETIME,
	PRIMARY KEY (IDELEICAO)
);


-- correção do banco de dados
drop table CANDIDATO;
drop table PARTIDO;
drop table USUARIO;
drop table SETOR;
drop table FUNCAO;

create table DEPARTAMENTO (
	IDDEPARTAMENTO int not null,
	NOME varchar(100),
	primary key (IDDEPARTAMENTO)
);

create table cargo (
	IDCARGO int not null,
    DESCRICAO varchar(100),
    primary key (IDCARGO)
);

create table chapa (
	IDCHAPA int not null,
    IDELEICAO int not null,
    NOME varchar(100),
    primary key (IDCHAPA),
    foreign key (IDELEICAO) references ELEICAO (IDELEICAO)
);

alter table FUNCIONARIO
	drop column DESCRICAO,
	drop column IDPARTIDO,
    drop FUNCIONARIO,
	add column NOME varchar(100),
	add column CPF char(11),
	add column SENHA varchar(45),
    add column IDFUNCIONARIO int not null,
    add primary key (IDFUNCIONARIO),
	add column IDDEPARTAMENTO int not null,
	add foreign key (IDDEPARTAMENTO) references DEPARTAMENTO (IDDEPARTAMENTO);
    
alter table VOTAR
	drop column IDELEICAO,
	drop column IDUSUARIO,
	drop column IDCANDIDATO,
	drop column DT_VOTO,
	add column DT_VOTO int,
	add column IDELEICAO int not null,
	add column IDFUNCIONARIO int not null,
	add column IDCHAPA int not null,
	add foreign key (IDELEICAO) references ELEICAO (IDELEICAO),
	add foreign key (IDFUNCIONARIO) references FUNCIONARIO (IDFUNCIONARIO),
	add foreign key (IDCHAPA) references CHAPA (IDCHAPA);

alter table PARTICIPA
	drop column IDFUNCAO,
	drop column IDUSUARIO,
	add column IDFUNCIONARIO int not null,
	add column IDCHAPA int not null,
	add column IDCARGO int not null,
    add primary key (IDFUNCIONARIO, IDCHAPA),
	add foreign key (IDFUNCIONARIO) references FUNCIONARIO (IDFUNCIONARIO),
	add foreign key (IDCHAPA) references CHAPA (IDCHAPA),
	add foreign key (IDCARGO) references CARGO (IDCARGO);