set sql_safe_updates = 0;
DROP DATABASE IF EXISTS DBALUNO;
CREATE DATABASE DBALUNO;
USE DBALUNO;

CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(20) NOT NULL,
	SEXO ENUM ('M', 'F'),
	IDADE int,
	CIDADE VARCHAR(20)
);


-- 1.	Crie os comandos SQL para inserir os dados informados na tabela 1.

INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ANDERSON', 17, 'M','PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CESAR', 21, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DANIEL', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('DIEGO', 19, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('EDUARDO', 20, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('GABRIEL', 19, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOAO', 18, 'M', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LEONARDO', 19, 'M', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('LUCAS', 20, 'M', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('PRISCILA', 19, 'F', 'PALHOÇA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('RENATA', 21, 'F', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARIA', 22, 'F', 'BLUMENAU');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TANIA', 19, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('CARLOS', 22, 'M', 'TUBARAO');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOSE', 19, 'M', 'PALHOCA');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('MARISA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('AMANDA', 20, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('JOANA', 19, 'F', NULL);
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('ALICE', 21, 'F', 'SAO JOSE');
INSERT INTO ALUNO (NOME, IDADE, SEXO, CIDADE)VALUES('TADEU', 18, 'M', 'TUBARAO');

-- questão 1:
select * from ALUNO where SEXO = 'M';

-- questão 2:
select * from ALUNO where IDADE = 19;

-- questão 3:
select * from ALUNO where NOME like 'D%';

-- questão 4:
select * from ALUNO where IDADE in(20, 21, 22);

-- questão 5:
select * from ALUNO where CIDADE is null;

-- questão 6:
select * from ALUNO where CIDADE = 'BLUMENAU';

-- questão 7:
select * from ALUNO where IDADE <> 19;

-- questão 8:
select * from ALUNO where NOME like '%Ri%';

-- questão 9:
select * from ALUNO where (CIDADE = 'SAO JOSE' and SEXO = 'M' and IDADE < 20);

-- questão 10:
select * from ALUNO where (SEXO = 'F' and IDADE > 20) or (SEXO = 'M' and IDADE > 17);

-- questão 11:
select * from ALUNO where (NOME like '%a%' and NOME like '%r%');

-- questão 12:
select NOME, IDADE from ALUNO where SEXO = 'F';

-- questão 13:
select IDALUNO, NOME from ALUNO where CIDADE = 'BLUMENAU';

-- questão 14:
select NOME, CIDADE from ALUNO where IDADE < 18;

-- questão 15:
select NOME, CIDADE from ALUNO where (CIDADE <> 'PALHOCA' and IDADE between 15 and 18);

-- questão 16:
select CIDADE from ALUNO where CIDADE is not null;

-- questão 17:
select NOME from ALUNO where (IDADE = 18 and CIDADE = 'PALHOCA') or (IDADE = 17 and CIDADE = 'SAO JOSE');

-- questão 18:
select NOME from ALUNO where (SEXO = 'M' and CIDADE = 'TUBARAO' and IDADE between 18 and 25);

-- questão 23:
update ALUNO set IDADE = 20 where NOME = 'JOSE';

-- questão 24:
update ALUNO set IDADE = 21 where NOME in('TADEU', 'CESAR', 'MARISA');

-- questão 25:
update ALUNO set NOME = 'LUIZ', IDADE = 22, SEXO = 'M' where IDALUNO = 12;

-- questão 26:
update ALUNO set CIDADE = null where IDADE > 24;

-- questão 27:
delete from ALUNO where CIDADE is null;

-- questão 28:
delete from ALUNO where (CIDADE = 'TUBARAO' and SEXO = 'M' and IDADE > 15);

-- questão 29:
delete from ALUNO where (NOME in('TADEU', 'ALICE', 'MARIA') and IDADE = 19);

-- questão 30:
delete from ALUNO where (SEXO = 'M' and IDADE < 18) or (SEXO = 'F' and IDADE < 21);