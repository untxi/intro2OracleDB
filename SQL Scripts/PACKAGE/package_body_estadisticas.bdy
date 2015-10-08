/*
Fecha: 07/10/2015
Autor: Samantha Arburola
Descripcion: Estadisticas de informaciOn por cAtalogos de los usuario
*/

create or replace package body estadisticas is

       function count_personas
         return number
                is
                vResult number;
             begin
                select count(*) into vResult from persona;
                
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       function count_mujeres 
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.genero = 'F';
                
                return vResult;
             end; 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --       
       function count_hombres 
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.genero = 'M';
                
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  
       procedure count_edad
       is
       
       cantENrango number;
       
       cursor resultado_E is
         select edad_id, rango_inicio, rango_final
         from edad;
             
        begin
        
           for rango in resultado_E  
             loop
               select count(*) into cantENrango
               from persona
               where rango.rango_inicio <= get_edad(persona.persona_id)
                     and
                    get_edad(persona.persona_id) <= rango.rango_final;
               dbms_output.put_line(rango.rango_inicio ||' a '|| rango.rango_final ||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_nacionalidad
         is
       
       cantENrango number;
       
       cursor resultado_N is
         select pais_id,nombre
         from pais;
             
        begin
        
           for pais in resultado_N 
             loop
               select count(*) into cantENrango
               from persona 
               where nacionalidad_id = pais.pais_id;
               dbms_output.put_line(pais.nombre||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --       
       /*
       procedure count_pais
         is
       
       cantENrango number;
       
       cursor resultado_N is
         select pais_id,nombre
         from pais;
             
        begin
          
          
           dbms_output.put_line(pais.nombre||' = '|| cantENrango);
             
         end;
         */
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_ciudad
         is
       
       cantENrango number;
       
       cursor resultado is
         select ciudad_id,ciudad
         from ciudad;
             
        begin
        
           for ciudad in resultado 
             loop
               select count(*) into cantENrango
               from persona 
               where persona.ciudad_id = ciudad.ciudad_id;
               dbms_output.put_line(ciudad.ciudad||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_religion
         is
       
       cantENrango number;
       
       cursor resultado is
         select religion_id,nombre
         from religion;
             
        begin
        
           for religion in resultado 
             loop
               select count(*) into cantENrango
               from persona 
               where persona.religion_id = religion.religion_id;
               dbms_output.put_line(religion.nombre||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_zodiaco
         is
       
       cantENrango number;
       
       cursor resultado is
         select zodiaco_id,signo
         from signo_zodiacal;
             
        begin
        
           for signo in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.zodiaco_id = signo.zodiaco_id;
               dbms_output.put_line(signo.signo||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_est_civil
         is
       
       cantENrango number;
       
       cursor resultado is
         select est_civil_id,estado
         from est_civil;
             
        begin
        
           for estado in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.est_civil_id = estado.est_civil_id;
               dbms_output.put_line(estado.estado||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       function count_can_hijos
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.cant_hijos > 0;
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       function count_quiere_hijos
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.quiere_hijos = 'T';
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_altura
         is
       
       cantENrango number;
       
       cursor resultado is
         select altura_id,rango
         from altura;
             
        begin
        
           for rango in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.altura_id = rango.altura_id;
               dbms_output.put_line(rango.rango||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_peso
         is
       
       cantENrango number;
       
       cursor resultado is
         select peso_id, rango
         from peso;
             
        begin
        
           for rango in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.peso_id = rango.peso_id;
               dbms_output.put_line(rango.rango||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_contextura
         is
       
       cantENrango number;
       
       cursor resultado is
         select contextura_id,tipo
         from contextura;
             
        begin
        
           for rango in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.peso_id = rango.contextura_id;
               dbms_output.put_line(rango.tipo||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_piel
         is
       
       cantENrango number;
       
       cursor resultado is
         select cpiel_id,nombre
         from cpiel;
             
        begin
        
           for color in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.cpiel_id = color.cpiel_id;
               dbms_output.put_line(color.nombre||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_ojos
         is
       
       cantENrango number;
       
       cursor resultado is
         select cojos_id,color
         from cojos;
             
        begin
        
           for color in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.cojos_id = color.cojos_id;
               dbms_output.put_line(color.color||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_cabello
         is
       
       cantENrango number;
       
       cursor resultado is
         select ccabello_id,nombre
         from ccabello;
             
        begin
        
           for color in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.ccabello_id = color.ccabello_id;
               dbms_output.put_line(color.nombre||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_escolaridad
         is
       
       cantENrango number;
       
       cursor resultado is
         select escolaridad_id,nivel
         from escolaridad;
             
        begin
        
           for nivel in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.escolaridad_id = nivel.escolaridad_id;
               dbms_output.put_line(nivel.nivel||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_ocupacion
         is
       
       cantENrango number;
       
       cursor resultado is
         select ocupacion_id,nivel
         from ocupacion;
             
        begin
        
           for nivel in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.ocupacion_id = nivel.ocupacion_id;
               dbms_output.put_line(nivel.nivel||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       procedure count_salario
         is
       
       cantENrango number;
       
       cursor resultado is
         select salario_id, rango
         from salario;
             
        begin
        
           for nivel in resultado 
             loop
               select count(*) into cantENrango
               from persona
               where persona.salario_id = nivel.salario_id;
               dbms_output.put_line(nivel.rango||' = '|| cantENrango);
             end loop;
         end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       function count_afin_masc
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.afinidad_mascota = 'T';
                
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       function count_disp_masc 
        return number
                is
                vResult number;
             begin
                select count(*) into vResult 
                from persona
                where persona.disponible_mascota = 'T';
                
                return vResult;
             end;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       --procedure count_idiomas;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       --procedure count_deportes;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       --procedure count_recreativas;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       --procedure count_hobbies;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
       --procedure count_vicios;
-- -- -- -- -- -- -- -- -- -- -- -- -- -- --  -- -- -- -- --  -- -- -- -- --  -- -- -- -- --
end estadisticas;
/