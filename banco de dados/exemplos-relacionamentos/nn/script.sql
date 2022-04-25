drop database if exists relacionamentonn;

create database relacionamentonn;

use relacionamentonn;

create table entidade_a(
idA int not null,
primary key (idA)
);

create table entidade_b(
idB int not null,
primary key (idB)
);

create table relacao(
idB int not null,
idA int not null,
primary key (idA, idB),
foreign key (idA) references entidade_a (idA),
foreign key (idB) references entidade_b (idB)
);