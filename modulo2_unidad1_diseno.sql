
Create table clientes(
id_cliente int not null identity (1,1) primary key,-- INT numero entero, mas que suficiente para un ID, IDENTITY(1,1): SQL Server genera el numero solo, empieza en 1 y suma de a 1 por cada cliente nuevo. No hace falta que lo carguemos nosotros.
nombre varchar(100) not null,--VARCHAR(100): texto de largo variable. utilizas los caracteres justos para un nombre y no ocupar mas espacio.
perfil_bio text not null,--TEXT se eligio para texto largo tipo "biografia" del cliente donde no sabemos de antemano cuanto puede llegar a escribir.
fecha_registro date not null--DATE: solo necesitamos guardar el dia en que se registro
);

create table productos(
id_producto int not null identity (1,1) primary key,--INT numero entero, mas que suficiente para un ID, IDENTITY(1,1): SQL Server genera el numero solo, empieza en 1 y suma de a 1 por cada cliente nuevo. No hace falta que lo carguemos nosotros.
descripcion varchar(255) not null,--VARCHAR(255): la descripcion del producto puede ser mas larga que un nombre, por eso le damos mas margen.
precio decimal(10, 2) not null,--DECIMAL(10,2): tipo pensado para dinero A diferencia de FLOAT, no tiene errores de redondeo, algo clave cuando se trata de precios.
esta_activo bit not null default 1--BIT: tipo pensado justamente para datos de si/no (1 = activo, 0 = inactivo). Ocupa muchisimo menos espacio que un texto y representa mejor la idea de "esta o no esta a la venta".
);


