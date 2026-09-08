CREATE DATABASE almacen_laboratorio_clinico;
USE almacen_laboratorio_clinico;


/* CREAMOS LA TABLA Producto */
CREATE TABLE Producto (
  productoID       VARCHAR(8)   PRIMARY KEY NOT NULL,
  nombreProducto   VARCHAR(100) NOT NULL,
  unidadMedida     VARCHAR(20)  DEFAULT NULL,
  stockMinimo      INT          DEFAULT NULL
);


/* CREAMOS LA TABLA Proveedor */
CREATE TABLE Proveedor (
  proveedorID   VARCHAR(8)   PRIMARY KEY NOT NULL,
  razonSocial   VARCHAR(100) NOT NULL,
  ruc           VARCHAR(11)  DEFAULT NULL,
  telefono      VARCHAR(20)  DEFAULT NULL
);


/* CREAMOS LA TABLA Usuario */
CREATE TABLE Usuario (
  usuarioID       VARCHAR(8)   PRIMARY KEY NOT NULL,
  nombreUsuario   VARCHAR(100) NOT NULL,
  area            VARCHAR(50)  DEFAULT NULL
);