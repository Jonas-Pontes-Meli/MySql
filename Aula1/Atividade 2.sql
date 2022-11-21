create database db_produtos;
use db_produtos;
create table produtos(id int auto_increment not null ,nome varchar(100),valor float,categoria varchar(50),matricula int (6),primary key(id));
insert into produtos(id,nome,valor,categoria,matricula)values(null,'tenis nike',2000.0,'calçados',000123);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'casaco adidas',495.0,'rupas',000124);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'boné okley',200.0,'acessórios',000125);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'relógio oriente',1800.0,'acessórios',000126);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'camisa seleção brasileira',300.0,'roupas',000127);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'calça cargo',600.0,'roupas',000127);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'jaqueta jeans',550.0,'roupas',000127);
insert into produtos(id,nome,valor,categoria,matricula)values(null,'gorro algodão',100.0,'roupas',000127);

select * from produtos where valor > 500.0;

select * from produtos where valor < 500.0;

update produtos set valor = 112.0 where id = 1;
