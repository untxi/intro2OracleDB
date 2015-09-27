-- TABLA: BUSCAR
CREATE TABLE BUSCAR
(
       BUSCAR_ID          NUMBER(6),
       CONSTRAINT         PK_BUSCAR PRIMARY KEY(BUSCAR_ID),
       
       PERSONA_ID NUMBER(6),
       CONSTRAINT FK_PERSONA_B FOREIGN KEY (PERSONA_ID) REFERENCES PERSONA(PERSONA_ID),
       
       --INFO GENERAL
       EDAD               VARCHAR(20)     CONSTRAINT BUSCAR_EDAD_NN       		     NOT NULL,
       GENERO			        CHAR(1)		      CONSTRAINT BUSCAR_GENERO_NN				       NOT NULL,
       AFINIDAD_MASCOTA   CHAR(1)         CONSTRAINT BUSCAR_AFINIDAD_MASCOTA_NN    NOT NULL,
       DISPONIBLE_MASCOTA CHAR(1)         CONSTRAINT BUSCAR_DISPONIBLE_MASCOTA_NN  NOT NULL,
       CANT_HIJOS         NUMBER(2)       CONSTRAINT BUSCAR_CANT_HIJOS_NN 		     NOT NULL,
       QUIERE_HIJOS       CHAR(1)         CONSTRAINT BUSCAR_QUIERE_HIJOS_NN		     NOT NULL,
       
       -- foreign KEYS
       EST_CIVIL_ID number(6),
       constraint FK_EST_CIVIL_B foreign key (EST_CIVIL_ID) references EST_CIVIL(EST_CIVIL_ID),
       
       CIUDAD_ID NUMBER(6),
       CONSTRAINT FK_CIUDAD_B FOREIGN KEY (CIUDAD_ID) REFERENCES CIUDAD(CIUDAD_ID),
       PAIS_ID NUMBER(6),
       CONSTRAINT FK_PAIS_B FOREIGN KEY (PAIS_ID) REFERENCES PAIS(PAIS_ID),
       
       RELIGION_ID NUMBER(6),
       CONSTRAINT FK_RELIGION_B FOREIGN KEY (RELIGION_ID) REFERENCES RELIGION(RELIGION_ID),
       
       ZODIACO_ID NUMBER(6),
       CONSTRAINT FK_ZODIACO_B FOREIGN KEY (ZODIACO_ID) REFERENCES SIGNO_ZODIACAL(ZODIACO_ID),
       
       -- ASPECTO FISICO
       ALTURA_ID NUMBER(6),
       CONSTRAINT FK_ALTURA_B FOREIGN KEY (ALTURA_ID) REFERENCES ALTURA(ALTURA_ID),
       PESO_ID NUMBER(6),
       CONSTRAINT FK_PESO_B FOREIGN KEY (PESO_ID) REFERENCES PESO(PESO_ID),
       CONTEXTURA_ID NUMBER(6),
       CONSTRAINT FK_CONTEXTURA_B FOREIGN KEY (CONTEXTURA_ID) REFERENCES CONTEXTURA(CONTEXTURA_ID),
       CPIEL_ID NUMBER(6),
       CONSTRAINT FK_CPIEL_B FOREIGN KEY (CPIEL_ID) REFERENCES CPIEL(CPIEL_ID),
       COJOS_ID NUMBER(6),
       CONSTRAINT FK_COJOS_B FOREIGN KEY (COJOS_ID) REFERENCES COJOS(COJOS_ID),
       CCABELLO_ID NUMBER(6),
       CONSTRAINT FK_CCABELLO_B FOREIGN KEY (CCABELLO_ID) REFERENCES CCABELLO(CCABELLO_ID),
       
       --BACKGROUND
       IDIOMA_ID NUMBER(6),
       CONSTRAINT FK_IDIOMA_B FOREIGN KEY (IDIOMA_ID) REFERENCES IDIOMA(IDIOMA_ID),
       OCUPACION_ID NUMBER(6),
       CONSTRAINT FK_OCUPACION_B FOREIGN KEY (OCUPACION_ID) REFERENCES OCUPACION(OCUPACION_ID),
       SALARIO_ID NUMBER(6),
       CONSTRAINT FK_SALARIO_B FOREIGN KEY (SALARIO_ID) REFERENCES SALARIO(SALARIO_ID),
       ESCOLARIDAD_ID NUMBER(6),
       CONSTRAINT FK_ESCOLARIDAD_B FOREIGN KEY (ESCOLARIDAD_ID) REFERENCES ESCOLARIDAD(ESCOLARIDAD_ID),    
       
       -- Atributos de Auditoria
       Fec_creacion 	  DATE,
       Usuario_creacion   VARCHAR2(10),
       Fec_ultima_modificacion     DATE,
       Usuario_ultima_modificacion VARCHAR2(10)
);

COMMENT ON TABLE BUSCAR IS 'TABLA DE INFORMACION DE MIS PREFERENCIA PARA BUSCAR PERSONAS';
