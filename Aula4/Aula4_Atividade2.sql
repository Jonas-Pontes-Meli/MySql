drop database db_pizzaria_legal;
create database db_pizzaria_legal;
use db_pizzaria_legal;
create table  tb_categorias(id int not null auto_increment,borda varchar(100),tipo varchar(100), primary key(id));
create table  tb_pizzas(
id int not null auto_increment,
nome varchar(100),
sabor varchar(100),
valor decimal(8,2),
delivery bool,
categorias_id int,
primary key(id),
 FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id));
 insert into tb_categorias (id,borda,tipo) values(null,"catupiri","tradicional");
 insert into tb_categorias (id,borda,tipo) values(null,"cheda","tradicional");
 insert into tb_categorias (id,borda,tipo) values(null,"molho picante","mexicana");
 insert into tb_categorias (id,borda,tipo) values(null,"ralapenhos","mexicana");
 insert into tb_categorias (id,borda,tipo) values(null,"chocolate","doce");

insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"Mexicana apimentada","mista",37.00,true,3);
insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"romeu e julieta","chocolate com goiabada",55.00,true,5);
insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"mista carnes","carne de sol ",60.00,true,2);
insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"portuguesa","queijo",40.00,true,2);
insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"Mista","queijo e calabresa",60.00,true,1);
insert into tb_pizzas (id,nome,sabor,valor,delivery,categorias_id) values (null,"pizza de tacos","tacos",67.00,false,4);
select * from tb_pizzas where valor > 45.00;
select * from tb_pizzas where valor between 50.00 and 100.00;


select * from tb_pizzas where nome like ("%M%");
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id ;
select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id and tb_categorias.tipo = "doce" ;

