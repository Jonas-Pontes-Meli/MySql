drop database db_farmacia_bem_estar;
create database db_farmacia_bem_estar;
use db_farmacia_bem_estar;
create table  tb_categorias(id int not null auto_increment,nome varchar(100),tipo varchar(100), primary key(id));
create table  tb_produtos(
id int not null auto_increment,
nome varchar(100),
fabricante varchar(100),
valor decimal(8,2),
delivery bool,
categorias_id int,
primary key(id),
 FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id));
 insert into tb_categorias (id,nome,tipo) values(null,"vitamina","C");
 insert into tb_categorias (id,nome,tipo) values(null,"Antibiotico","tarja vermelha");
 insert into tb_categorias (id,nome,tipo) values(null,"analgésico","livre");
 insert into tb_categorias (id,nome,tipo) values(null,"antcépto","bocal");
 insert into tb_categorias (id,nome,tipo) values(null,"shanpoo","anti caspa");

insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"Medcasp","xxxxxx",37.00,true,5);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"sulfa","xxxxxx",37.00,true,2);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"dipirona","xxxxxx",37.00,true,3);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"enxaguante bocal","xxxxxx",37.00,true,4);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"besetacil","xxxxxx",15.00,true,3);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"vitaminaC","xxxxxx",11.00,true,1);
insert into tb_produtos (id,nome,fabricante,valor,delivery,categorias_id) values (null,"dicofenato","xxxxxx",5.00,true,3);
select * from tb_produtos where valor > 50.00;
select * from tb_produtos where valor between 5.00 and 60.00;


select * from tb_produtos where nome like ("%c%");
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id ;
select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id and tb_categorias.tipo = "livre" ;

