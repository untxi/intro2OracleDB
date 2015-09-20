-- TABLA: DEPORTE POR PERSONA
CREATE TABLE DEPORTE_X_PERSONA
(
       DEPORTE_ID NUMBER(6),
       CONSTRAINT FK_DEPORTE FOREIGN KEY(DEPORTE_ID) REFERENCES DEPORTE(DEPORTE_ID),
       
       PERSONA_ID NUMBER(6),
       CONSTRAINT FK_PERSONA_DxP FOREIGN KEY (PERSONA_ID) REFERENCES PERSONA(PERSONA_ID),
       
       CONSTRAINT PK_DEPORTE_X_PERSONA PRIMARY KEY (DEPORTE_ID, PERSONA_ID),
       
       FRECUENCIA_ID NUMBER(6),
       CONSTRAINT FK_FRECUENCIA_DxP FOREIGN KEY (FRECUENCIA_ID) REFERENCES FRECUENCIA(FRECUENCIA_ID),
       
       -- Atributos de Auditoria
       Fec_creacion 	  DATE,
       Usuario_creacion   VARCHAR2(10),
       Fec_ultima_modificacion     DATE,
       Usuario_ultima_modificacion VARCHAR2(10)
);

COMMENT ON TABLE DEPORTE_X_PERSONA IS 'TABLA DE LOS DEPORTES QUE PRACTICA UNA PERSONA';
