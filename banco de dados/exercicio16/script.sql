-- apagando a base de dados caso exista
drop database if exists exercicio16;

-- criando a base de dados
create database exercicio16;

-- conectando na base de dados
use exercicio16;

-- criando as tabelas
create table titular(
idTitular int not null auto_increment,
nome varchar(45),
CPF char(11),
primary key (idTitular)
);

create table dependente(
idDependente int not null auto_increment,
idTitular int,
nome varchar(45),
dataNascimento date,
primary key (idDependente),
foreign key (idTitular) references titular (idTitular)
);
