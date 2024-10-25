use libreria; 
# Read o Consultar


/*show tables; # muestra las tablas de la base de datos
describe editorial; # describe las caracteristicas de cada uno de los campos de la tabla
show columns from libro; # muestra las columnas de una tabla
select * from editorial; # Muestra toda la informacion de la tabla
select * from libro; # Muestra toda la informacion de la tabla*/

# Si quiero consultar todo lo que hay en una tabla
/*select * from editorial; 
select * from libro, editorial, autor; # genera duplicidad de datos - combinaciones

# Seleccionar datos de una tabla
select ISBN, precio from libro; 

# seleciona el promedio de los precios de los libros
select avg(precio) from libro; 

select * from editorial; 

# Extraer un registro 
select * from libro where ISBN="100Z"; 

# Extraer un registro
select * from libro where precio>=80000;  
*/

# Consultas sobre datos numéricos

/* Comparaciones con operadores logicos
		= 
        >
        <
        <= 
        >=
        <> # diferente
*/
/*select * from autor; 
select * from autor where Codigo<>1513; 
select * from libro where Precio=60000; 

select max(Precio) from libro;   
select min(Precio) from libro; 
select sum(Precio) from libro; 
select count(ISBN) from libro; */

/* Consultas mas Avanzadas*/

select * from autor; 
select * from editorial; 
select * from libro; 

/*# Quiero saber el nombre del libro más costoso
select titulo from libro where precio = (select max(precio) from libro); 
# Quiero saber el nombre del libro más costoso y ademas el precio
select titulo, precio from libro where precio = (select max(precio) from libro); */

/* CONSULTAS SOBRE DATOS DE TEXTO*/

# Quiero extraer los autores cuya nacionalidad es colombiana
# la ventaj de usar el like es por el % para completar texto
/*select Nombre from autor where Nacionalidad like "Col%"; 
select Nombre from autor where Nacionalidad like "%ol%"; */

# Con condicionales
/*select * from autor where nombre like "j%" and apellido not like "%n%";
select * from autor where nombre like "j%" and apellido not like "%i%"; 
select * from autor where nombre like "j%" and apellido not regexp '^.*i.*'; 
select * from autor where nombre like "%o%" and apellido not like "%s%"; */

/*ALIAS 
	Se utilizan para imprimir en pantalla más no editan nada de la base de datos
    se utiliza la palabra reservada AS
*/
/*select email AS "Correo", nombre AS "Editorial" from editorial;  

# Concatenacion
select concat(nombre, " ", apellido) AS "Autor" from autor; 
# Concatenacion con datos numericos
select concat(precio, " ", autorCod) AS "NewCode" from libro;*/


/*
	CONSULTAS AUN MAS AVANZADAS
*/
# consultas en multiples tablas
select titulo, nombre, apellido, precio from libro, autor where libro.autorCod = autor.Codigo; 

select titulo, concat(nombre, " ", apellido) AS "Autor", precio from libro, autor where libro.autorCod = autor.Codigo;

 
