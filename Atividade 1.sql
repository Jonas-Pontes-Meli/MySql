create database db_rh;
use db_rh;
create table colaboradores (id int auto_increment not null ,nome varchar(100),salario float,cargo varchar(50),matricula int (6),primary key(id));
insert into colaboradores(id,nome,salario,cargo,matricula)values(null,'joão almeida',2000.0,'Mecânico',102030);
insert into colaboradores(id,nome,salario,cargo,matricula)values(null,'marcos aurélio',2233.0,'topografo',102031);
insert into colaboradores(id,nome,salario,cargo,matricula)values(null,'julius cesar',3000.0,'cartografo',102030);
insert into colaboradores(id,nome,salario,cargo,matricula)values(null,'augustos cesar',1800.0,'auxiliar',102030);
insert into colaboradores(id,nome,salario,cargo,matricula)values(null,'romulo cesar',2000.0,'auxiliar',102030);

select * from colaboradores where salario > 2000.0;

select * from colaboradores where salario < 2000.0;

update colaboradores set nome = 'remo' where id = 1;
