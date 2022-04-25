drop database if exists exercicio12;

create database exercicio12;

use exercicio12;

create table pessoa(
idPessoa int not null auto_increment,
nome varchar(45),
dataNascimento date,
nomeMae varchar(45), 
nomePai varchar(45),
primary key (idPessoa)
);

create table CPF(
idCPF int not null auto_increment,
idPessoa int,
numero char(11),
dataSolicitacao date,
localEmissao varchar(45),
dataEmissao date,
primary key (idCPF),
foreign key (idPessoa) references pessoa (idPessoa)
);
