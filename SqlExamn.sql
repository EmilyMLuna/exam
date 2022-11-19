create table CAJEROS(
Codigo int PRIMARY KEY identity,
NomApels nvarchar(255)
)
create table PRODUCTOS(
Codigo smallint PRIMARY KEY identity,
Nombre nvarchar(100),
Precio int
)
create table MAQUINAS_REGISTRADORAS(
Codigo smallint PRIMARY KEY identity,
Piso int
)
create table VENTA(
Cajero int PRIMARY KEY identity,
NomApels nvarchar(255),
id_Cajero int
constraint fk_Cajeroo foreign key (id_Cajero) references CAJEROS
) 
create table MAQUINA(
Maquina int PRIMARY KEY identity,
piso int, 
Pisoo int,
constraint fk_Pisoo foreign key (Pisoo) references MAQUINAS_REGISTRADORAS
)
create table PRODUCTO(
Producto int PRIMARY KEY identity,
nombre nvarchar(100), 
nom int,
constraint fk_nom foreign key (nom) references PRODUCTOS
)