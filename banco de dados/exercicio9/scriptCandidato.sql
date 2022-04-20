-- apagando o banco de dados caso exista
drop database if exists exercicio9;

-- criando a base de dados
create database exercicio9;

-- conectando na base de dados
use exercicio9;

-- criando tabela
create table candidato( 
 idCandidato int not null auto_increment
 , nome VARCHAR(45)
 , email VARCHAR(45)
 , sexo CHAR(1)
 , senha VARCHAR(45)
 , telefone_1 VARCHAR(15)
 , telefone_2 VARCHAR(15)
 , telefone_3 VARCHAR(15)
 , primary key (idCandidato)
 );