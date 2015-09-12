-- CATALOGO: ACTIVIDAD RECREATIVA
CREATE TABLE ACTIVIDAD_RECREATIVA
(
  ACTIVIDAD_RECREATIVA_ID NUMBER(6),
  CONSTRAINT PK_ACTIVIDAD_RECREATIVA PRIMARY KEY(ACTIVIDAD_RECREATIVA_ID),
  NOMBRE VARCHAR2(15) CONSTRAINT ACTIVIDAD_RECREATIVA_NOMBRE_NN NOT NULL,
  -- Atributos de Auditoria
       Fec_creacion 	  DATE,
       Usuario_creacion   VARCHAR2(10),
       Fec_ultima_modificacion     DATE,
       Usuario_ultima_modificacion VARCHAR2(10)
);

COMMENT TABLE ACTIVIDAD_RECREATIVA IS 'CATALOGO DE ACTIVIDAD RECREATIVA';
