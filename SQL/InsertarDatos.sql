use libreria; 

# Agregar datos a las tablas
/*insert into autor (codigo, nombre, apellido, email, nacionalidad) 
values 
(1513, "Gabriel", "Garcia Marquez", "gabo@gmail.com", "Colombiana"),
(1418, "Joanne", "Rowling", "jk@gmail.com", "Inglesa"),
(9120, "Jorge", "Isaac", "isaac@gmail.com", "Colombiana"),
(4481, "Orson", "Scott", "orson@gmail.com", "Estadounidense"); 


insert into editorial (Nombre, Email) 
values 
("Planeta", "planeta@gmail.com"),
("NovoPrint", "novo@gmail.com");*/

insert into libro (ISBN, titulo, precio, autorCod, editorialId) 
values 
("AB12", "Juegos de Ender", 75000, 4481, 2),
("CT30", "Harry Potter", 60000, 1418, 2),
("100Z", "Cien Años de Soledad", 80000, 1513, 1),
("657V", "La maria", 95000, 9120, 1);



