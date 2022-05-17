-- apagando a base de dados caso exista
drop database if exists exercicio25;

-- criando a base de dados
create database exercicio25;

-- conectando na base de dados
use exercicio25;

-- criando as tabelas
create table lista(
idLista int not null auto_increment,
produto varchar(45),
primary key (idLista)
);

create table mensagem(
idMensagem int not null auto_increment,
dataHoraEnvio datetime,
dataHoraLeitura datetime,
assunto varchar(75),
primary key (idMensagem)
);

create table aviso(
idAviso int not null auto_increment,
dataPublicacao date,
horaPublicacao time,
assunto varchar(75),
primary key (idAviso)
);

create table patrocinador(
idPatrocinador int not null auto_increment,
nome varchar(45),
telefone char(11),
primary key (idPatrocinador)
);

create table participante(
idParticipante int not null auto_increment,
idLista int not null,
nome varchar(45),
email varchar(45),
whatsapp char(11),
primary key (idParticipante),
foreign key (idLista) references lista (idLista)
);

create table sorteio(
idSorteio int not null auto_increment,
idParticipante int not null,
data date,
hora time,
primary key (idSorteio),
foreign key (idParticipante) references participante (idParticipante)
);

create table enviar(
idParticipante int not null,
idMensagem int not null,
primary key (idParticipante, idMensagem),
foreign key (idParticipante) references participante (idParticipante),
foreign key (idMensagem) references mensagem (idMensagem)
);

create table receber(
idParticipante int not null,
idMensagem int not null,
primary key (idParticipante, idMensagem),
foreign key (idParticipante) references participante (idParticipante),
foreign key (idMensagem) references mensagem (idMensagem)
);

create table postar(
idPatrocinador int not null,
idMensagem int not null,
primary key (idPatrocinador, idMensagem),
foreign key (idPatrocinador) references patrocinador (idPatrocinador),
foreign key (idMensagem) references mensagem (idMensagem)
);

create table publicar(
idPatrocinador int not null,
idAviso int not null,
primary key (idPatrocinador, idAviso),
foreign key (idPatrocinador) references patrocinador (idPatrocinador),
foreign key (idAviso) references aviso (idAviso)
);



