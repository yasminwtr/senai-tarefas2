-- apagando a base de dados caso exista
drop database if exists exercicio21;

-- criando a base de dados
create database exercicio21;

-- conectando na base de dados
use exercicio21;

-- criando as tabelas
create table criminoso(
idCriminoso int not null auto_increment,
nome varchar(45),
dataNascimento date,
primary key (idCriminoso)
);

create table vitima(
idVitima int not null auto_increment,
nome varchar(45),
dataNascimento date,
primary key (idVitima)
);

create table crime(
idCrime int not null auto_increment,
descricao varchar(45),
dataCrime date,
primary key (idCrime)
);

create table arma(
idArma int not null auto_increment,
tipo varchar(45),
numeroIdentificacao INT,
primary key (idArma)
);

create table atacar(
idCriminoso int not null,
idVitima int not null,
primary key (idCriminoso, idVitima),
foreign key (idCriminoso) references criminoso (idCriminoso),
foreign key (idVitima) references vitima (idVitima)
);

create table cometer(
idCriminoso int not null,
idCrime int not null,
primary key (idCriminoso, idCrime),
foreign key (idCriminoso) references criminoso (idCriminoso),
foreign key (idCrime) references crime (idCrime)
);

create table sofrer(
idCrime int not null,
idVitima int not null,
primary key (idCrime, idVitima),
foreign key (idCrime) references crime (idCrime),
foreign key (idVitima) references vitima (idVitima)
);

create table usar(
idCrime int not null,
idArma int not null,
primary key (idCrime, idArma),
foreign key (idCrime) references crime (idCrime),
foreign key (idArma) references arma (idArma)
);

