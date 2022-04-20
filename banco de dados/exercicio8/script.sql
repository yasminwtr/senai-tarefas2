-- apagando o banco de dados caso exista
drop database if exists exercicio8;

-- criando a base de dados
create database exercicio8;

-- conectando na base de dados
use exercicio8;

-- criando tabela
create table eleitor( 
 idEleitor int not null auto_increment
 , nome VARCHAR(45)
 , dataNascimento DATE
 , sexo VARCHAR(45)
 , email VARCHAR(45)
 , cidade VARCHAR(45)
 , estado VARCHAR(45)
 , enderecoCompleto VARCHAR(45)
 , cep VARCHAR(45)
 , bairro VARCHAR(45)
 , telefone_1 VARCHAR(15)
 , telefone_2 VARCHAR(15)
 , telefone_3 VARCHAR(15)
 , primary key (idEleitor)
 );