SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN AlmacenComedor as AlCom ON AlCoc.Id_Cocina= AlCoc.Id_Cocina

SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN AlmacenElectrodomesticos as AlEle ON AlCoc.Id_Cocina=AlCoc.Id_Cocina

SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN AlmacenRecamaras as AlRec ON AlCoc.Id_Cocina=AlCoc.Id_Cocina

SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN AlmacenSalas as AlSal ON AlCoc.Id_Cocina=AlCoc.Id_Cocina

Select *
From AlmacenCocina where costo > 45000

Select *
From AlmacenComedor where costo < 55000

Select  
Id_Empleado,edad,nombre 
from Empleados where nombre LIKE'[A - Z]%`'


SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN BodegaAlmacen as BoAl ON AlCoc.Id_Cocina=AlCoc.Id_Cocina

SELECT *
FROM Sucursal as Suc
INNER JOIN ticket as tic ON Suc.negocio_id= Suc.negocio_id

Select *
From AlmacenCocina where costo LIKE '40000%'

Select * into AlmacenComedorbackup 
From AlmacenSalas 

Drop table AlmacenComedorbackup
