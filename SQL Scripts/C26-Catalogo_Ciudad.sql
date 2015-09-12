-- CATALOGO: CIUDAD

CREATE TABLE CIUDAD
(
  CIUDAD_ID NUMBER(6),
  CONSTRAINT PK_CIUDAD PRIMARY KEY(CIUDAD_ID),
  CIUDAD VARCHAR2(50) CONSTRAINT CIUDAD_CIUDAD_NN NOT NULL,
  
  -- Atributos de Auditoria
       Fec_creacion 	  DATE,
       Usuario_creacion   VARCHAR2(10),
       Fec_ultima_modificacion     DATE,
       Usuario_ultima_modificacion VARCHAR2(10)

);

COMMENT ON TABLE CIUDAD IS 'CATALOGO PARA CIUDAD';
