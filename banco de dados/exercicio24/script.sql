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
cpf char(11),
numeroCNH char(11),
complemento  varchar(25),
bairro varchar(45),
cidade varchar(45),
estado char(2),
cep char(8),
numero int,
rua varchar(45),
telefoneCelular char(9),
DDDCelular int,
telefoneResidencial char(9),
DDDResidencial int,
telefoneReferencia char(9),
DDDReferencia int,
primary key (idCliente)
);

create table opcional(
idOpcional int not null auto_increment,
direcaoHidraulica varchar(45),
travaEletrica varchar(45),
arCondicionado varchar(45),
primary key (idOpcional)
);

create table veiculo(
idVeiculo int not null auto_increment,
idOpcional int,
modelo varchar(45),
anoModelo int,
anoFabricacao int,
tipoCombustivel varchar(25),
marca varchar(45),
primary key (idVeiculo),
foreign key (idOpcional) references opcional (idOpcional)
);

create table locacao(
idLocacao int not null auto_increment,
idCliente int,
idVeiculo int,
dataHoraEntrega datetime,
kmEntrega int,
dataHoraLocacao datetime,
kmLocacao int,
primary key (idLocacao),
foreign key (idCliente) references cliente (idCliente),
foreign key (idVeiculo) references veiculo (idVeiculo)
);



