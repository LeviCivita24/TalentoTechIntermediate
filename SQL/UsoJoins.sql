use libreria; 

select * from libro; 
select * from autor; 

# Join con dos tablas
select libro.titulo, autor.nombre from libro inner join autor On libro.autorCod=autor.Codigo; 

# Join con tres tablas
select libro.titulo, autor.nombre, editorial.nombre from libro inner join autor On libro.autorCod=autor.Codigo inner join editorial On libro.editorialId = editorial.Id ; 

# Haciendo uso de concat
select libro.titulo, concat(autor.nombre, " ", autor.apellido) AS "Autor", editorial.nombre from libro inner join autor On libro.autorCod=autor.Codigo inner join editorial On libro.editorialId = editorial.Id ; 

select libro.titulo, libro.precio, concat(autor.nombre, " ", autor.apellido) AS "Autor", editorial.nombre from libro left join autor On libro.autorCod=autor.Codigo left join editorial On libro.editorialId = editorial.Id; 

select libro.titulo, libro.precio, concat(autor.nombre, " ", autor.apellido) AS "Autor", editorial.nombre from libro right join autor On libro.autorCod=autor.Codigo right join editorial On libro.editorialId = editorial.Id; 

select libro.titulo, libro.precio, concat(autor.nombre, " ", autor.apellido) AS "Autor", editorial.nombre from libro cross join autor On libro.autorCod=autor.Codigo cross join editorial On libro.editorialId = editorial.Id; 

select sum(precio) AS "Total", editorial.Nombre AS "Editorial" from libro inner join editorial On libro.editorialId = editorial.Id group by editorialId order by Total; 

# Libros por autor dada su nacionalidad
select count(ISBN) AS "Total", Nacionalidad from autor inner join libro On libro.autorCod=autor.Codigo group by Nacionalidad order by total; 

# Selecionar datos diferentes 
select distinct nacionalidad from autor; 