--TABLA ESCOLARIDAD
CREATE TABLE ESCOLARIDAD
(
  ESCOLARIDAD_ID NUMBER(6),
  CONSTRAINT PK_ESCOLARIDAD PRIMARY KEY(ESCOLARIDAD_ID),
  NIVEL VARCHAR2(50) CONSTRAINT ESCOLARIDAD_NIVEL_NN NOT NULL
);
