--------------------------------------------------------
-- Archivo creado  - lunes-julio-11-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "U_NEORIS_OPERACION"."HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NEORIS_OPERACION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "U_NEORIS_OPERACION"."NEORIS_OPERACION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NEORIS_TIPO_CAMBIO_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AUDITORIA
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."AUDITORIA" 
   (	"ID" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"FECHA_REGISTRO" VARCHAR2(255 CHAR), 
	"TIPO_MODIFICACION" VARCHAR2(255 CHAR), 
	"USUARIO" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MONEDA
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."MONEDA" 
   (	"ID" NUMBER(10,0), 
	"DESCRIPCION" VARCHAR2(255 CHAR), 
	"MONEDA_BASE" NUMBER(1,0), 
	"SIMBOLO" VARCHAR2(255 CHAR), 
	"VALOR" NUMBER(19,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NEORIS_OPERACION
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."NEORIS_OPERACION" 
   (	"ID_OPERACION" NUMBER, 
	"NU_MONTO_INICIAL" NUMBER(8,3), 
	"TIPO_CAMBIO" VARCHAR2(20 BYTE), 
	"NU_MONTO_FINAL" VARCHAR2(20 BYTE), 
	"NU_ID_USUARIO_REGISTRA" NUMBER, 
	"NU_ID_USUARIO_ACTUALIZA" NUMBER, 
	"NU_ID_USUARIO_ELIMINA" NUMBER, 
	"FECHA_REG" DATE DEFAULT sysdate, 
	"FECHA_MOD" DATE DEFAULT sysdate, 
	"FECHA_ELI" DATE DEFAULT sysdate, 
	"ESTADO" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NEORIS_TIPO_CAMBIO
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO" 
   (	"ID_TIPO_CAMBIO" NUMBER, 
	"TXT_CODIGO" VARCHAR2(20 BYTE), 
	"TXT_DESCRIPCION" VARCHAR2(200 BYTE), 
	"NU_MONTO" NUMBER(8,3), 
	"NU_ID_USUARIO_REGISTRA" NUMBER, 
	"NU_ID_USUARIO_ACTUALIZA" NUMBER, 
	"NU_ID_USUARIO_ELIMINA" NUMBER, 
	"FECHA_REG" DATE DEFAULT sysdate, 
	"FECHA_MOD" DATE DEFAULT sysdate, 
	"FECHA_ELI" DATE DEFAULT sysdate, 
	"ESTADO" CHAR(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROL
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."ROL" 
   (	"ID_ROL" NUMBER(10,0), 
	"DESCRIPCION" VARCHAR2(255 CHAR), 
	"NOMBRE" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."USUARIO" 
   (	"ID_USUARIO" NUMBER(10,0), 
	"ESTADO" NUMBER(1,0), 
	"CLAVE" VARCHAR2(255 CHAR), 
	"NOMBRE" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO_ROL
--------------------------------------------------------

  CREATE TABLE "U_NEORIS_OPERACION"."USUARIO_ROL" 
   (	"ID_USUARIO" NUMBER(10,0), 
	"ID_ROL" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into U_NEORIS_OPERACION.AUDITORIA
SET DEFINE OFF;
REM INSERTING into U_NEORIS_OPERACION.MONEDA
SET DEFINE OFF;
REM INSERTING into U_NEORIS_OPERACION.NEORIS_OPERACION
SET DEFINE OFF;
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('7','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('8','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('9','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('10','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('11','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('12','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('13','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('14','158','D','613,04','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('1','150','D','582','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('2','150','D','582','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('3','157','E','617,01','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('4','188','E','738,84','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('5','188','E','738,84','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('6','278','E','1092,54','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
REM INSERTING into U_NEORIS_OPERACION.NEORIS_TIPO_CAMBIO
SET DEFINE OFF;
Insert into U_NEORIS_OPERACION.NEORIS_TIPO_CAMBIO (ID_TIPO_CAMBIO,TXT_CODIGO,TXT_DESCRIPCION,NU_MONTO,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('1','D','DOLAR','3,88','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
Insert into U_NEORIS_OPERACION.NEORIS_TIPO_CAMBIO (ID_TIPO_CAMBIO,TXT_CODIGO,TXT_DESCRIPCION,NU_MONTO,NU_ID_USUARIO_REGISTRA,NU_ID_USUARIO_ACTUALIZA,NU_ID_USUARIO_ELIMINA,FECHA_REG,FECHA_MOD,FECHA_ELI,ESTADO) values ('2','E','EURO','3,93','1',null,null,to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),to_date('11/07/2022','DD/MM/RRRR'),'A');
REM INSERTING into U_NEORIS_OPERACION.ROL
SET DEFINE OFF;
REM INSERTING into U_NEORIS_OPERACION.USUARIO
SET DEFINE OFF;
REM INSERTING into U_NEORIS_OPERACION.USUARIO_ROL
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index OPERACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."OPERACION_PK" ON "U_NEORIS_OPERACION"."NEORIS_OPERACION" ("ID_OPERACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008559
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008559" ON "U_NEORIS_OPERACION"."AUDITORIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008564
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008564" ON "U_NEORIS_OPERACION"."MONEDA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008566
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008566" ON "U_NEORIS_OPERACION"."ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008571
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008571" ON "U_NEORIS_OPERACION"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_CAMBIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."TIPO_CAMBIO_PK" ON "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO" ("ID_TIPO_CAMBIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UK_CTO7DKTI4T38IQ8R4CQESBD8K
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."UK_CTO7DKTI4T38IQ8R4CQESBD8K" ON "U_NEORIS_OPERACION"."USUARIO" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008559
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008559" ON "U_NEORIS_OPERACION"."AUDITORIA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008564
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008564" ON "U_NEORIS_OPERACION"."MONEDA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index OPERACION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."OPERACION_PK" ON "U_NEORIS_OPERACION"."NEORIS_OPERACION" ("ID_OPERACION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_CAMBIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."TIPO_CAMBIO_PK" ON "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO" ("ID_TIPO_CAMBIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008566
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008566" ON "U_NEORIS_OPERACION"."ROL" ("ID_ROL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008571
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."SYS_C008571" ON "U_NEORIS_OPERACION"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UK_CTO7DKTI4T38IQ8R4CQESBD8K
--------------------------------------------------------

  CREATE UNIQUE INDEX "U_NEORIS_OPERACION"."UK_CTO7DKTI4T38IQ8R4CQESBD8K" ON "U_NEORIS_OPERACION"."USUARIO" ("NOMBRE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Package NEO_PKG_OPER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "U_NEORIS_OPERACION"."NEO_PKG_OPER" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
  
   PROCEDURE  NEO_SP_INSERT_OPERACION(
         p_id_operacion IN NUMBER,
         p_monto IN NUMBER,
         p_tipo_cambio IN VARCHAR2,
          out_retorno  OUT NUMBER
    );
    
    PROCEDURE  NEO_SP_SELECT_OPERACION_POR_TIPO(
        p_tipo_cambio IN VARCHAR2,
        p_resultset OUT SYS_REFCURSOR
    );
    
    PROCEDURE  NEO_SP_SELECT_OPERACION(
        p_id_operacion IN NUMBER,
        p_resultset OUT SYS_REFCURSOR
    );
    
    PROCEDURE  NEO_SP_SELECT_TIPO_CAMBIO(
        p_resultset OUT SYS_REFCURSOR
    );
    
    PROCEDURE DEN_SP_UPDATE_OPERACION(
    P_ID_OPERACION IN NUMBER,
    P_ID_USUARIO IN NUMBER
    );
   
END NEO_PKG_OPER;

/
--------------------------------------------------------
--  DDL for Package Body NEO_PKG_OPER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "U_NEORIS_OPERACION"."NEO_PKG_OPER" AS

  PROCEDURE  NEO_SP_INSERT_OPERACION(
         p_id_operacion IN NUMBER,
         p_monto IN NUMBER,
         p_tipo_cambio IN VARCHAR2,
          out_retorno  OUT NUMBER
    ) AS
    V_MONTO_CAMBIO NUMBER;
    V_IDE_ID_OPERACION NUMBER;
  BEGIN
   
   SELECT NU_MONTO INTO V_MONTO_CAMBIO FROM NEORIS_TIPO_CAMBIO WHERE TXT_CODIGO=p_tipo_cambio;
   
   IF V_MONTO_CAMBIO IS NOT NULL AND V_MONTO_CAMBIO>0 THEN
   
       V_IDE_ID_OPERACION:=NEORIS_TIPO_CAMBIO_SEQ.nextval;
       INSERT INTO NEORIS_OPERACION (ID_OPERACION,NU_MONTO_INICIAL,TIPO_CAMBIO,NU_MONTO_FINAL,NU_ID_USUARIO_REGISTRA,FECHA_REG,ESTADO) 
                              VALUES(V_IDE_ID_OPERACION,p_monto,p_tipo_cambio,p_monto*V_MONTO_CAMBIO,1,SYSDATE,'A'); commit;
         out_retorno:=V_IDE_ID_OPERACION;                      
   END IF;
   
  END NEO_SP_INSERT_OPERACION;
  
  
  
  PROCEDURE  NEO_SP_SELECT_OPERACION (
        p_id_operacion IN NUMBER,
        p_resultset OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN p_resultset FOR

    SELECT id_operacion idOperacion, nu_monto_inicial montoInicial,
    (select TXT_DESCRIPCION from neoris_tipo_cambio TC where  TC.TXT_CODIGO=TIPO_CAMBIO) tipoCambio,
    nu_monto_final montoFinal,
    (select NU_MONTO from neoris_tipo_cambio TC where  TC.TXT_CODIGO=TIPO_CAMBIO) valorCambio
    
    from neoris_operacion WHERE ID_OPERACION=p_id_operacion;

    END NEO_SP_SELECT_OPERACION;
    
    
      PROCEDURE  NEO_SP_SELECT_OPERACION_POR_TIPO (
        p_tipo_cambio IN VARCHAR2,
        p_resultset OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN p_resultset FOR

    SELECT id_operacion idOperacion, nu_monto_inicial montoInicial,
    (select TXT_DESCRIPCION from neoris_tipo_cambio TC where  TC.TXT_CODIGO=TIPO_CAMBIO) tipoCambio,
    nu_monto_final montoFinal,
    (select NU_MONTO from neoris_tipo_cambio TC where  TC.TXT_CODIGO=TIPO_CAMBIO) valorCambio
    
    from neoris_operacion where TIPO_CAMBIO=p_tipo_cambio;

    END NEO_SP_SELECT_OPERACION_POR_TIPO;
    
    PROCEDURE  NEO_SP_SELECT_TIPO_CAMBIO (
        p_resultset OUT SYS_REFCURSOR
    )IS
    BEGIN
    OPEN p_resultset FOR

    select 
    TC.ID_TIPO_CAMBIO idtipoCambio ,
    TC.NU_MONTO monto,
    TC.TXT_CODIGO codigo,
    TC.TXT_DESCRIPCION tipoCambio
    from neoris_tipo_cambio TC;

    END NEO_SP_SELECT_TIPO_CAMBIO;
    
    
    PROCEDURE DEN_SP_UPDATE_OPERACION(
    P_ID_OPERACION IN NUMBER,
    P_ID_USUARIO IN NUMBER
)
IS
BEGIN

     UPDATE   NEORIS_OPERACION
            SET
                ESTADO = 'I',
                FECHA_MOD = sysdate,
                nu_id_usuario_actualiza = P_ID_USUARIO
            where
                ID_OPERACION = P_ID_OPERACION;
END DEN_SP_UPDATE_OPERACION; 

END NEO_PKG_OPER;

/
--------------------------------------------------------
--  Constraints for Table AUDITORIA
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."AUDITORIA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."AUDITORIA" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MONEDA
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."MONEDA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."MONEDA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."MONEDA" MODIFY ("MONEDA_BASE" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."MONEDA" MODIFY ("VALOR" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."MONEDA" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NEORIS_OPERACION
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."NEORIS_OPERACION" MODIFY ("ID_OPERACION" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."NEORIS_OPERACION" ADD CONSTRAINT "OPERACION_PK" PRIMARY KEY ("ID_OPERACION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NEORIS_TIPO_CAMBIO
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO" MODIFY ("ID_TIPO_CAMBIO" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."NEORIS_TIPO_CAMBIO" ADD CONSTRAINT "TIPO_CAMBIO_PK" PRIMARY KEY ("ID_TIPO_CAMBIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROL
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."ROL" ADD PRIMARY KEY ("ID_ROL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" MODIFY ("CLAVE" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" ADD PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO" ADD CONSTRAINT "UK_CTO7DKTI4T38IQ8R4CQESBD8K" UNIQUE ("NOMBRE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO_ROL
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO_ROL" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO_ROL" MODIFY ("ID_ROL" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table USUARIO_ROL
--------------------------------------------------------

  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO_ROL" ADD CONSTRAINT "FKKXCV7HTFNM9X1WKOFNUD0EWQL" FOREIGN KEY ("ID_ROL")
	  REFERENCES "U_NEORIS_OPERACION"."ROL" ("ID_ROL") ENABLE;
  ALTER TABLE "U_NEORIS_OPERACION"."USUARIO_ROL" ADD CONSTRAINT "FK3FTPT75EBUGHSIY5G03B11AKT" FOREIGN KEY ("ID_USUARIO")
	  REFERENCES "U_NEORIS_OPERACION"."USUARIO" ("ID_USUARIO") ENABLE;
