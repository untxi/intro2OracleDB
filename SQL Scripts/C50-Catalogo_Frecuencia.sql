CREATE TABLE FRECUENCIA
(
  FRECUENCIA_ID NUMBER(6),
  CONSTRAINT PK_FRECUENCIA PRIMARY KEY(FRECUENCIA_ID),
  NOMBRE VARCHAR2(15) CONSTRAINT FRECUENCIA_NOMBRE_NN NOT NULL
);