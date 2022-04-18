-- apagando o banco de dados caso exista
drop database if exists exercicio6;

-- criando a base de dados
create database exercicio6;

-- conectando na base de dados
use exercicio6;

-- criando tabela
create table aluno( 
 idAluno int not null auto_increment
 , nome VARCHAR(45)
 , idade INT
 , rua VARCHAR(45)
 , numero INT
 , bairro VARCHAR(45)
 , cidade VARCHAR(45)
 , estado VARCHAR(45)
 , cep INT
 , complemento VARCHAR(45)
 , primary key (idAluno)
 );