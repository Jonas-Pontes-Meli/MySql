create database db_escola;
use db_escola;
create table alunos(id int auto_increment not null ,nome varchar(100),idade int(3),sexo varchar(50),nota float,primary key(id));
insert into alunos(id,nome,idade,sexo,nota)values(null,'joão guilherme',14,'masculino',8.5);
insert into alunos(id,nome,idade,sexo,nota)values(null,'marcos almeida',16,'masculino',7.5);
insert into alunos(id,nome,idade,sexo,nota)values(null,'patricia santos',13,'feminino',6.0);
insert into alunos(id,nome,idade,sexo,nota)values(null,'jennifer lopes',17,'feminino',9.5);
insert into alunos(id,nome,idade,sexo,nota)values(null,'paulo carlos',15,'masculino',5.5);
insert into alunos(id,nome,idade,sexo,nota)values(null,'amanda carla',16,'feminino',8.0);
insert into alunos(id,nome,idade,sexo,nota)values(null,'miguel santos',15,'masculino',5.0);
insert into alunos(id,nome,idade,sexo,nota)values(null,'adolfo solis',17,'masculino',7.0);

select * from alunos where nota > 7.0;

select * from alunos where nota < 7.0;


update alunos set nota = 6.5 where id = 3;
