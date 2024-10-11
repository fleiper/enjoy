CREATE DATABASE INJOIN3;
USE INJOIN3;

CREATE TABLE FUNC (
    COD INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50),
    ESPECIALIDADE VARCHAR(250)
);
select * from func;

CREATE TABLE DEPEN(
cod INT auto_increment primary key,
nome VARCHAR(50),
cod_func int ,
foreign key (cod_func) references FUNC (COD)
);

SELECT * FROM DEPEN;
SELECT * FROM FUNC;

insert into FUNC (nome,especialidade)
values ("josé","engenheiro"),
("João", "mestre das obras"),
("maria", "contabilista");

insert into DEPEN (nome,cod_func)
values ("pedro", 1),
("alice",1),
("luana",3);

select FUNC.NOME, DEPEN.NOME
from FUNC
inner join DEPEN
on FUNC.COD = DEPEN.COD_FUNC
WHERE FUNC.COD = 1;

SELECT FUNC.NOME, DEPEN.NOME
FROM FUNC
LEFT JOIN DEPEN
ON FUNC.COD = DEPEN.COD_FUNC;

SELECT FUNC.NOME, DEPEN.NOME
FROM FUNC
LEFT JOIN DEPEN
ON FUNC.COD = DEPEN.COD_FUNC
WHERE DEPEN.NOME is null;

SELECT FUNC.NOME, DEPEN.NOME
FROM FUNC
RIGHT JOIN DEPEN
ON FUNC.COD = DEPEN.COD_FUNC;



