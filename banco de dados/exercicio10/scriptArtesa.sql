-- apagando o banco de dados caso exista
drop database if exists exercicio10;

-- criando a base de dados
create database exercicio10;

-- conectando na base de dados
use exercicio10;

-- criando tabela
create table artesa( 
 idArtesa int not null auto_increment
 , nome VARCHAR(45)
 , email VARCHAR(45)
 , sexo CHAR(1)
 , senha VARCHAR(45)
 , celular VARCHAR(15)
 , rua VARCHAR(150)
 , numero INT
 , bairro VARCHAR(45)
 , cep VARCHAR(8)
 , cidade VARCHAR(45)
 , estado CHAR(2)
 , primary key (idArtesa)
 );