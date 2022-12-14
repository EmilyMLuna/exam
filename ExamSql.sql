USE Dta 
CREATE TABLE CAJERO (
Id_Cajero INT PRIMARY KEY NOT NULL IDENTITY(1,1),
NOmbreApels nvarchar(255)
)
CREATE TABLE PRODUCTOS (
Id_producto INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Nombre nvarchar(100),
Precio float
)
CREATE TABLE MAQUINAS_REGISTRADORAS(
Id_maquina INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Piso int
)
CREATE TABLE VENTAS(
Id_ventaa INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Id_Cajero INT CONSTRAINT FK_Cajero FOREIGN KEY (Id_cajero) REFERENCES CAJERO(id_Cajero),

)
CREATE TABLE VENT(
Id_venta INT PRIMARY KEY NOT NULL IDENTITY(1,1),
Id_producto INT CONSTRAINT FK_producto FOREIGN KEY (Id_producto) REFERENCES PRODUCTOS (Id_producto)
)
CREATE TABLE VEN(
Id_vent INT PRIMARY KEY NOT NULL IDENTITY (1,1),
Id_maquina INT CONSTRAINT FK_maquina FOREIGN KEY (Id_maquina) REFERENCES MAQUINAS_REGISTRADORAS(Id_maquina)
)
