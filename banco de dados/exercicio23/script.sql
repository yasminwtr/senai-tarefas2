-- apagando a base de dados caso exista
drop database if exists exercicio23;

-- criando a base de dados
create database exercicio23;

-- conectando na base de dados
use exercicio23;

-- criando as tabelas
create table participante(
idParticipante int not null auto_increment,
nome varchar(45),
telefone char(11),
email varchar(45),
primary key (idParticipante)
);

create table nivel(
idNivel int not null auto_increment,
nome varchar(45),
valor int,
primary key (idNivel)
);

create table inscricao(
idInscricao int not null auto_increment,
idParticipante int,
data date,
hora time,
primary key (idInscricao),
foreign key (idParticipante) references participante (idParticipante)
);

create table oficina(
idOficina int not null auto_increment,
idInscricao int,
idNivel int,
nome varchar(45),
assunto varchar(100),
primary key (idOficina),
foreign key (idInscricao) references inscricao (idInscricao),
foreign key (idNivel) references nivel (idNivel)
);



