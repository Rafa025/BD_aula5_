create database  entregas_express;
use  entregas_express;

create table paises(
	id_pais int,
    nome varchar(45),
    latitude varchar(45),
    longitude varchar(45),
    idioma varchar(65),
    primary key(id_pais)
);

create table estados(
	id_estado int,
    nome_es varchar(45),
    abreviacao varchar(45),
    id_pais int,
    primary key(id_estado),
    foreign key (id_pais) references paises(id_pais)
);

create table municipios(
	id_municipio int,
    nome varchar(45),
    id_estado int,
	foreign key (id_estado) references estados(id_estado)
);

insert into paises (id_pais,nome,latitude,longitude,idioma)
values (1,"Brasil","10° S 55°","30° N 31,38° N 9° ","Portugues Br");

insert into estados(id_estado,nome_es,abreviacao,id_pais)
values (102,"Minas Gerais", "MG",1);

insert into municipios(id_municipio,nome,id_estado)
values (204,"Belo Horizonte",102);
select*from pais where id_municipio = "";
select*from estados where id_estado = "102";

select*from paises;
select*from estados;
select*from municipios;