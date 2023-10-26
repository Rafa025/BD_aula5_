create database estoque_senai;
use estoque_senai;

create table marcas(
	id_marca int,
    nome varchar(45),
    descricao varchar(45),
    primary key(id_marca)
);

drop table produtos;

create table produtos(
	id_produto int,
    nome varchar(45),
    preco double,
    id_marca int,
    primary key(id_produto),
    foreign key (id_marca) references marcas (id_marca)
);
insert into marcas (id_marca,nome,descricao)
values (1,"Eudora","Shampo para cachos");
insert into marcas (id_marca,nome,descricao)
values (2,"Logitech","Mouse Gamer");
insert into marcas (id_marca,nome,descricao)
values (3,"Apple","Celular");

insert into produtos(id_produto,nome,preco,id_marca)
values (100,"Eudora Siege", 69.70,1);
insert into produtos(id_produto,nome,preco,id_marca)
values (101,"G403", 139.99,2);
insert into produtos(id_produto,nome,preco,id_marca)
values (103," iPhone 15 pro", 10000,3);

delete from produtos where id_produto = "103";

select*from produtos where id_marca = "1";
select*from produtos where id_marca = "2";
select*from produtos where id_marca = "3";







    
