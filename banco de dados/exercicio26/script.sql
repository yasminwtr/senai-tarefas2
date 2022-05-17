-- apagando a base de dados caso exista
drop database if exists exercicio24;

-- criando a base de dados
create database exercicio24;

-- conectando na base de dados
use exercicio24;

-- criando as tabelas
create table cliente(
idCliente int not null auto_increment,
nome varchar(45),
email varchar(45),
telefone char(11),
primary key (idCliente)
);

create table produto(
idProduto int not null auto_increment,
nome varchar(45),
quantidade int,
primary key (idProduto)
);

create table evento(
idEvento int not null auto_increment,
cep char(8),
numero int,
cidade varchar(45),
estado char(2),
primary key (idEvento)
);

create table agendar(
idCliente int not null,
idEvento int not null,
primary key (idCliente, idEvento),
foreign key (idCliente) references cliente (idCliente),
foreign key (idEvento) references evento (idEvento)
);

create table escolher(
idProduto int not null,
idEvento int not null,
primary key (idProduto, idEvento),
foreign key (idProduto) references produto (idProduto),
foreign key (idEvento) references evento (idEvento)
);



