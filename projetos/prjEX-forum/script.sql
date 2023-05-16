-- create table admin(
--     id int primary key auto_increment,
--     email varchar(200) unique,
--     senha varchar(200)
-- );

create table publicacao(
    id int primary key auto_increment,
    id_admin int,
    titulo varchar(100),
    descricao varchar(255)
);

create table comentario(
    id int primary key auto_increment,
    id_admin int,
    id_publicacao int,
    opniao varchar(255)
);