-- apagando a base de dados caso exista
drop database if exists exercicio17;

-- criando a base de dados
create database exercicio17;

-- conectando na base de dados
use exercicio17;

-- criando as tabelas
create table curso(
idCurso int not null auto_increment,
nome varchar(45),
tipo varchar(25),
sala varchar(10),
primary key (idCurso)
);

create table pessoa(
idPessoa int not null auto_increment,
nome varchar(45),
cep char(8),
rua varchar(45),
estado char(2),
cidade varchar(45),
numero int,
primary key (idPessoa)
);

create table cadastrar(
idCurso int not null,
idPessoa int not null,
primary key (idCurso, idB),
foreign key (idCurso) references curso (idCurso),
foreign key (idPessoa) references pessoa (idPessoa)
);