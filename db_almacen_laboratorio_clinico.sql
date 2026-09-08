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


# CREAMOS LA TABLA Producto_Proveedor (relacion N:M entre Producto y Proveedor)
CREATE TABLE Producto_Proveedor (
  productoID    VARCHAR(8) NOT NULL,
  proveedorID   VARCHAR(8) NOT NULL,

  PRIMARY KEY (productoID, proveedorID),
  CONSTRAINT fk_prodprov_producto  FOREIGN KEY (productoID)  REFERENCES Producto (productoID),
  CONSTRAINT fk_prodprov_proveedor FOREIGN KEY (proveedorID) REFERENCES Proveedor (proveedorID)
);


## CREANDO LA TABLA Movimiento (relacion "registra" entre Usuario y Producto, con atributos propios)
CREATE TABLE Movimiento (
  movimientoID       INT AUTO_INCREMENT PRIMARY KEY,
  productoID         VARCHAR(8)  NOT NULL,
  usuarioID          VARCHAR(8)  NOT NULL,
  tipoMovimiento     VARCHAR(10) NOT NULL,
  cantidad           INT         NOT NULL,
  fechaMovimiento    DATE        NOT NULL,

  CONSTRAINT fk_movimiento_producto FOREIGN KEY (productoID) REFERENCES Producto (productoID),
  CONSTRAINT fk_movimiento_usuario  FOREIGN KEY (usuarioID)  REFERENCES Usuario (usuarioID)
);