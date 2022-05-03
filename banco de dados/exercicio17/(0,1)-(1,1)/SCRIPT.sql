drop database if exists exercicio17;
 
 create database exercicio17;
 
 use exercicio17;
 
 create table conta_pessoa (
	id_pessoa int  not null,
    id_conta int  not null,
    nome varchar(100),
    idade int,
    sobrenome varchar(100),
    senha varchar(45),
    nome_usuario varchar (45),
    login varchar(45),
     primary key(id_pessoa, id_conta)
);