use modulo_unidad1_diseño

CREATE TABLE Clientes(
ID_Clientes int not null identity (1,1) primary key,--Utilice INT para numeros enteros que es suficiente para un ID.
Nombre varchar(100) not null,-- utilice VARCHAR ya que puedo variar la cantidad de caracteres.
Perfil_bio text not null,-- utilice TEXT elegi este comando ya que no sabemos que tanto puede llegar a escribir.
Fecha_registro date not null-- Utilice DATE ya que solo necesitaba guardar el dia en que se registro, no era neceraria la hora exacta.
);

CREATE TABLE Productos(
ID_Producto int not null identity (1,1) primary key,--Utilice INT para numeros enteros que es suficiente para un ID.
Descripcion varchar(255) not null,--utilice VARCHAR ya que debia colocar un maximo de caracteres especifico.
Precio decimal(10, 2) not null,-- Utilice Decimal ya que es el comando perfecto para indicar precio y decignar la cantidad de decimales que pueda utilizar.
Esta_activo text not null -- Utilice TEXT por que pense que era mejor que poner numeros enteros (INT), pero pensandolo bien utilizar el comando Varchar(2) para utilizar ("si"o"no") que ocupa menos espacio me parece mejor opcion.
);
