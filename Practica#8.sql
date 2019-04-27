create trigger Trig1
ON AlmacenCocina for update as
 if (update (id_cocina) and
not update (id_cocina) )
begin 
select 
   (d.id_cocina+'-'+ d.id_cocina) as 'registro anterior',
    (i.id_cocina+'-'+ i.id_cocina) as 'registro actualizado'
	from deleted as d
     join inserted as i
     on d.id_cocina=i.id_cocina 
	 end ;
	 GO


CREATE TRIGGER Trig2 ON AlmacenCocina
AFTER INSERT, UPDATE, DELETE
AS
 SELECT * FROM deleted;
 SELECT * FROM inserted;
 go


 CREATE FUNCTION Mayus
(
@Nombre Varchar(50),
@Apellido Varchar(50)
)
RETURNS Varchar(100)
AS
BEGIN
 RETURN (UPPER(@Apellido) + ', ' + UPPER(@Nombre))
END
go


Declare @negocio_id int = 1
Declare @query varchar(2000)
set @query ='Select Nombre_negocio,colonia, from dbo.Sucursal where negocio_id='
Declare @sql varchar (2000) = CONCAT (@query,@negocio_id)
Select @sql
go


CREATE PROCEDURE P_1 
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN Sucursal as Suc ON AlCoc.Id_Cocina= AlCoc.Id_Cocina
EXEC P_1
GO 


CREATE PROCEDURE P_2
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN ticket as tic ON AlCoc.Id_Cocina=AlCoc.Id_Cocina
EXEC P_2
GO


CREATE PROCEDURE P_3
 as
SELECT *
FROM AlmacenCocina as AlCoc
INNER JOIN Empleados as Emp ON AlCoc.Id_Cocina=AlCoc.Id_Cocina
EXEC P_3
GO



CREATE PROCEDURE P_4
as
SELECT *
FROM AlmacenComedor as AlCom
INNER JOIN Empleados as Emp ON AlCom.Id_Comedor=AlCom.Id_Comedor
EXEC P_4
GO

CREATE PROCEDURE P_5
as
Select *
From AlmacenCocina where costo > 45000
EXEC P_5
GO

CREATE PROCEDURE P_6
as
Select *
From AlmacenComedor where costo < 55000
EXEC P_6 
GO


CREATE PROCEDURE P_7
as
Select  
Id_Empleado,edad,nombre 
from Empleados where nombre LIKE'[A - Z]%`'
EXEC P_7
GO


CREATE PROCEDURE P_8
as
SELECT *
FROM AlmacenElectrodomesticos as AlEle
INNER JOIN Sucursal as Suc ON AlEle.Id_Electrodomestico=AlEle.Id_Electrodomestico
EXEC P_8
GO


CREATE PROCEDURE P_9
as
SELECT *
FROM Sucursal as Suc
INNER JOIN Empleados as Emp ON Suc.negocio_id= Suc.negocio_id
EXEC P_9
GO


CREATE PROCEDURE P_10
as
Select *
From AlmacenCocina where costo LIKE '40000%'
EXEC P_10
GO

Select * into AlmacenComedorbackup 
From AlmacenSalas 

Drop table AlmacenComedorbackup
