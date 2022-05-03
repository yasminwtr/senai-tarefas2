-- apagando a base de dados caso exista
drop database if exists exercicio17;

-- criando a base de dados
create database exercicio17;

-- conectando na base de dados
use exercicio17;

-- criando as tabelas
create table departamento(
idDepartamento int not null auto_increment,
nome varchar(45),
responsavelDepartamento varchar(45),
primary key (idDepartamento)
);

create table funcionario(
idFuncionario int not null auto_increment,
idDepartamento int,
nome varchar(45),
dataContratacao date,
primary key (idFuncionario),
foreign key (idDepartamento) references departamento (idDepartamento)
);