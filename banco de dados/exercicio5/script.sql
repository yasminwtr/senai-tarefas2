-- apagando o banco de dados caso exista
drop database if exists exercicio5;

-- criando a base de dados
create database exercicio5;

-- conectando na base de dados
use exercicio5;

-- criando tabela
create table veiculo( 
 idVeiculo int not null auto_increment
 , marca VARCHAR(45)
 , modelo VARCHAR(45)
 , anoFabricacao INT
 , anoModelo INT
 , placa VARCHAR(45)
 , cor VARCHAR(45)
 , numeroChassi VARCHAR(45)
 , primary key (idVeiculo)
 );