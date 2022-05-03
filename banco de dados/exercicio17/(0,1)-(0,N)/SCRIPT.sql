drop database if exists exercicio17;
 
 create database exercicio17;
 
 use exercicio17;
 
 create table funcionario(
	id_funcionario int  not null auto_increment,
    nome varchar(100),
     primary key(id_funcionario)
);
 
 create table computador (
	id_computador int not null,
    id_funcionario int,
    modelo varchar(45),
    primary key (id_computador),
    foreign key (id_funcionario) references funcionario (id_funcionario)
 );
 