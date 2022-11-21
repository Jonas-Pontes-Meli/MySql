drop database db_cidade_das_carnes;
create database db_cidade_das_carnes;
use db_cidade_das_carnes;
create table  tb_categorias(id int not null auto_increment,nome varchar(100),tipo varchar(100), primary key(id));
create table  tb_produtos(
id int not null auto_increment,
nome varchar(100),
valor decimal(8,2),
delivery bool,
categorias_id int,
primary key(id),
 FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id));
 insert into tb_categorias (id,nome,tipo) values(null,"assar de brasa","de pimeira");
 insert into tb_categorias (id,nome,tipo) values(null,"para assar de panela","de primeira");
 insert into tb_categorias (id,nome,tipo) values(null,"bife","de primeira");
 insert into tb_categorias (id,nome,tipo) values(null,"sopa","de segunda");
 insert into tb_categorias (id,nome,tipo) values(null,"moida","de segunda");

insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"contra filé",37.00,true,1);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"coxão mole",37.00,true,3);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"bistéca",35.00,true,1);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"capa de filé",37.00,true,1);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"picanha",70.00,true,1);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"paulista",57.00,true,2);
insert into tb_produtos (id,nome,valor,delivery,categorias_id) values (null,"acém",49.00,true,3);
select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 50.00 and 150.00;


select * from tb_produtos where nome like ("%c%");
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id ;
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id and tb_categorias.tipo = "de primeira" ;

