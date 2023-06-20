CREATE DATABASE empresa_xpto;

USE empresa_xpto;

CREATE TABLE funcionarios (
id INT AUTO_INCREMENT,
nome VARCHAR(60),
sobrenome VARCHAR(60),
salario DECIMAL (10,2),
primary key (id)
);
 drop table funcionarios;
 
 
 LOAD DATA INFILE 'C:/programData/MySQL/MySQL Server 8.0/uploads/funcionarios.csv'
 INTO TABLE funcionarios
 FIELDS TERMINATED BY ','
 LINES TERMINATED BY '\n'
 IGNORE 1 LINES 
(nome, sobrenome, salario) set id = null;

select * from funcionarios;

select * from funcionarios where salario <1238.11;

select nome, sobrenome  from funcionarios order by  salario limit 5;

select nome, sobrenome from funcionarios order by salario desc limit 5;

select * from funcionarios 
where nome = "gil" or nome = "carlos" and salario >15.000;


select * from funcionarios 
where sobrenome = "benn" or sobrenome = "ramet";

select * from funcionarios 
WHERE (SOBRENOME = "BENN"OR SOBRENOME = "RAMET") AND SALARIO < 5000;

select * from funcionarios 
WHERE salario BETWEEN 5000 AND 10000;

select sum(salario) as soma_salarios from funcionarios;

select avg(salario) as media_salarios from funcionarios;


select count(*) as total_funcionarios
from funcionarios;

select max(salario) as maior_salario
from funcionarios;

select min(salario) as menor_salario
from funcionarios;

select count(*) as total 
from funcionarios where salario>15000









