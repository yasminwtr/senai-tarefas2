-- apagando a base de dados caso exista
drop database if exists exercicio14;

-- criando a base de dados
create database exercicio14;

-- conectando na base de dados
use exercicio14;

-- criando as tabelas
create table usuario(
idUsuario int not null auto_increment,
nome varchar(45),
login varchar(45),
senha varchar(45),
dataCadastro date, 
primary key (idUsuario)
);

create table video(
idProduto int not null auto_increment,
titulo varchar(45),
categoria varchar(45),
dataPublicacao date, 
primary key (idVideo)
);

create table acessar(
idUsuario int not null,
idVideo int not null,
primary key (idUsuario, idVideo),
foreign key (idUsuario) references usuario (idUsuario),
foreign key (idVideo) references video (idVideo)
);
