-- apagando o banco de dados caso exista
drop database if exists exercicio9A;

-- criando a base de dados
create database exercicio9A;

-- conectando na base de dados
use exercicio9A;

-- criando tabela
create table animal( 
 idAnimal int not null auto_increment
 , tipo ENUM('cão', 'gato')
 , porte VARCHAR(15)
 , sexo CHAR(1)
 , nome VARCHAR(45)
 , primary key (idAnimal)
 );