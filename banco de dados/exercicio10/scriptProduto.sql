-- apagando o banco de dados caso exista
drop database if exists exercicio10P;

-- criando a base de dados
create database exercicio10P;

-- conectando na base de dados
use exercicio10P;

-- criando tabela
create table produto( 
 idProduto int not null auto_increment
 , nome varchar(45)
 , descricao varchar(150)
 , tipo enum('rede', 'tapete')
 , valor numeric(8, 2)
 , primary key (idProduto)
 );