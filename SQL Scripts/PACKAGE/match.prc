create or replace procedure match (pPersona_id number, resultado_match sys_refcursor) is

    cursor porBuscar is
    select *
    from buscar
    where buscar.persona_id = pPersona_id;
    
    --cursor personas;
    begin
     open resultado_match for
     SELECT persona_id, nombre, primer_apellido, segundo_apellido
     FROM persona
     where
     --edad
     ( get_edad_ini(porBuscar.Edad_Id) <= get_edad(persona.persona_id) and get_edad(persona.persona_id) <= get_edad_fin(porBuscar.Edad_Id))
     --genero
     and (porBuscar.Genero = persona.genero)
     --afinidad_mascota
     and (porBuscar.Afinidad_Mascota = persona.afinidad_mascota)
     --disponible_mascota
     or(porBuscar.Disponible_Mascota = persona.disponible_mascota)
     --cant_hijos
     or(porBuscar.Cant_Hijos = persona.cant_hijos)
     --quiere_hijos
     and(porBuscar.Quiere_Hijos = persona.quiere_hijos)
     --est_civil_id
     and(porBuscar.Est_Civil_Id = persona.est_civil_id)
     --ciudad_id
     and(porBuscar.Ciudad_Id = persona.ciudad_id)
     --nacionalidad_id
     and(porBuscar.Nacionalidad_Id = persona.nacionalidad_id)
     --religion_id
     and(porBuscar.Religion_Id = persona.religion_id)
     --zodiaco_id
     or(porBuscar.Zodiaco_Id = persona.zodiaco_id)
     --altura_id
     and(porBuscar.Altura_Id <= persona.altura_id)
     --peso_id
     and(porBuscar.Peso_Id = persona.peso_id)
     --contextura_id
     and(porBuscar.Contextura_Id = persona.contextura_id)
     -- cpiel_id
     and(porBuscar.Cpiel_Id = persona.cpiel_id)
     --cojos_id
     or(porBuscar.Cojos_Id = persona.cojos_id)
     --ccabello_id
     or(porBuscar.Ccabello_Id = persona.ccabello_id)
     --idioma_id
     --ocupacion_id
     or(porBuscar.Ocupacion_Id = persona.ocupacion_id)
     --salario_id
     and(porBuscar.Salario_Id <= persona.salario_id)
     --escolaridad_id
     and(porBuscar.Escolaridad_Id <= persona.escolaridad_id);
   end;
/