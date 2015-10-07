-- TABLA: PERSONA
/*
Fecha: 12/09/2015
Autor: Samantha Arburola
DescripciOn: Tabla para almacenar una persona
*/

CREATE TABLE PERSONA
(
       PERSONA_ID         NUMBER(6),
       CONSTRAINT         PK_PERSONA PRIMARY KEY(PERSONA_ID),
       
       TIPO_USUARIO_ID NUMBER(6),
       CONSTRAINT FK_TIPO_USUARIO FOREIGN KEY (TIPO_USUARIO_ID) REFERENCES TIPO_USUARIO(TIPO_USUARIO_ID),
       
       --INFO GENERAL
       NOMBRE             VARCHAR2(20)    CONSTRAINT PERSONA_NOMBRE_NN 		 	        NOT NULL,
       PRIMER_APELLIDO    VARCHAR2(20)    CONSTRAINT PERSONA_PRIMER_APELLIDO_NN     NOT NULL,
       SEGUNDO_APELLIDO   VARCHAR2(20)    CONSTRAINT PERSONA_SEGUNDO_APELLIDO_NN    NOT NULL,
       NACIMIENTO         DATE            CONSTRAINT PERSONA_NACIMIENTO_NN 		      NOT NULL,
       GENERO			        CHAR(1)		      CONSTRAINT PERSONA_GENERO_NN				      NOT NULL,
       FOTO               VARCHAR2(20)    CONSTRAINT PERSONA_FOTO_NN 			          NOT NULL,
       SLOGAN             VARCHAR2(150)   CONSTRAINT PERSONA_SLOGAN_NN			        NOT NULL,
       AFINIDAD_MASCOTA   CHAR(1)         CONSTRAINT PERSONA_AFINIDAD_MASCOTA_NN    NOT NULL,
       DISPONIBLE_MASCOTA CHAR(1)         CONSTRAINT PERSONA_DISPONIBLE_MASCOTA_NN  NOT NULL,
       CANT_HIJOS         NUMBER(2)       CONSTRAINT PERSONA_CANT_HIJOS_NN 		    	NOT NULL,
       QUIERE_HIJOS       CHAR(1)         CONSTRAINT PERSONA_QUIERE_HIJOS_NN		    NOT NULL,
       
       -- foreign KEYS
       
       EST_CIVIL_ID number(6),
       constraint FK_EST_CIVIL foreign key (EST_CIVIL_ID) references EST_CIVIL(EST_CIVIL_ID),

       CIUDAD_ID NUMBER(6),
       CONSTRAINT FK_CIUDAD FOREIGN KEY (CIUDAD_ID) REFERENCES CIUDAD(CIUDAD_ID),
       
       nacionalidad_ID NUMBER(6),
       CONSTRAINT FK_PAIS FOREIGN KEY (PAIS_ID) REFERENCES PAIS(PAIS_ID),
       
       RELIGION_ID NUMBER(6),
       CONSTRAINT FK_RELIGION FOREIGN KEY (RELIGION_ID) REFERENCES RELIGION(RELIGION_ID),
       
       ZODIACO_ID NUMBER(6),
       CONSTRAINT FK_ZODIACO FOREIGN KEY (ZODIACO_ID) REFERENCES SIGNO_ZODIACAL(ZODIACO_ID),
       
       -- ASPECTO FISICO
       ALTURA_ID NUMBER(6),
       CONSTRAINT FK_ALTURA FOREIGN KEY (ALTURA_ID) REFERENCES ALTURA(ALTURA_ID),
       PESO_ID NUMBER(6),
       CONSTRAINT FK_PESO FOREIGN KEY (PESO_ID) REFERENCES PESO(PESO_ID),
       CONTEXTURA_ID NUMBER(6),
       CONSTRAINT FK_CONTEXTURA FOREIGN KEY (CONTEXTURA_ID) REFERENCES CONTEXTURA(CONTEXTURA_ID),
       CPIEL_ID NUMBER(6),
       CONSTRAINT FK_CPIEL FOREIGN KEY (CPIEL_ID) REFERENCES CPIEL(CPIEL_ID),
       COJOS_ID NUMBER(6),
       CONSTRAINT FK_COJOS FOREIGN KEY (COJOS_ID) REFERENCES COJOS(COJOS_ID),
       CCABELLO_ID NUMBER(6),
       CONSTRAINT FK_CCABELLO FOREIGN KEY (CCABELLO_ID) REFERENCES CCABELLO(CCABELLO_ID),
       
       --BACKGROUND
       OCUPACION_ID NUMBER(6),
       CONSTRAINT FK_OCUPACION FOREIGN KEY (OCUPACION_ID) REFERENCES OCUPACION(OCUPACION_ID),
       SALARIO_ID NUMBER(6),
       CONSTRAINT FK_SALARIO FOREIGN KEY (SALARIO_ID) REFERENCES SALARIO(SALARIO_ID),
       ESCOLARIDAD_ID NUMBER(6),
       CONSTRAINT FK_ESCOLARIDAD FOREIGN KEY (ESCOLARIDAD_ID) REFERENCES ESCOLARIDAD(ESCOLARIDAD_ID),   
       
       cant_wink  number(6),
       cant_match number(6),
       cant_visit number(6),
       
       -- Atributos de Auditoria
       Fec_creacion 	  DATE,
       Usuario_creacion   VARCHAR2(10),
       Fec_ultima_modificacion     DATE,
       Usuario_ultima_modificacion VARCHAR2(10)
);

COMMENT ON TABLE PERSONA IS 'TABLA DE INFORMACION DE PERSONAS';
