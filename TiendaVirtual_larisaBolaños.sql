CREATE DATABASE TiendaVirtual_larisaBolaños

USE TiendaVirtual_larisaBolaños

CREATE TABLE USUARIO
(
	codigousuario_id int identity(1,1) primary key,
        nombre varchar(50) not null,
        clave varchar(50) NOT NULL,
        correoElectronico varchar(50),
        rol varchar(50) unique
	)
	GO
	CREATE TABLE ARTICULO
         (
	codigoarticulos_id int identity(1,1) primary key,
	precio float(50),
        categoria varchar(50),
        descripcion varchar(50),
        articulo int,
	CONSTRAINT fk_codigoarticulo foreign key (codigoarticulo) REFERENCES articulo (articulo_id)

	)
        GO
	CREATE TABLE factura
        (
	codigofactura_id int identity(1,1) primary key,
	fechatransaccion datetime,	
	codigoarticulo int,
	articulo varchar(50),
        precio float,
        montototal float,
        descuento float,
        impuesto float,
        subtotal float,
        codigousuario int,
	CONSTRAINT fk_codigoarticulo foreign key (codigoarticulo) REFERENCES articulo (articulo_id),
	CONSTRAINT fk_codigousuario foreign key (codigousuario) REFERENCES tecnicos (usuario_id)
	INNER JOIN usuarios ON usuarios.facturaid=factura.facturaid
        INNER JOIN codigoarticulos ON codigoarticulos.codigoarticuloid= codigoarticulo.codigoarticuloID   
)



	USE TiendaVirtual_larisaBolaños
insert into usuario values ('Jorge', 'j@gmail', '8888')
insert into usuario values ('Lupe', 'l@gmail', '8881')
insert into usuario values ('Roberto', 'r@gmail', '8882')

USE TiendaVirtual_larisaBolaños
insert into articulos values ('televisor', 'lg', 1)
insert into articulos values ('celular', 'huawei', 2)
insert into articulos values ('laptop', 'acer', 3)

USE TiendaVirtual_larisaBolaños
insert into factura values ('Juan', 'electronica')
insert into factura values ('Monica', 'electronica')
insert into factura values ('Rogelio', 'electronica')

update USUARIO
set clave = '1234'
where usuario_id = 2;
select * from usuario


USE TiendaVirtaul_larisaBolaños
CREATE PROCEDURE CONSULTARUSUARIO

	AS
		BEGIN
			SELECT * FROM usuario
		END

	EXEC CONSULTARUSUARIO

CREATE PROCEDURE CONSULTARarticulos
	AS
		BEGIN
			SELECT * FROM articulos
		END

	EXEC CONSULTARARTICULOS

CREATE PROCEDURE CONSULTARARTICULOS
	AS
		BEGIN
			SELECT * FROM ARTICULOS
		END

	EXEC CONSULTARARTICULOS


	CREATE PROCEDURE CONSULTARUSUARIO_FILTRO
	
	@CODIGO INT
	
	AS
		BEGIN
			SELECT * FROM usuarios WHERE usuario_id = @CODIGO
		END

	EXEC CONSULTARUSUARIO_FILTRO  1

	CREATE PROCEDURE CONSULTAREQUIPO_FILTRO
	
	@CODIGO INT
	
	AS
		BEGIN
			SELECT * FROM usuario WHERE factura_id = @CODIGO
		END

	EXEC CONSULTARUSUARIO_FILTRO  3

	CREATE PROCEDURE CONSULTARUSUARIO_FILTRO
	
	@CODIGO INT
	
	AS
		BEGIN
			SELECT * FROM USUARIO WHERE USUARIO_id = @CODIGO
		END

	EXEC CONSULTARUSUARIO_FILTRO  3

CREATE PROCEDURE INGRESAR_USUARIO

@NOMBRE varchar(50),
@CORREO_ELECTRONICO varchar(50),
@ROL varchar(50)
AS
	BEGIN
		INSERT INTO usuarios (nombre, correoElectronico,rol,clave) VALUES (@NOMBRE, @CORREO_ELECTRONICO, @rol,@clave)
	END

EXEC INGRESAR_USUARIO Juan, juan@hotmail, 8833

CREATE PROCEDURE INGRESAR_factura

@NOMBRE varchar(50),
@factura varchar(50)

AS
	BEGIN
		INSERT INTO articulos (precio,categoria,descripcion) VALUES (@PRECIO, @CATEGORIA,@DESCRIPCION)
	END

EXEC INGRESAR Juan, Electronica


	CREATE PROCEDURE INGRESAR_ARTICULOS
	@CATEGORIA_ID int,
	@descripcion varchar,
	@PRECIO FLOAT,

	AS
	BEGIN
		INSERT INTO FACTURA (codigoarticulo, fechatransaccion,precio,codigousuario,impuesto,codigousuario,subtotal,descuento,montototal) VALUES (@codigoarticulo, @fechatransaccion,@precio,@codigousuario,@impuesto,@codigousuario,@subtotal,@descuento,@montototal)
	END
