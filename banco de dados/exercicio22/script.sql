-- apagando a base de dados caso exista
drop database if exists exercicio22;

-- criando a base de dados
create database exercicio22;

-- conectando na base de dados
use exercicio22;

-- criando as tabelas
create table cliente(
idCliente int not null auto_increment,
nome varchar(45),
dataNascimento date,
primary key (idCliente)
);

create table funcionario(
idFuncionario int not null auto_increment,
nome varchar(45),
dataNascimento date,
primary key (idFuncionario)
);

create table filial(
idFilial int not null auto_increment,
idCliente int,
idFuncionario int,
nome varchar(45),
cep char(8),
estado char(2),
cidade varchar(45),
primary key (idFilial),
foreign key (idCliente) references cliente (idCliente),
foreign key (idFuncionario) references funcionario (idFuncionario)
);

create table projeto(
idProjeto int not null auto_increment,
idCliente int,
idFuncionario int,
nome varchar(45),
dataInicio date,
primary key (idProjeto),
foreign key (idCliente) references cliente (idCliente),
foreign key (idFuncionario) references funcionario (idFuncionario)
);



