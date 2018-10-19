create database exa;
use exa;
create table usuario(
idusuario int primary key auto_increment,
usuario varchar(20),
contraseña varchar(20),
correo varchar(20),
namer varchar(20),
P varchar(20),
M varchar(20),
tel varchar(20),
escuela varchar(20),
materia varchar(20),
deporte varchar(20),
idrol varchar(20)
);
create table rol(
idrol int primary key auto_increment,
rol varchar(30)
);
insert into usuario (usuario, contraseña, correo, namer, P, M, tel, escuela, materia, deporte) 
values('Kernit', '12345', 'kemeaster@gmail.com', 'kemry', 'cardenas', 'guardado', '5564521878', 'Bátiz', 'integral', 'box');

