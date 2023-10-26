create database libray;
use libray;

create table editoras(
		id_editora int,
        nome varchar(45),
        cnpj char(14),
        primary key(id_editora)
);

create table livros(
		id_livro int,
        titulo varchar(45),
        lancamento int,
        id_editora int,
        primary key(id_livro),
        foreign key (id_editora) references editoras(id_editora)
);

insert into editoras (id_editora,nome,cnpj)
values (1,"Intrinseca","12345671234876");
insert into editoras (id_editora,nome,cnpj)
values (2,"Atlas","61080370000766");
insert into editoras (id_editora,nome,cnpj)
values (3,"Grupo Companhia das Letras","55789390000112");

insert into livros(id_livro, titulo, lancamento, id_editora) 
values (100, "Uma Breve historia do tempo",1988,1);
select*from livros;
insert into livros(id_livro, titulo, lancamento, id_editora) 
values (101, "Fobia e Manias",2023,1);
insert into livros(id_livro, titulo, lancamento, id_editora) 
values (102, "Trader ou Investidor",2017,1);
insert into livros(id_livro, titulo, lancamento, id_editora) 
values (103, "Administração",2022,2);
insert into livros(id_livro, titulo, lancamento, id_editora) 
values (104, "Gestao de Cultura e pessoas",2021,2);
insert into livros(id_livro, titulo, lancamento, id_editora) 
values (105, "1984",1949,3);
select*from livros where id_editora = "1";
select*from livros where id_editora = "2"; #logitech












        