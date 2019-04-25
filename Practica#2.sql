create database Muebleria 
Use Muebleria 



create table Sucursal(
negocio_id int NULL,
Nombre_negocio varchar (30) NULL,
colonia varchar (30) NULL,
calle varchar (25)NULL, 
numero_casa int NULL,
direccion AS ((((('colonia:'+colonia)+'calle:')+'numero_casa:')+numero_casa))
)

create table Empleados(
Id_Empleado int NOT NULL,
nombre varchar (50) NULL,
ApPaterno varchar (50) NULL,
ApMaterno varchar (50) NULL,
fechanacimiento date NULL,
edad AS (datediff(year,fechanacimiento,getdate())),
Nombre_Completo AS ((((nombre+'') + ApPaterno)+'')+ApMaterno),
direccion varchar (60) NULL,
telefono int NULL, 
)

create table ticket (
ticket_id int NULL,
negocio_id varchar (30) NULL,
empleado_id int NULL,
producto_comprado date NULL,
fecha_compra date NULL,
colonia varchar (30) NULL,
calle varchar (25)NULL, 
numero_casa int NULL,
direccion AS ((((('colonia:'+colonia)+'calle:')+'numero_casa:')+numero_casa))
)

create table AlmacenElectrodomesticos(
Id_Electrodomestico int NOT NULL,
nombreElectrodomestico varchar (50) NULL,
costo money NULL,
especificaciones varchar (100) NULL,
)

create table AlmacenComedor(
Id_Comedor int NOT NULL,
nombreComedor varchar (50) NULL,
costo money NULL,
especificaciones varchar (100) NULL,
)

create table AlmacenCocina(
Id_Cocina int NOT NULL,
nombreCocina varchar (50) NULL,
costo money NULL,
especificaciones varchar (100) NULL,
)

create table AlmacenRecamaras(
Id_Recamara int NOT NULL,
nombreRecamara varchar (50) NULL,
costo money NULL,
especificaciones varchar (100) NULL,
)

create table AlmacenSalas(
Id_Salas int NOT NULL,
nombreSalas varchar (50) NULL,
costo money NULL,
especificaciones varchar (100) NULL,
)

create table BodegaAlmacen(
Id_Electrodomestico int NOT NULL,
nombreElectrodomestico varchar (50) NULL,
Id_Comedor int NOT NULL,
nombreComedor varchar (50) NULL,
Id_Cocina int NOT NULL,
nombreCocina varchar (50) NULL,
Id_Recamara int NOT NULL,
nombreRecamara varchar (50) NULL,
Id_Salas int NOT NULL,
nombreSalas varchar (50) NULL,
especificaciones varchar (100) NULL,
)

create table ServicioaDomicilio(
Id_pedido uniqueidentifier NOT NULL,
producto_id int NOT NULL,
fehca_compra date NULL,
hora_compra time NULL,
precio_final money NULL,
colonia varchar (30) NULL,
calle varchar (25)NULL, 
numero_casa int NULL,
direccion AS ((((('colonia:'+colonia)+'calle:')+'numero_casa:')+numero_casa))
)