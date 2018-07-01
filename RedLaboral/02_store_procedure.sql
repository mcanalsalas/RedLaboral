﻿---INSERTAR

CREATE PROCEDURE SP_INGRESAR_CARRERA 
(
	@XNOMBRE_CARRERA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
INSERT INTO CARRERA (NOMBRE_CARRERA, 
						RUBRO, 
						ESTADO)

VALUES (@XNOMBRE_CARRERA,
		@XRUBRO,
		@XESTADO)
GO


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_CARRERA
(
	@XCOD_CARRERA INT
	
)
AS
UPDATE CARRERA  SET ESTADO='I'
WHERE ID_CARRERA=@XCOD_CARRERA
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_CARRERA
AS
SELECT ID_CARRERA,NOMBRE_CARRERA FROM CARRERA
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_CARRERA
	@XCOD_CARRERA INT
AS
SELECT
	ID_CARRERA,
	NOMBRE_CARRERA,
	RUBRO,
	ESTADO

FROM CARRERA
WHERE ID_CARRERA= @XCOD_CARRERA
GO


---ALTUALIZAR---
CREATE PROCEDURE SP_ACTUALIZAR_CARRERA
(
	@XCOD_CARRERA INT,
	@XNOMBRE_CARRERA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE CARRERA  SET NOMBRE_CARRERA=@XNOMBRE_CARRERA,
			RUBRO=@XRUBRO,
			ESTADO=@XESTADO
WHERE ID_CARRERA=@XCOD_CARRERA
GO



/***********************************************************/
--TABLA DISTRITO
/***********************************************************/

---INSERTAR
CREATE PROCEDURE SP_INGRESAR_DISTRITO
(
	@XNOMBRE_DISTRITO VARCHAR(100),
	@XNOMBRE_PROVINCIA VARCHAR(100),
	@XNOMBRE_DEPARTAMENTO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
INSERT INTO DISTRITO (NOMBRE_DISTRITO, 
						NOMBRE_PROVINCIA, 
						NOMBRE_DEPARTAMENTO, 
						ESTADO)

VALUES (@XNOMBRE_DISTRITO,
@XNOMBRE_PROVINCIA,
		@XNOMBRE_DEPARTAMENTO,
		@XESTADO)
GO


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_DISTRITO
(
	@XCOD_DISTRITO INT	
)
AS
UPDATE DISTRITO  SET ESTADO='I'
WHERE ID_DISTRITO=@XCOD_DISTRITO
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_DISTRITO
AS
SELECT * FROM DISTRITO
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_DISTRITO
	@XCOD_DISTRITO INT
AS
SELECT
	ID_DISTRITO,
	NOMBRE_DISTRITO, 
	NOMBRE_PROVINCIA, 
	NOMBRE_DEPARTAMENTO, 
	ESTADO

FROM DISTRITO
WHERE ID_DISTRITO= @XCOD_DISTRITO
GO


---ALTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_DISTRITO
(
	@XCOD_DISTRITO INT,
	@XNOMBRE_DISTRITO VARCHAR(100),
	@XNOMBRE_PROVINCIA VARCHAR(100),
	@XNOMBRE_DEPARTAMENTO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE DISTRITO  SET NOMBRE_DISTRITO=@XNOMBRE_DISTRITO, 
					NOMBRE_PROVINCIA=@XNOMBRE_PROVINCIA, 
					NOMBRE_DEPARTAMENTO=@XNOMBRE_DEPARTAMENTO, 
					ESTADO=@XESTADO
WHERE ID_DISTRITO=@XCOD_DISTRITO
GO

/***********************************************************/
--- TABLA EMPRESA
/***********************************************************/
--INSERTAR

CREATE PROCEDURE SP_INGRESAR_EMPRESA
(
	@XRUC CHAR(11),
	@XRAZON_SOCIAL VARCHAR(100),
	@XDIRECCION VARCHAR(100),
	@XID_DISTRITO INT,
	@XEMAIL VARCHAR(70),
	@XPASSWORD1 VARCHAR(10),
	@XESTADO CHAR(1)
)
AS
INSERT INTO EMPRESA (RUC, 
						RAZON_SOCIAL, 
						DIRECCION, 
						ID_DISTRITO, 
						EMAIL,
						PASSWORD1,
						ESTADO)

VALUES (@XRUC,
		@XRAZON_SOCIAL,
		@XDIRECCION,
		@XID_DISTRITO,
		@XEMAIL,
     	@XPASSWORD1,
		@XESTADO)
GO


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_EMPRESA
(
	@XRUC CHAR(11)
)
AS
UPDATE EMPRESA  SET ESTADO='I'
WHERE RUC=@XRUC
GO
---LISTAR---

CREATE PROCEDURE SP_LISTAR_EMPRESA
AS
SELECT * FROM EMPRESA
GO

---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_EMPRESA 
	@XRUC CHAR(11)
AS
SELECT
	RUC,
	RAZON_SOCIAL,
	DIRECCION,
	ID_DISTRITO,
	EMAIL,
	PASSWORD1,
	ESTADO

FROM EMPRESA
WHERE RUC=@XRUC
GO

---ALTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_EMPRESA
(
	@XRUC CHAR(11),
	@XRAZON_SOCIAL VARCHAR(100),
	@XDIRECCION VARCHAR(100),
	@XID_DISTRITO INT,
	@XEMAIL VARCHAR(70),
	@XPASSWORD1 VARCHAR(10),
	@XESTADO CHAR(1)
)
AS
UPDATE EMPRESA  SET RAZON_SOCIAL=@XRAZON_SOCIAL, 
						DIRECCION=@XDIRECCION, 
						ID_DISTRITO=@XID_DISTRITO, 
						EMAIL=@XEMAIL,
						PASSWORD1=@XPASSWORD1,
						ESTADO=@XESTADO
WHERE RUC=@XRUC
GO

/***********************************************************/
---TABLA H_BLANDA
/***********************************************************/

---INSERTAR

CREATE PROCEDURE SP_INGRESAR_HBLANDA
(
	@XNOMBRE_HBLANDA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
BEGIN
INSERT INTO H_BLANDA(NOMBRE_HABILIDAD,RUBRO,ESTADO) 
VALUES (@XNOMBRE_HBLANDA,@XRUBRO,@XESTADO)
END
GO	


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_HBLANDA
(
	@XCOD_HBLANDA INT
	
)
AS
UPDATE H_BLANDA  SET ESTADO='I'
WHERE ID_H_BLANDA=@XCOD_HBLANDA
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_HBLANDA
AS
SELECT * FROM H_BLANDA
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_HBLANDA
(
	@XCOD_HBLANDA INT
)
AS
SELECT * FROM H_BLANDA
WHERE ID_H_BLANDA= @XCOD_HBLANDA
GO


---ACTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_HBLANDA
(
	@XCOD_HBLANDA INT,
	@XNOMBRE_HBLANDA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE H_BLANDA  SET NOMBRE_HABILIDAD=@XNOMBRE_HBLANDA, RUBRO=@XRUBRO,ESTADO=@XESTADO
WHERE ID_H_BLANDA=@XCOD_HBLANDA
GO


/***********************************************************/
---TABLA H_DURA
/***********************************************************/

---INSERTAR

CREATE PROCEDURE SP_INGRESAR_HDURA
(
	@XNOMBRE_HDURA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
BEGIN
INSERT INTO H_DURA(NOMBRE_HABILIDAD,RUBRO,ESTADO) VALUES (@XNOMBRE_HDURA,@XRUBRO,@XESTADO)
END
GO	


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_HDURA
(
	@XCOD_HDURA INT
	
)
AS
UPDATE H_DURA  SET ESTADO='I'
WHERE ID_H_DURA=@XCOD_HDURA
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_HDURA
AS
SELECT * FROM H_DURA
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_HDURA
(
	@XCOD_HDURA INT
)
AS
SELECT * FROM H_DURA
WHERE ID_H_DURA= @XCOD_HDURA
GO


---ACTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_HDURA
(
	@XCOD_HDURA INT,
	@XNOMBRE_HDURA VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE H_DURA  SET NOMBRE_HABILIDAD=@XNOMBRE_HDURA, RUBRO=@XRUBRO,ESTADO=@XESTADO
WHERE ID_H_DURA=@XCOD_HDURA
GO


/***********************************************************/
---TABLA INSTITUCION
/***********************************************************/


---INSERTAR

CREATE PROCEDURE SP_INGRESAR_INSTITUCION
(
	@XNOMBRE_INSTITUCION VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
INSERT INTO INSTITUCION (NOMBRE_INSTITUCION, 
						ESTADO)

VALUES (@XNOMBRE_INSTITUCION,
		@XESTADO)
GO

---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_INSTITUCION
(
	@XCOD_INSTITUCION INT
	
)
AS
UPDATE INSTITUCION  SET ESTADO='I'
WHERE ID_INSTITUCION=@XCOD_INSTITUCION
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_INSTITUCION
AS
SELECT * FROM INSTITUCION
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_INSTITUCION

	@XCOD_INSTITUCION INT
AS
SELECT
	ID_INSTITUCION,
	NOMBRE_INSTITUCION,
	ESTADO

FROM INSTITUCION
WHERE ID_INSTITUCION= @XCOD_INSTITUCION
GO


---ALTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_INSTITUCION
(
	@XCOD_INSTITUCION INT,
	@XNOMBRE_INSTITUCION VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE INSTITUCION  SET NOMBRE_INSTITUCION=@XNOMBRE_INSTITUCION,
						ESTADO=@XESTADO
WHERE ID_INSTITUCION=@XCOD_INSTITUCION
GO


/***********************************************************/
---TABLA PERSONA
/***********************************************************/

---INSERTAR

CREATE PROCEDURE SP_INGRESAR_PERSONA
(
	@XDNI CHAR(8),
	@XNOMBRES VARCHAR(60),
	@XAPELLIDO_PATERNO VARCHAR(50),
	@XAPELLIDO_MATERNO VARCHAR(50),
	@XTELEFONO CHAR(7),
	@XCELULAR CHAR(9),
	@XEMAIL VARCHAR(70),
	@XFECHA_NACIMIENTO DATETIME,
	@XDIRECCION VARCHAR(200),
	@XID_DISTRITO INT,
	@XPASSWORD1 VARCHAR(10),
	@XESTADO CHAR(1)
)
AS
INSERT INTO PERSONA (DNI,
					NOMBRES,
					APELLIDO_PATERNO,
					APELLIDO_MATERNO,
					TELEFONO,
					CELULAR,
					EMAIL,
					FECHA_NACIMIENTO,
					DIRECCION,
					ID_DISTRITO,
					PASSWORD1,
					ESTADO)

VALUES (@XDNI,
		@XNOMBRES,
		@XAPELLIDO_PATERNO,
		@XAPELLIDO_MATERNO,
		@XTELEFONO,
		@XCELULAR,
		@XEMAIL,
		@XFECHA_NACIMIENTO,
		@XDIRECCION,
		@XID_DISTRITO,
		@XPASSWORD1,
		@XESTADO)
GO

---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_PERSONA
(
	@XDNI CHAR(8)
	
)
AS
UPDATE PERSONA  SET ESTADO='I'
WHERE DNI=@XDNI
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_PERSONA
AS
SELECT * FROM PERSONA
GO

---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_PERSONA
	@XDNI CHAR(8)
AS
SELECT
	DNI,
	NOMBRES,
	APELLIDO_PATERNO,
	APELLIDO_MATERNO,
	TELEFONO,
	CELULAR,
	EMAIL,
	FECHA_NACIMIENTO,
	DIRECCION,
	ID_DISTRITO,
	PASSWORD1,
	ESTADO

FROM PERSONA
WHERE DNI= @XDNI
GO

---ALTUALIZAR---
CREATE PROCEDURE SP_ACTUALIZAR_PERSONA
(
	@XDNI CHAR(8),
	@XNOMBRES VARCHAR(60),
	@XAPELLIDO_PATERNO VARCHAR(50),
	@XAPELLIDO_MATERNO VARCHAR(50),
	@XTELEFONO CHAR(7),
	@XCELULAR CHAR(9),
	@XEMAIL VARCHAR(70),
	@XFECHA_NACIMIENTO DATETIME,
	@XDIRECCION VARCHAR(200),
	@XID_DISTRITO INT,
	@XPASSWORD1 VARCHAR(10),
	@XESTADO CHAR(1)
)
AS
UPDATE PERSONA  SET 	NOMBRES=@XNOMBRES,
						APELLIDO_PATERNO=@XAPELLIDO_PATERNO,
						APELLIDO_MATERNO=@XAPELLIDO_MATERNO,
						TELEFONO=@XTELEFONO,
						CELULAR=@XCELULAR,
						EMAIL=@XEMAIL,
						FECHA_NACIMIENTO=@XFECHA_NACIMIENTO,
						DIRECCION=@XDIRECCION,
						ID_DISTRITO=@XID_DISTRITO,
						PASSWORD1=@XPASSWORD1,
						ESTADO=@XESTADO
WHERE DNI=@XDNI
GO


/***********************************************************/
---TABLA PERSONA_CARRERA
/***********************************************************/

--INSERTAR

CREATE PROCEDURE SP_INGRESAR_PERSONA_CARRERA
(
		@XDNI CHAR(8),
		@XID_CARRERA INT,
		@XID_INSTITUCION INT,
		@XPROMEDIO INT,
		@XPUESTO_FINAL INT,
		@XF_INICIO DATETIME,
		@XF_FIN DATETIME,
		@XESTADO char(1)
)
AS
INSERT INTO PERSONA_CARRERA (DNI,
							ID_CARRERA,
							ID_INSTITUCION,
							PROMEDIO,
							PUESTO_FINAL,
							F_INICIO,
							F_FIN,
							ESTADO)

VALUES (@XDNI,
		@XID_CARRERA,
		@XID_INSTITUCION,
		@XPROMEDIO,
		@XPUESTO_FINAL,
		@XF_INICIO,
		@XF_FIN,
		@XESTADO)
GO

---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_PERSONA_CARRERA
(
	@XDNI CHAR(8)
	
)
AS
UPDATE PERSONA_CARRERA  SET ESTADO='I'
WHERE DNI=@XDNI
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_PERSONA_CARRERA
AS
SELECT * FROM PERSONA_CARRERA
GO

---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_PERSONA_CARRERA
	@XDNI CHAR(8)
AS
SELECT
		DNI,
		ID_CARRERA,
		ID_INSTITUCION,
		PROMEDIO,
		PUESTO_FINAL,
		F_INICIO,
		F_FIN,
		ESTADO

FROM PERSONA_CARRERA
WHERE DNI= @XDNI
GO

---ALTUALIZAR---
CREATE PROCEDURE SP_ACTUALIZAR_PERSONA_CARRERA
(
		@XDNI CHAR(8),
		@XID_CARRERA INT,
		@XID_INSTITUCION INT,
		@XPROMEDIO INT,
		@XPUESTO_FINAL INT,
		@XF_INICIO DATETIME,
		@XF_FIN DATETIME,
		@XESTADO char(1)
)
AS
UPDATE PERSONA_CARRERA  SET		ID_CARRERA=@XID_CARRERA,
								ID_INSTITUCION=ID_INSTITUCION,
								PROMEDIO=@XPROMEDIO,
								PUESTO_FINAL=@XPUESTO_FINAL,
								F_INICIO=@XF_INICIO,
								F_FIN=@XF_FIN,
								ESTADO=@XESTADO
WHERE DNI=@XDNI
GO


/***********************************************************/
---TABLA PUESTO
/***********************************************************/

---INSERTAR
CREATE PROCEDURE SP_INGRESAR_PUESTO
(
	@XNOMBRE_PUESTO VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
INSERT INTO PUESTO (NOMBRE_PUESTO,
					RUBRO,
					ESTADO)

VALUES (@XNOMBRE_PUESTO,
		@XRUBRO,
		@XESTADO
)
GO

---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_PUESTO
(
	@XCOD_PUESTO INT
	
)
AS
UPDATE PUESTO  SET ESTADO='I'
WHERE ID_PUESTO=@XCOD_PUESTO
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_PUESTO
AS
SELECT * FROM PUESTO
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_PUESTO
(
	@XCOD_PUESTO INT
)
AS
SELECT
	ID_PUESTO,
	NOMBRE_PUESTO,
	RUBRO,
	ESTADO

FROM PUESTO
WHERE ID_PUESTO= @XCOD_PUESTO
GO


---ALTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_PUESTO
(
	@XCOD_PUESTO INT,
	@XNOMBRE_PUESTO VARCHAR(100),
	@XRUBRO VARCHAR(100),
	@XESTADO CHAR(1)
)
AS
UPDATE PUESTO  SET NOMBRE_PUESTO=@XNOMBRE_PUESTO,
					RUBRO=@XRUBRO,
					ESTADO=@XESTADO
					
WHERE ID_PUESTO=@XCOD_PUESTO
GO

/***********************************************************/
---TABLA PUNTUACION BLANDA
/***********************************************************/


---INSERTAR
CREATE PROCEDURE SP_INGRESAR_PUNTUACIONBLANDA
(
	@XID_TRABAJO INT,
	@XID_H_HBLANDA INT,
	@XPUNTOS INT,
	@XESTADO CHAR(1)
)
AS
BEGIN
INSERT INTO PUNTUACION_BLANDA(ID_TRABAJO,ID_H_BLANDA,PUNTOS,ESTADO)
 VALUES (@XID_TRABAJO,@XID_H_HBLANDA,@XPUNTOS,'A')
END
GO	


---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_PUNTUACIONBLANDA
(
    @XID_TRABAJO INT,
	@XCOD_HBLANDA INT
	
)
AS
UPDATE PUNTUACION_BLANDA  SET ESTADO='I'
WHERE ID_H_BLANDA=@XCOD_HBLANDA
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_PUNTUACIONBLANDA
AS
SELECT * FROM PUNTUACION_BLANDA
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_PUNTUACIONBLANDA
(
    @XID_TRABAJO INT,
	@XCOD_HBLANDA INT
)
AS
SELECT * FROM PUNTUACION_BLANDA
WHERE   ID_TRABAJO=@XID_TRABAJO AND ID_H_BLANDA= @XCOD_HBLANDA 
GO


---ACTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_PUNTUACIONBLANDA
(
	@XID_TRABAJO INT,
	@XID_H_HBLANDA INT,
	@XPUNTOS INT,
	@XESTADO CHAR(1)
)
AS
UPDATE PUNTUACION_BLANDA  SET  PUNTOS=@XPUNTOS,ESTADO=@XESTADO
WHERE ID_TRABAJO=@XID_TRABAJO AND ID_H_BLANDA=@XID_H_HBLANDA
GO



/***********************************************************/
----TABLA PUNTUACION DURA
/***********************************************************/



---INSERTAR
CREATE PROCEDURE SP_INGRESAR_PUNTUACIONDURA
(
	@XID_TRABAJO INT,
	@XID_H_HDURA INT,
	@XPUNTOS INT,
	@XESTADO CHAR(1)
)
AS
BEGIN
INSERT INTO PUNTUACION_DURA(ID_TRABAJO,ID_H_DURA,PUNTOS,ESTADO) VALUES (@XID_TRABAJO,@XID_H_HDURA,@XPUNTOS ,'A')
END
GO



---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_PUNTUACIONDURA
(
	@XID_TRABAJO INT,
	@XID_H_DURA INT
	
)
AS
UPDATE PUNTUACION_DURA  SET ESTADO='I'
WHERE ID_TRABAJO=@XID_TRABAJO AND ID_H_DURA=@XID_H_DURA
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_PUNTUACIONDURA
AS
SELECT * FROM PUNTUACION_DURA
GO


---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_PUNTUACIONDURA
(
	@XID_TRABAJO INT,
	@XID_H_DURA INT
)
AS
SELECT * FROM PUNTUACION_DURA
WHERE ID_TRABAJO=@XID_TRABAJO AND ID_H_DURA=@XID_H_DURA
GO


---ACTUALIZAR---

CREATE PROCEDURE SP_ACTUALIZAR_PUNTUACIONDURA
(
	@XID_TRABAJO INT,
	@XID_H_DURA INT,
	@XPUNTOS INT,
	@XESTADO CHAR(1)
)
AS
UPDATE PUNTUACION_DURA  SET PUNTOS=@XPUNTOS,ESTADO=@XESTADO
WHERE ID_TRABAJO=@XID_TRABAJO AND ID_H_DURA=@XID_H_DURA
GO


/***********************************************************/
---TABLA TRABAJO
/***********************************************************/

---INSERTAR
CREATE PROCEDURE SP_INGRESAR_TRABAJO
(
		@XDNI CHAR(8),
		@XRUC CHAR(11),
		@XID_PUESTO INT,
		@XFECHA_INICIO DATETIME,
		@XFECHA_FIN DATETIME,
		@XESTADO char(1)
)
AS
INSERT INTO TRABAJO (DNI,
					RUC,
					ID_PUESTO,
					FECHA_INICIO,
					FECHA_FIN,
					ESTADO)

VALUES (@XDNI,
        @XRUC,
		@XID_PUESTO,
		@XFECHA_INICIO,
		@XFECHA_FIN,
		@XESTADO)
GO

---ELIMINAR
CREATE PROCEDURE SP_ELIMINAR_TRABAJO
(
	@XID_TRABAJO INT
	
)
AS
UPDATE TRABAJO  SET ESTADO='I'
WHERE ID_TRABAJO=@XID_TRABAJO
GO


---LISTAR---

CREATE PROCEDURE SP_LISTAR_TRABAJO
AS
SELECT * FROM TRABAJO
GO

---CONSULTAR---
CREATE PROCEDURE SP_CONSULTAR_TRABAJO
	@XID_TRABAJO INT
AS
SELECT
		ID_TRABAJO,
		DNI,
		RUC,
		ID_PUESTO,
		FECHA_INICIO,
		FECHA_FIN,
		ESTADO

FROM TRABAJO
WHERE ID_TRABAJO=@XID_TRABAJO
GO

---ALTUALIZAR---
CREATE PROCEDURE SP_ACTUALIZAR_TRABAJO
(
		@XID_TRABAJO INT,
		@XDNI CHAR(8),
		@XRUC CHAR(11),
		@XID_PUESTO INT,
		@XFECHA_INICIO DATETIME,
		@XFECHA_FIN DATETIME,
		@XESTADO char(1)
)
AS
UPDATE TRABAJO  SET		DNI=@XDNI,
						RUC=@XRUC,
						ID_PUESTO=@XID_PUESTO,
						FECHA_INICIO=@XFECHA_INICIO,
						FECHA_FIN=@XFECHA_FIN,
						ESTADO=@XESTADO
WHERE ID_TRABAJO=@XID_TRABAJO
GO


/*********************************** STORE PROCEDURES******************************
							SERVICIOS WCF
*********************************************************************************+*/
use RED_LABORAL
go
/**********************************************************************
						SERVICIO PUNTUACION BLANDA
**********************************************************************/

CREATE PROCEDURE INSERTAR_PUNTUACION_BLANDA
(
@IDTRABAJO INT,
@IDHBLANDA INT,
@PUNTOS INT
)
AS
INSERT INTO PUNTUACION_BLANDA (ID_TRABAJO ,ID_H_BLANDA ,PUNTOS ,ESTADO )
VALUES (@IDTRABAJO ,@IDHBLANDA ,@PUNTOS ,'A')
GO

CREATE VIEW TABLA_PUNTAJES
AS
SELECT AVG(PUNTUACION_BLANDA.PUNTOS)AS'PUNTOS',TRABAJO.DNI,PUNTUACION_BLANDA.ID_H_BLANDA
,PERSONA.APELLIDO_PATERNO + ' '+PERSONA.APELLIDO_MATERNO+' , '+PERSONA.NOMBRES AS 'DATOS',
H_blanda.NOMBRE_HABILIDAD
FROM PUNTUACION_BLANDA
INNER JOIN TRABAJO ON PUNTUACION_BLANDA.ID_TRABAJO=TRABAJO.ID_TRABAJO
INNER JOIN PERSONA ON TRABAJO.DNI =PERSONA.DNI
INNER JOIN H_blanda ON PUNTUACION_BLANDA.ID_H_BLANDA=H_blanda.ID_H_BLANDA
--WHERE TRABAJO.DNI='70006275' 
--where PUNTUACION_BLANDA.ID_H_BLANDA =1
GROUP BY TRABAJO.DNI,PUNTUACION_BLANDA.ID_H_BLANDA,PERSONA.APELLIDO_PATERNO + ' '+PERSONA.APELLIDO_MATERNO+' , '+PERSONA.NOMBRES,H_blanda.NOMBRE_HABILIDAD
GO

CREATE PROCEDURE FILTRAR_PUNTUACION_BLANDA_PUNTOS
(
@PUNTOS INT,
@IDHBLANDA INT
)
AS
SELECT  PUNTOS,DNI,ID_H_BLANDA AS 'ID_HABILIDAD',DATOS,NOMBRE_HABILIDAD FROM TABLA_PUNTAJES
WHERE ID_H_BLANDA=@IDHBLANDA AND PUNTOS>=@PUNTOS 
ORDER BY PUNTOS DESC 
GO

/**********************************************************************
						SERVICIO PERSONA_CARRERA
**********************************************************************/
/*MODIFICARRRR EN LA TABLAAA*/
CREATE PROCEDURE LISTA_PERSONA_CARRERA --1
(
	@ID_CARRERA INT
)
AS
SELECT t2.DNI,t2.APELLIDO_PATERNO+' '+t2.APELLIDO_MATERNO+' , '+t2.NOMBRES as'DATOS', 
t2.DIRECCION +' - '+t3.NOMBRE_DISTRITO as'DIRECCIÓN',t3.NOMBRE_DEPARTAMENTO,t3.NOMBRE_PROVINCIA,t2.TELEFONO,
t2.CELULAR,t2.EMAIL,t2.FECHA_NACIMIENTO,t4.NOMBRE_INSTITUCION,t1.PROMEDIO,t1.PROMEDIO AS 'PUESTO_FINAL',t1.ID_CARRERA,t6.NOMBRE_CARRERA FROM
PERSONA_CARRERA t1 inner join PERSONA  t2 on t1.DNI=t2.DNI
inner join DISTRITO t3 on t2.ID_DISTRITO =t3.ID_DISTRITO 
inner join INSTITUCION t4 on t1.ID_INSTITUCION=t4.ID_INSTITUCION
inner join CARRERA t6 on t1.ID_CARRERA=t6.ID_CARRERA
WHERE t1.ID_CARRERA=@ID_CARRERA
ORDER BY T1.PROMEDIO desc
GO

create PROCEDURE LISTAR_PERSONA_RUBRO_CARRERA-- 'Administración'
(
	@NOMBBRE_RUBRO VARCHAR(100)
)
AS
SELECT t2.DNI,t2.APELLIDO_PATERNO+' '+t2.APELLIDO_MATERNO+' , '+t2.NOMBRES as 'DATOS', 
t2.DIRECCION +' - '+t3.NOMBRE_DISTRITO as 'DIRECCIÓN',t3.NOMBRE_DEPARTAMENTO,t3.NOMBRE_PROVINCIA,t2.TELEFONO,
t2.CELULAR,t2.EMAIL,t2.FECHA_NACIMIENTO,t4.NOMBRE_INSTITUCION,t1.PROMEDIO,t5.NOMBRE_CARRERA,t5.ID_CARRERA FROM
PERSONA_CARRERA t1 inner join PERSONA  t2 on t1.DNI=t2.DNI
inner join DISTRITO t3 on t2.ID_DISTRITO =t3.ID_DISTRITO 
inner join INSTITUCION t4 on t1.ID_INSTITUCION=t4.ID_INSTITUCION
inner join CARRERA t5 on t1.ID_CARRERA=t5.ID_CARRERA
where t5.RUBRO=@NOMBBRE_RUBRO
GROUP BY t2.DNI,t2.APELLIDO_PATERNO,t2.APELLIDO_MATERNO,t2.NOMBRES, 
t2.DIRECCION +' - '+t3.NOMBRE_DISTRITO,t3.NOMBRE_DEPARTAMENTO,t3.NOMBRE_PROVINCIA,t2.TELEFONO,
t2.CELULAR,t2.EMAIL,t2.FECHA_NACIMIENTO,t4.NOMBRE_INSTITUCION,t1.PROMEDIO,t5.NOMBRE_CARRERA,t5.ID_CARRERA
ORDER BY t1.PROMEDIO desc
go


CREATE PROCEDURE LISTAR_PERSONA_PROMEDIO 
(
	@NOTA INT
)
AS
SELECT t2.DNI,t2.APELLIDO_PATERNO,t2.APELLIDO_MATERNO,t2.NOMBRES, 
t2.DIRECCION +' - '+t3.NOMBRE_DISTRITO,t3.NOMBRE_DEPARTAMENTO,t3.NOMBRE_PROVINCIA,t2.TELEFONO,
t2.CELULAR,t2.EMAIL,t2.FECHA_NACIMIENTO,t4.NOMBRE_INSTITUCION,t1.PROMEDIO,t5.NOMBRE_CARRERA 
FROM PERSONA_CARRERA t1 inner join PERSONA  t2 on t1.DNI=t2.DNI
inner join DISTRITO t3 on t2.ID_DISTRITO =t3.ID_DISTRITO 
inner join INSTITUCION t4 on t1.ID_INSTITUCION=t4.ID_INSTITUCION
inner join CARRERA t5 on t1.ID_CARRERA=t5.ID_CARRERA
WHERE T1.PROMEDIO>@NOTA
go

/*aGREAGR AL WCF*/
CREATE PROCEDURE LISTAR_PERSONA_PROMEDIO_POR_CARRERA 
(
	@NOTA INT,
	@IDCARRERA INT
)
AS
SELECT t2.DNI,t2.APELLIDO_PATERNO,t2.APELLIDO_MATERNO,t2.NOMBRES, 
t2.DIRECCION +' - '+t3.NOMBRE_DISTRITO,t3.NOMBRE_DEPARTAMENTO,t3.NOMBRE_PROVINCIA,t2.TELEFONO,
t2.CELULAR,t2.EMAIL,t2.FECHA_NACIMIENTO,t4.NOMBRE_INSTITUCION,t1.PROMEDIO
FROM PERSONA_CARRERA t1 inner join PERSONA  t2 on t1.DNI=t2.DNI
inner join DISTRITO t3 on t2.ID_DISTRITO =t3.ID_DISTRITO 
inner join INSTITUCION t4 on t1.ID_INSTITUCION=t4.ID_INSTITUCION
inner join CARRERA t5 on t1.ID_CARRERA=t5.ID_CARRERA
WHERE T1.PROMEDIO>@NOTA AND T5.ID_CARRERA=@IDCARRERA
go


/**********************************************************************
						SERVICIO TRABAJO
**********************************************************************/
CREATE VIEW VISTA_AÑOS_EXPERIENCIAS
AS
select sum( DATEDIFF ( YEAR , FECHA_INICIO , FECHA_FIN ))TIME,DNI from TRABAJO
GROUP BY DNI
go

CREATE PROCEDURE CANTIDAD_EXPERIENCIA
(
	@EXPERIENCIA INT
)
AS
SELECT * FROM VISTA_AÑOS_EXPERIENCIAS
WHERE TIME>@EXPERIENCIA
GO

CREATE VIEW VISTA_AÑOS_EXPERIENCIAS_RUBRO
AS
select sum( DATEDIFF ( YEAR , TRABAJO.FECHA_INICIO , TRABAJO.FECHA_FIN ))TIME,TRABAJO.DNI,
PERSONA.APELLIDO_PATERNO+' '+PERSONA.APELLIDO_MATERNO+', '+PERSONA.NOMBRES AS 'DATOS',PUESTO.RUBRO
 from TRABAJO
inner join PUESTO on TRABAJO.ID_PUESTO=PUESTO.ID_PUESTO
inner join PERSONA on TRABAJO.DNI=PERSONA.DNI
group by TRABAJO.DNI,
PERSONA.APELLIDO_PATERNO+' '+PERSONA.APELLIDO_MATERNO+', '+PERSONA.NOMBRES,PUESTO.RUBRO
go

--SELECT * FROM VISTA_AÑOS_EXPERIENCIAS_RUBRO

CREATE PROCEDURE CANTIDAD_EXPERIENCIA_RUBRO --5,'Administración'
(
	@EXPERIENCIA INT,
	@RUBRO VARCHAR(100)
)
AS
SELECT SUM(TIME)TIME,DNI,DATOS,RUBRO FROM VISTA_AÑOS_EXPERIENCIAS_RUBRO
WHERE RUBRO=@RUBRO AND TIME>@EXPERIENCIA
GROUP BY DNI,DATOS,RUBRO
ORDER BY 1 DESC
GO

/**********************************************************************
						SERVICIO PUNTUACION DURA
**********************************************************************/
CREATE VIEW TABLA_PUNTAJES_2
AS
SELECT AVG(PUNTUACION_DURA.PUNTOS)AS'PUNTOS',TRABAJO.DNI,PUNTUACION_DURA.ID_H_DURA
,PERSONA.APELLIDO_PATERNO + ' '+PERSONA.APELLIDO_MATERNO+' , '+PERSONA.NOMBRES AS 'DATOS',
H_DURA.NOMBRE_HABILIDAD
FROM PUNTUACION_DURA
INNER JOIN TRABAJO ON PUNTUACION_DURA.ID_TRABAJO=TRABAJO.ID_TRABAJO
INNER JOIN PERSONA ON TRABAJO.DNI =PERSONA.DNI
INNER JOIN H_DURA ON PUNTUACION_DURA.ID_H_DURA=H_DURA.ID_H_DURA
--WHERE TRABAJO.DNI='70006275' 
--where PUNTUACION_DURA.ID_H_DURA =1
GROUP BY TRABAJO.DNI,PUNTUACION_DURA.ID_H_DURA,PERSONA.APELLIDO_PATERNO + ' '+PERSONA.APELLIDO_MATERNO+' , '+PERSONA.NOMBRES,H_DURA.NOMBRE_HABILIDAD
GO

CREATE PROCEDURE FILTRAR_PUNTUACION_DURA_PUNTOS 
(
@PUNTOS INT,
@IDHDURA INT
)
AS
SELECT PUNTOS,DNI,ID_H_DURA AS 'ID_HABILIDAD',DATOS,NOMBRE_HABILIDAD FROM TABLA_PUNTAJES_2
WHERE ID_H_DURA=@IDHDURA AND PUNTOS>=@PUNTOS 
ORDER BY PUNTOS DESC 
GO
/**********************************************************************
						SERVICIO DISTRITO
**********************************************************************/

CREATE PROCEDURE SP_LISTAR_POR_DEPARTAMENTO
	AS
	SELECT NOMBRE_DEPARTAMENTO
	from DISTRITO
	where ESTADO='A'
	group by NOMBRE_DEPARTAMENTO
	order by NOMBRE_DEPARTAMENTO asc
	GO

	--
	--lista de todos las provincias activos
	CREATE PROCEDURE SP_LISTAR_POR_PROVINCIA 
	(
	@XDepartamento varchar(100)
	)
	AS
	select NOMBRE_PROVINCIA from distrito
	where NOMBRE_DEPARTAMENTO= @XDepartamento and ESTADO='A'
	group by NOMBRE_PROVINCIA
	order by NOMBRE_PROVINCIA asc
	GO

	---
	--lista de todos los deparmentos activos
	CREATE PROCEDURE SP_LISTAR_POR_DISTRITO
	(
	@XProvincia varchar(100)
	)
	AS
    SELECT ID_DISTRITO, NOMBRE_DISTRITO
	FROM DISTRITO
	WHERE NOMBRE_PROVINCIA= @XProvincia and ESTADO='A'	
	ORDER BY NOMBRE_DISTRITO ASC
	GO

	/**********************************************************************
						SERVICIO PERSONA
**********************************************************************/
create procedure usp_Validacion 
@correo varchar(200),
@Contra varchar(10)
as
Select rtrim(DNI) as 'Identificador'
from PERSONA
where EMAIL=@correo and PASSWORD1 =@Contra
union

select rtrim(RUC) as 'Identificador'
 from EMPRESA
where EMAIL=@correo and PASSWORD1 =@Contra
go

---listar carrera por persona
create procedure usp_ListarCarreraPersona 
@Dni char(8)
as
select t2.NOMBRE_CARRERA,t3.NOMBRE_INSTITUCION,t1.PROMEDIO,t1.F_INICIO,t1.F_FIN,t1.PUESTO_FINAL 
from PERSONA_CARRERA t1 inner join CARRERA t2 on t1.ID_CARRERA=t2.ID_CARRERA
                        inner join INSTITUCION t3 on t1.ID_INSTITUCION=t3.ID_INSTITUCION
where t1.DNI=@Dni
go

--- listar trabajos por persona 
create procedure usp_ListarTrabajoPersona 
@Dni char(8)
as
select t2.ID_TRABAJO,t3.NOMBRE_PUESTO,t4.RAZON_SOCIAL,t2.FECHA_INICIO,t2.FECHA_FIN 
from PERSONA t1 inner join TRABAJO t2 on t1.DNI=t2.DNI
                inner join PUESTO t3 on t2.ID_PUESTO=t3.ID_PUESTO
				inner join EMPRESA t4 on t2.RUC=t4.RUC
where t1.DNI =@Dni
go

--LISTAR RUBROS
CREATE PROCEDURE SP_LISTAR_RUBRO_CARRERA
AS
SELECT RUBRO FROM CARRERA
GROUP BY RUBRO
ORDER BY RUBRO
GO

CREATE PROCEDURE SP_LISTAR_CARRERA_CARRERA
AS
SELECT ID_CARRERA,NOMBRE_CARRERA FROM CARRERA
ORDER BY NOMBRE_CARRERA
GO

--DETALLES CARRERA POR PERSONA

create PROCEDURE SP_CONSULTAR_PERSONA_CARRERA_DETALLES 
	@XDNI CHAR(8),
	@XNOMBRE INT
AS
SELECT
	    PERSONA_CARRERA.DNI,
		PERSONA.APELLIDO_PATERNO+' '+PERSONA.APELLIDO_MATERNO+','+PERSONA.NOMBRES AS'DATOS',
		PERSONA.EMAIL,
		PERSONA.TELEFONO,
		PERSONA.CELULAR,
		PERSONA.DIRECCION,
		DISTRITO.NOMBRE_DISTRITO,
		DISTRITO.NOMBRE_PROVINCIA,
		DISTRITO.NOMBRE_DEPARTAMENTO,
		CARRERA.NOMBRE_CARRERA,
		INSTITUCION.NOMBRE_INSTITUCION,
		PERSONA_CARRERA.PROMEDIO,
		PERSONA_CARRERA.PUESTO_FINAL,
		PERSONA_CARRERA.F_INICIO,
		PERSONA_CARRERA.F_FIN

FROM PERSONA_CARRERA
inner join carrera on PERSONA_CARRERA.ID_CARRERA=CARRERA.ID_CARRERA
inner join institucion on PERSONA_CARRERA.ID_INSTITUCION=INSTITUCION.ID_INSTITUCION
inner join persona on PERSONA_CARRERA.DNI= PERSONA.DNI
inner join distrito on persona.id_distrito=distrito.id_distrito
WHERE PERSONA_CARRERA.DNI= @XDNI and CARRERA.ID_CARRERA=@XNOMBRE
GO

CREATE PROCEDURE CONSULTAR_IDCARRERA_X_NOMBRE 
(
 @NOMBRE_CARRERA VARCHAR(100),
 @ID_CARRERA int output
)
AS
SELECT @ID_CARRERA=ID_CARRERA FROM CARRERA
WHERE NOMBRE_CARRERA=@NOMBRE_CARRERA
GO


CREATE PROCEDURE BUSCAR_DATOS_COMPLETOS_PERSONA --'69997275'
(
	@DNI CHAR(8)
)
AS
SELECT PERSONA.DNI,PERSONA.NOMBRES,PERSONA.APELLIDO_PATERNO,PERSONA.APELLIDO_MATERNO,PERSONA.EMAIL,PERSONA.FECHA_NACIMIENTO,
PERSONA.TELEFONO,PERSONA.CELULAR,PERSONA.DIRECCION+' - '+DISTRITO.NOMBRE_DISTRITO AS'DIRECCION',DISTRITO.NOMBRE_PROVINCIA,
DISTRITO.NOMBRE_DEPARTAMENTO
FROM PERSONA
INNER JOIN DISTRITO ON PERSONA.ID_DISTRITO=DISTRITO.ID_DISTRITO
WHERE PERSONA.DNI=@DNI
GO

CREATE PROCEDURE LISTAR_PUNTOS_DURA_PERSONA 
(
	@ID_TRABAJO INT
)
AS 
SELECT H_DURA.NOMBRE_HABILIDAD,PUNTUACION_DURA.PUNTOS 
FROM PUNTUACION_DURA
INNER JOIN H_DURA ON PUNTUACION_DURA.ID_H_DURA=H_DURA.ID_H_DURA
WHERE ID_TRABAJO=@ID_TRABAJO
ORDER BY PUNTUACION_DURA.PUNTOS DESC
GO


CREATE PROCEDURE LISTAR_PUNTOS_BLANDA_PERSONA 
(
	@ID_TRABAJO INT
)
AS 
SELECT H_BLANDA.NOMBRE_HABILIDAD,PUNTUACION_BLANDA.PUNTOS
FROM PUNTUACION_BLANDA
INNER JOIN H_BLANDA ON PUNTUACION_BLANDA.ID_H_BLANDA=H_BLANDA.ID_H_BLANDA
WHERE ID_TRABAJO=@ID_TRABAJO
ORDER BY PUNTUACION_BLANDA.PUNTOS DESC
GO

CREATE PROCEDURE LISTAR_RUBR_H_BLANDA
AS
select RUBRO from H_BLANDA
group by RUBRO
go

CREATE PROCEDURE LISTAR_RUBR_H_DURA 
AS
select RUBRO from H_DURA 
group by RUBRO
go

CREATE PROCEDURE LISTAR_HABILIDAD_H_BLANDA_RUBRO 
(
	@RUBRO VARCHAR(100)
)
AS
SELECT * FROM H_BLANDA
WHERE RUBRO= @RUBRO
GO



CREATE PROCEDURE LISTAR_HABILIDAD_H_DURA_RUBRO 
(
	@RUBRO VARCHAR(100)
)
AS
SELECT * FROM H_DURA 
WHERE RUBRO= @RUBRO
GO

CREATE PROCEDURE DETALLES_PUNTUACION_DURA
(
	@DNI CHAR(8),
	@ID_HABILIDAD INT
)
AS
SELECT EMPRESA.RAZON_SOCIAL, H_DURA.NOMBRE_HABILIDAD,PUNTUACION_DURA.PUNTOS,TRABAJO.FECHA_INICIO,
TRABAJO.FECHA_FIN,PUESTO.NOMBRE_PUESTO
 FROM PUNTUACION_DURA
INNER JOIN H_DURA ON PUNTUACION_DURA.ID_H_DURA= H_DURA.ID_H_DURA
INNER JOIN TRABAJO ON PUNTUACION_DURA.ID_TRABAJO = TRABAJO.ID_TRABAJO
INNER JOIN EMPRESA ON TRABAJO.RUC = EMPRESA.RUC
INNER JOIN PERSONA ON TRABAJO.DNI = PERSONA.DNI
INNER JOIN PUESTO ON TRABAJO.ID_PUESTO=PUESTO.ID_PUESTO
WHERE PUNTUACION_DURA.ID_H_DURA =@ID_HABILIDAD AND TRABAJO.DNI=@DNI
ORDER BY TRABAJO.FECHA_FIN DESC
GO

CREATE PROCEDURE DETALLES_PUNTUACION_BLANDA
(
	@DNI CHAR(8),
	@ID_HABILIDAD INT
)
AS
SELECT EMPRESA.RAZON_SOCIAL, H_BLANDA.NOMBRE_HABILIDAD,PUNTUACION_BLANDA.PUNTOS,TRABAJO.FECHA_INICIO,
TRABAJO.FECHA_FIN,PUESTO.NOMBRE_PUESTO
 FROM PUNTUACION_BLANDA
INNER JOIN H_BLANDA ON PUNTUACION_BLANDA.ID_H_BLANDA= H_BLANDA.ID_H_BLANDA
INNER JOIN TRABAJO ON PUNTUACION_BLANDA.ID_TRABAJO = TRABAJO.ID_TRABAJO
INNER JOIN EMPRESA ON TRABAJO.RUC = EMPRESA.RUC
INNER JOIN PERSONA ON TRABAJO.DNI = PERSONA.DNI
INNER JOIN PUESTO ON TRABAJO.ID_PUESTO=PUESTO.ID_PUESTO
WHERE PUNTUACION_BLANDA.ID_H_BLANDA =@ID_HABILIDAD AND TRABAJO.DNI=@DNI
ORDER BY TRABAJO.FECHA_FIN DESC
GO

create procedure listar_rubro_puesto
as
select rubro from PUESTO
group by RUBRO
order by RUBRO
go

create procedure listar_puesto_x_rubro 
(
	@rubro varchar(100)
)
as
select * from puesto
where rubro =@rubro
go
	/*
	SELECT * FROM PERSONA
	GO

	SELECT  * FROM PERSONA_CARRERA
	GO

	SELECT * FROM CARRERA
	GO*/

USE [RED_LABORAL]
GO
/****** Object:  StoredProcedure [dbo].[LISTAR_RED_LABORAL]    Script Date: 08/07/2018 01:17:38 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[LISTAR_RED_LABORAL] 
(
	@ID_PUESTO INT,
	@ID_TIPOCONTRATO  INT

)
AS
IF @ID_PUESTO IS NULL AND @ID_TIPOCONTRATO  IS NULL 
	SELECT ID_OFERTA , RUC , TITULO , LUGAR , ID_PUESTO , DESCRIP , ID_JORNADA , FUNCIONES , REQUISITOS , ID_TIPOCONTRATO , COMPETENCIAS , ESTADO 
	FROM   OFERTA_LABORAL
ELSE IF @ID_PUESTO IS NOT  NULL AND @ID_TIPOCONTRATO  IS  NULL 
	SELECT ID_OFERTA , RUC , TITULO , LUGAR , ID_PUESTO , DESCRIP , ID_JORNADA , FUNCIONES , REQUISITOS , ID_TIPOCONTRATO , COMPETENCIAS , ESTADO 
	FROM   OFERTA_LABORAL
	WHERE  ID_PUESTO = @ID_PUESTO  
ELSE IF  @ID_PUESTO IS  NULL AND @ID_TIPOCONTRATO  IS NOT  NULL
	SELECT ID_OFERTA , RUC , TITULO , LUGAR , ID_PUESTO , DESCRIP , ID_JORNADA , FUNCIONES , REQUISITOS , ID_TIPOCONTRATO , COMPETENCIAS , ESTADO 
	FROM   OFERTA_LABORAL
	WHERE  ID_TIPOCONTRATO = @ID_TIPOCONTRATO  
ELSE IF  @ID_PUESTO IS NOT NULL AND @ID_TIPOCONTRATO   IS  NOT NULL
	SELECT ID_OFERTA , RUC , TITULO , LUGAR , ID_PUESTO , DESCRIP , ID_JORNADA , FUNCIONES , REQUISITOS , ID_TIPOCONTRATO , COMPETENCIAS , ESTADO 
	FROM   OFERTA_LABORAL
	WHERE  ID_TIPOCONTRATO = @ID_TIPOCONTRATO  
	AND   ID_PUESTO = @ID_PUESTO 
