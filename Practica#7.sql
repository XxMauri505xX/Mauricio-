CREATE VIEW Almacen_1 
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN Sucursal as Suc ON AlCoc.Id_Cocina= AlCoc.Id_Cocina
SELECT * 
From Almacen_1


CREATE VIEW Almacen_2
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN ticket as tic ON AlCoc.Id_Cocina=AlCoc.Id_Cocina
SELECT*
From Almacen_2 


CREATE VIEW Almacen_3
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN Empleados as Emp ON AlCoc.Id_Cocina=AlCoc.Id_Cocina
SELECT * 
From Almacen_3 


CREATE VIEW Almacen_4
as
SELECT *
FROM AlmacenComedor as AlCom
INNER JOIN Empleados as Emp ON AlCom.Id_Comedor=AlCom.Id_Comedor
SELECT *
From Almacen_4

CREATE VIEW Almacen_5
as
Select *
From AlmacenCocina where costo > 45000
SELECT *
From Almacen_5

CREATE VIEW Almacen_6
as
Select *
From AlmacenComedor where costo < 55000
SELECT *
From Almacen_6 

CREATE VIEW Almacen_7
as
Select  
Id_Empleado,edad,nombre 
from Empleados where nombre LIKE'[A - Z]%`'
SELECT *
From Almacen_7 

CREATE VIEW Almacen_8
as
SELECT *
FROM AlmacenElectrodomesticos as AlEle
INNER JOIN Sucursal as Suc ON AlEle.Id_Electrodomestico=AlEle.Id_Electrodomestico
SELECT *
From Almacen_8 

CREATE VIEW Almacen_9
as
SELECT *
FROM Sucursal as Suc
INNER JOIN Empleados as Emp ON Suc.negocio_id= Suc.negocio_id
SELECT *
From Almacen_9

CREATE VIEW Almacen_10
as
Select *
From AlmacenCocina where costo LIKE '40000%'
SELECT * 
From Almacen_10 

Select * into AlmacenComedorbackup 
From AlmacenSalas 

Drop table AlmacenComedorbackup
