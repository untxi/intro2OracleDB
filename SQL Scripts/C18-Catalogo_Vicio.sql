CREATE TABLE VICIO
(
  VICIO_ID NUMBER(6),
  CONSTRAINT PK_VICIO PRIMARY KEY(VICIO_ID),
  NOMBRE VARCHAR2(15) CONSTRAINT VICIO_NOMBRE_NN NOT NULL
);