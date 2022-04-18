-- apagando o banco de dados caso exista
drop database if exists exercicio7;

-- criando a base de dados
create database exercicio7;

-- conectando na base de dados
use exercicio7;

-- criando tabela
create table aluno( 
 idAluno int not null auto_increment
 , nome VARCHAR(45)
 , dataNascimento DATE
 , DDDCel VARCHAR(15)
 , telefoneCel VARCHAR(15)
 , DDDRes VARCHAR(15)
 , telefoneRes VARCHAR(15)
 , DDDCont VARCHAR(15)
 , telefoneCont VARCHAR(15)
 , nomeContato VARCHAR(45)
 , primary key (idAluno)
 );