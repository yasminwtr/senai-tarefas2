drop database if exists relacionamento1n;

create database relacionamento1n;

use relacionamento1n;

create table entidade_a(
idA int not null,
primary key (idA)
);

create table entidade_b(
idB int not null,
idA int,
primary key (idB),
foreign key (idA) references entidade_a (idA)
);