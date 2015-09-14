CREATE OR REPLACE PACKAGE BODY INSERTS IS

       PROCEDURE INSERTAR_CATALOGO_CIUDAD(pCiudad, idPais)
         AS
                 INSERT INTO CIUDAD(CIUDAD_ID, CIUDAD, PAIS_ID)
                 VALUES(S_CIUDAD_ID.NEXTVAL, pCuidad, idPais);
         END INSERTAR_CATALOGO_CIUDAD;
       
       PROCEDURE INSERTAR_CATALOGO_EDAD(pRango)
         AS
                 INSERT INTO EDAD(EDAD_ID,RANGO)
                 VALUES(S_EDAD_ID.NEXTVAL, pRango)
         END INSERTAR_CATALOGO_EDAD;
         
       PROCEDURE INSERTAR_CATALOGO_VICIO(pNombre)
         AS
                 INSERT INTO VICIO(VICIO_ID, NOMBRE)
                 VALUES(S_VICIO_ID.NEXTVAL, pNombre)
         END INSERTAR_CATALOGO_VICIO;
       
       PROCEDURE INSERTAR_CATALOGO_SIGNO_ZODIACAL(pSigno, fechaInicio, fechaFinal)
         AS
                 INSERT INTO SIGNO_ZODIACAL(ZODIACO_ID,SIGNO,FECHA_INICIO,FECHA_FINAL)
                 VALUES(S_ZODIACO_ID.NEXTVAL, pSigno, fechaInicio, fechaFinal)
         END INSERTAR_CATALOGO_SIGNO_ZODIACAL;
       
       PROCEDURE INSERTAR_CATALOGO_SALARIO(pRango)
         AS
                 INSERT INTO SALARIO(SALARIO_ID,RANGO)
                 VALUES(S_SALARIO_ID.NEXTVAL, pRango)
         END INSERTAR_CATALOGO_SALARIO;
       
       PROCEDURE INSERTAR_CATALOGO_RELIGION(pNombre)
         AS
                 INSERT INTO RELIGION(RELIGION_ID, NOMBRE)
                 VALUES(S_RELIGION_ID.NEXTVAL, pNombre)
         END INSERTAR_CATALOGO_RELIGION;
       
       PROCEDURE INSERTAR_CATALOGO_PESO(pRango)
         AS
                 INSERT INTO PESO(PESO_ID,RANGO)
                 VALUES(S_PESO_ID.NEXTVAL, pRango)
         END INSERTAR_CATALOGO_PESO;

END INSERTS; 