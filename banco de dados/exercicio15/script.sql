-- apagando a base de dados caso exista
drop database if exists exercicio15;

-- criando a base de dados
create database exercicio15;

-- conectando na base de dados
use exercicio15;

-- criando as tabelas
create table computador(
idComputador int not null auto_increment,
modelo varchar(45),
fabricante varchar(45),
numero int,
endereco varchar(45),
mascaraRede int, 
primary key (idComputador)
);

create table departamento(
idDepartamento int not null auto_increment,
idComputador int,
ramal int,
nomeResponsavel varchar(45),
nome varchar(45),
primary key (idDepartamento),
foreign key (idComputador) references computador (idComputador)
);
