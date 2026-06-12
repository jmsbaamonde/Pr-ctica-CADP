Program EX18
Const
  fin=-1;
Var
  i, legajo, alumnomax0a, alumnomax0b, rindeingre, rinderecu, parcialingre, parcialrecu, cincode5, cant10, cant0, presente, maxcant10, maxcant0, promalto, ceroauto, cantrecu, cantingre: integer;
  cond: char;
  nota, sumanota, prom: real;
  tienecero: boolean;
begin
  sumanota:=0
  cantrecu:=0
  cantingre:=0
  ceroauto:= 0;
  cincode5:= 0;
  parcialingre:=0;
  parcialrecu:=0;
  promalto:=0;
  read(legajo)
  while (legajo <> fin) do
    begin
      read(cond);
      for i: 1 to 5 do
        begin
          read (nota)
          sumanota:= sumanota + nota;
          if (nota = 10) then
           cant10:= cant10 + 1;
          else
            if (nota = 0) then
              cant0:= cant0 + 1;
          if (nota <> -1) and (nota >= 4) then
            presente:= presente + 1;
          if (tienecero = false) and (nota = 0) then
            ceroauto:= ceroauto +1;
            tienecero:= true;
      if (maxcant10 > cant10) then
        begin
          alumnomax10b:=alumnomax10a;
          alumnomax10a:= legajo;
        end;
      if (maxcant0 > cant0) then
        begin
          alumnomax0b:= alumnomax0a;
          alumnomax0a:= codigo;
        end;

      tienecero:= false;
      if (presente >=4) then
        begin
          if (cond = 'R') then
            rinderecu:=rinderecu + 1;
          else
            rindeingre:= rindeingre + 1;
          end;
      end;
      if (cond = 'R') then
        cantrecu:= cantrecu + 1;
      else
        if (cond = 'I') then
          cantingre:= cantingre + 1;
      if (sumanota div 5 > 6.5) then
        promalto:= promalto + 1;
      else
        if (sumanota div 5 >= 4) then
          cincode5:=cincode5 + 1;
        
      read(legajo);
    end;
    parcialingre:= rindeingre div cantingre;
    parcialrecu:= rinderecu div cantrecu;
    writeln('La cantidad de alumnos ingresantes en condiciones de rendir el parcial es:', 'rindeingre', y su porcentaje sobre el total de alumnos es 'parcialingre');
    writeln('La cantidad de alumnos recursantes en condiciones de rendir el parcial es:', 'rinderecu', 'y su porcentaje sobre el total de alumnos es' 'parcialrecu');
    writeln('La cantidad de alumnos que aprobaron todas las autoevaluaciones es', 'cincode5');
    writeln('La cantidad de alumnos que aprobaron con un promedio mayor a 6.5 es:', 'promalto');
    writeln('La cantidad de alumnos que obtuvieron al menos un 0 en una autoevaluación es', 'ceroauto')
    writeln ('Los dos alumnos con mayor cantidad de autoevaluaciones con nota 10 fueron', 'alumnomax10a', 'y', 'alumnomax10b');
    writeln ('Los dos alumnos con mayor cantidad de autoevaluaciones con nota 0 fueron', 'alumnomax0a', 'y', 'alumnomax0b');    
end.