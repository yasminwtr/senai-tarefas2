drop database if exists relacionamento11;

create database relacionamento11;

use relacionamento11;

create table entidade_ab(
idA int not null,
idB int not null,
primary key (idA, idB)
);