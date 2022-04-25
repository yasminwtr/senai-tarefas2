drop database if exists exercicio11;

create database exercicio11;

use exercicio11;

create table veiculo_renavam(
idVeiculo int not null auto_increment,
idRenavam int not null,
modelo varchar(45),
marca varchar(45),
anoFabricacao varchar(4), 
placa varchar(45),
data date,
estado char(2),
cidade varchar(45),
primary key (idVeiculo, idRenavam)
);