# create database libreria; # Crea la base de datos 
drop database libreria; 
create database libreria; 
Use libreria; # para pararnos en la base de datos que usamos
create table Autor(
	Codigo int primary key, 
    Nombre varchar(255) not null,
    Apellido varchar(255), 
    Email varchar(255),
    Nacionalidad varchar(255)
);
create table Editorial(
	Id int primary key auto_increment, 
    Nombre varchar(255) not null,
    Email varchar(255)
); 
create table Libro(
	ISBN varchar(255) primary key, 
    titulo varchar(255) not null,
    precio int not null,
    autorCod int not null, 
    editorialId int not null,  
    foreign key (autorCod) references Autor(Codigo), # Para definir la llave foranea
    foreign key (editorialId) references Editorial(Id)
); 


