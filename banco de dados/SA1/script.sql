-- apagando a base de dados caso exista
drop database if exists exercicioSA1;

-- criando a base de dados
create database exercicioSA1;

-- conectando na base de dados
use exercicioSA1;

-- criando as tabelas
create table cliente(
idCliente int not null auto_increment,
nome varchar(45),
email varchar(45),
telefone char(11),
senha varchar(45),
dataNascimento date,
primary key (idCliente)
);

create table trabalhador(
idTrabalhador int not null auto_increment,
nome varchar(45),
email varchar(45),
telefone char(11),
senha varchar(45),
dataNascimento date,
cep char(8),
cidade varchar(45),
bairro varchar(45),
estado char(2),
tipoServico varchar(45),
descricao varchar(75),
primary key (idTrabalhador)
);

create table contratar(
idCliente int not null,
idTrabalhador int not null,
primary key (idCliente, idTrabalhador),
foreign key (idCliente) references cliente (idCliente),
foreign key (idTrabalhador) references trabalhador (idTrabalhador)
);



