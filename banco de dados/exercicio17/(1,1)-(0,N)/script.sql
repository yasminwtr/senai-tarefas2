-- apagando a base de dados caso exista
drop database if exists exercicio17;

-- criando a base de dados
create database exercicio17;

-- conectando na base de dados
use exercicio17;

-- criando as tabelas
create table empresa(
idEmpresa int not null auto_increment,
nome varchar(45),
login varchar(45),
primary key (idEmpresa)
);

create table pontoColeta(
idPontoColeta int not null auto_increment,
idEmpresa int,
telefone char(11),
lixoAceito varchar(75),
cep char(8),
rua varchar(45),
estado char(2),
cidade varchar(45),
numero int,
primary key (idPontoColeta),
foreign key (idEmpresa) references empresa (idEmpresa)
);
