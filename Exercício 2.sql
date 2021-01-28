-- criar database
create database db_pizzaria_legal;

-- acesso ao db
use db_pizzaria_legal;

-- criação de tabela
create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(15) not null,
recheio_extra boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,recheio_extra) values ("Doce",true);
insert into tb_categoria (tipo,recheio_extra) values ("Salgada",true);
insert into tb_categoria (tipo,recheio_extra) values ("Doce",false);
insert into tb_categoria (tipo,recheio_extra) values ("Salgada",False);
insert into tb_categoria (tipo,recheio_extra) values ("Meio à meio",true);


select * from tb_categoria;

-- criacao de tabela
create table tb_pizza(
id bigint(5) auto_increment,
sabor_recheio varchar(30) not null,
preco float not null,
ativo boolean not null,
sabor_massa varchar(30) not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Calabresa",29.00,true,"Branca",1);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Mussarela",45.00,true,"Integral",2);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Frango",30.00,true,"Branca",3);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Romeu e Julieta",45.00,true,"Sem glúten",4);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Frango Catupiry",27.50,true,"Branca",5);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Carne Seca",37.00,true,"Branca",6);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Mussarela e Calabresa",45.00,true,"Integral",7);
insert into tb_pizza (sabor_recheio,preco,ativo,sabor_massa,categoria_id) values ("Chocolate",70.00,true,"Branca",8);

-- pizzas com preco maior que 45
select * from tb_pizza where preco > 45;

-- pizzas com preco entre 29 e 60
select * from tb_pizza where preco >= 29 and preco <= 60;

-- pizzas com a letra C
select * from tb_pizza where sabor LIKE "%C%";


-- Categorias + pizzas
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    
-- Somente pizzas doces 
select * from tb_pizza
	inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
    where tb_categoria.tipo = "Doce"
