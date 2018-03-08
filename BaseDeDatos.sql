/*Borra la base de datos si existe*/
DROP DATABASE IF EXISTS vuelos;


/*Creamos la base de datos*/
CREATE DATABASE vuelos CHARACTER SET Latin1 COLLATE latin1_spanish_ci;

/*Escogemos nuestra base de datos*/
USE adt4_ejemplo2;

/*Cambiamos el nombre de la base de datos*/
ALTER DATABASE vuelos RENAME TO viajes;

/*Creamos la tabla de clientes*/
CREATE TABLE clientes(
	id		INT NOT NULL AUTO_INCREMENT,
	nombre 			VARCHAR(50),
	apellidos 		VARCHAR(50),
	direccion		VARCHAR(50),
	
	PRIMARY KEY(id)
);


/*Creamos la tabla de viajes*/
CREATE TABLE viajes(
	id		INT NOT NULL AUTO_INCREMENT,
	titulo 			VARCHAR(50),
	descripcion 		VARCHAR(150),
	codigoCliente		INT,
	PRIMARY KEY(id),
	FOREIGN KEY(codigoCliente) REFERENCES clientes(id)
);

