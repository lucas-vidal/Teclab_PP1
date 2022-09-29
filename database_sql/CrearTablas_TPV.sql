<<<<<<< HEAD
CREATE TABLE Stock (
CodigoArticulo INT NOT NULL PRIMARY KEY,
Marca VARCHAR(100) NOT NULL,
Descripcion TEXT NOT NULL,
Precio FLOAT NOT NULL,
Stock INT NOT NULL,
Unidad VARCHAR(100) NOT NULL,
);

CREATE TABLE Cliente (
DNI INT NOT NULL PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Apellido VARCHAR(100) NOT NULL,
);

CREATE TABLE ID_Ventas (
ID_Venta INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
FechaHora DATETIME NOT NULL,
DNI_Cliente INT,
);

CREATE TABLE Ventas (
ID_Venta INT NOT NULL CONSTRAINT FK_Ventas_ID_Ventas FOREIGN KEY REFERENCES ID_Ventas (ID_Venta),
CodigoArticulo INT NOT NULL,
Precio FLOAT NOT NULL,
Cantidad INT NOT NULL,
);

CREATE TABLE ID_Compras (
ID_Compra INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
FechaHora DATETIME NOT NULL,
Proveedor INT,
);

CREATE TABLE Compras (
ID_Compra INT NOT NULL CONSTRAINT FK_Compra_ID_Compra FOREIGN KEY REFERENCES ID_Compras (ID_Compra),
CodigoArticulo INT NOT NULL,
Precio FLOAT NOT NULL,
Cantidad INT NOT NULL,
=======
CREATE TABLE products (
code INT NOT NULL PRIMARY KEY,
brand VARCHAR(100),
description TEXT NOT NULL,
price INT NOT NULL,
quentity INT NOT NULL,
unit VARCHAR(100) NOT NULL,
);

CREATE TABLE customers (
dni INT NOT NULL PRIMARY KEY,
name VARCHAR(100) NOT NULL,
surname VARCHAR(100) NOT NULL,
);

CREATE TABLE suppliers (
id_supplier INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
supplier VARCHAR(100) NOT NULL,
address VARCHAR(100),
city VARCHAR(100),
phone VARCHAR(100) NOT NULL,
);

CREATE TABLE id_sales (
id_sale INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
data_time TIMESTAMP NOT NULL,
dni_customer INT,
);

CREATE TABLE sales (
id_sale INT NOT NULL CONSTRAINT FK_sales_id_sales FOREIGN KEY REFERENCES id_sales (id_sale),
code INT NOT NULL,
price INT NOT NULL,
quantity INT NOT NULL,
);

CREATE TABLE id_purchases (
id_purchase INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
data_time TIMESTAMP NOT NULL,
id_supplier INT,
);

CREATE TABLE purchases (
id_purchase INT NOT NULL CONSTRAINT FK_purchases_id_purchases FOREIGN KEY REFERENCES id_purchases (id_purchase),
code INT NOT NULL,
price INT NOT NULL,
quantity INT NOT NULL,
>>>>>>> d21f8273c2205695484788bc42561078f3fabfea
)

