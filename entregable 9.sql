DROP DATABASE IF EXISTS producto_fabricante;
CREATE DATABASE producto_fabricante;
USE producto_fabricante;

CREATE TABLE fabricante(
codigo INT (10) not null primary key,
nombre varchar (100) not null
);
CREATE TABLE producto(
codigo INT(10) not null primary key,
nombre VARCHAR (100) not null, 
precio DOUBLE not null,
codigo_fabricante INT (10) not null,
FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

/*1. - Lista el nombre de todos los productos que hay en la tabla producto. */
select nombre from producto;

/*2. - Lista los nombres y los precios de todos los productos de la tabla producto.*/
select nombre, precio from producto;

/*3.- Lista todas las columnas de la tabla producto. */
select * from producto;

/*4.- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. */
select 
producto.nombre as producto,
producto.nombre as precio,
fabricante.nombre as fabricante
from producto, fabricante
where producto.codigo_fabricante = fabricante.codigo;

/*Subconsultas (En la cláusula WHERE) 
1.- Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN). */

Select *from producto where codigo_fabricante=
(select codigo from fabricante where nombre = 'Lenovo');

/*2.- Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN). */

Select *from producto
where precio = (select max(precio)
from producto
where codigo_fabricante =
(select codigo from fabricante where nombre = 'Lenovo'));


/*3.- Lista el nombre del producto más caro del fabricante Lenovo. */

Select * from producto
where precio = (select max(precio)
from producto
where codigo_fabricante =
(select codigo from fabricante where nombre = 'Lenovo'))
and codigo_fabricante = (select codigo from fabricante where nombre = 'Lenovo');
