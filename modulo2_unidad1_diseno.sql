-- =========================================================
-- TABLA: clientes
-- =========================================================
Create table clientes(

    -- INT: numero entero, mas que suficiente para un ID.
    -- IDENTITY(1,1): SQL Server genera el numero solo, empieza en 1
    -- y suma de a 1 por cada cliente nuevo. No hace falta que lo carguemos nosotros.
    -- PRIMARY KEY: identifica a cada cliente de forma unica.
    id_cliente int not null identity (1,1) primary key,

    -- VARCHAR(100): texto de largo variable. Un nombre no necesita
    -- largo fijo (como CHAR) porque desperdiciaria espacio.
    -- 100 caracteres alcanza para nombres largos con margen de sobra.
    nombre varchar(100) not null,

    -- TEXT: se eligio para texto largo tipo "biografia" del cliente,
    -- donde no sabemos de antemano cuanto puede llegar a escribir.
    -- (Nota: en versiones modernas de SQL Server se recomienda usar
    -- VARCHAR(MAX) en vez de TEXT, ya que TEXT esta en desuso)
    perfil_bio text not null,

    -- DATE: solo necesitamos guardar el dia en que se registro,
    -- no la hora exacta, por eso no usamos DATETIME.
    fecha_registro date not null
);

-- =========================================================
-- TABLA: productos
-- =========================================================
create table productos(

    -- Mismo criterio que en clientes: ID numerico autoincremental
    -- que actua como clave primaria unica de cada producto.
    id_producto int not null identity (1,1) primary key,

    -- VARCHAR(255): la descripcion del producto puede ser mas larga
    -- que un nombre, por eso le damos mas margen (255) que al nombre
    -- de clientes (100).
    descripcion varchar(255) not null,

    -- DECIMAL(10,2): tipo pensado para dinero. A diferencia de FLOAT,
    -- no tiene errores de redondeo, algo clave cuando se trata de precios.
    -- (10,2) permite hasta 8 digitos enteros y 2 decimales (los centavos).
    precio decimal(10, 2) not null,

    -- BIT: tipo pensado justamente para datos de si/no (1 = activo,
    -- 0 = inactivo). Ocupa muchisimo menos espacio que un texto y
    -- representa mejor la idea de "esta o no esta a la venta".
    -- DEFAULT 1: si en algun momento se inserta un producto sin
    -- especificar este valor, va a quedar activo por defecto.
    esta_activo bit not null default 1
);
