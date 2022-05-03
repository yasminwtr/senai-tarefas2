drop database if exists exercicio17;
 
 create database exercicio17;
 
 use exercicio17;
 
 create table paciente (
	id_paciente int  not null,
	idade int,
    nome varchar(100),
    ficha_medica varchar(45),
     primary key(id_paciente)
);

create table medico (
	id_medico int not null,
    id_paciente int,
    primary key (id_medico),
    foreign key (id_paciente) references paciente (id_paciente)
);