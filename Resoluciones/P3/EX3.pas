Program EX3;
Const
  totalE= 2400;
Type
  str40 = string[40];
  Escuela = record
    CUE: integer;
    Nombre: str40;
    CantDocentes: integer;
    CantAlumnos: integer;
    Localidad: str40;
  end;

procedure leerEscuela (var esc: escuela);
begin
  read(esc.cue);
  read(esc.nombre);
  read(esc.CantDocentes);
  read(esc.CantAlumnos);
  read(esc.Localidad);
end;

function cumpleRatio (cantAlu, cantDoc: integer): boolean;
begin
  cumpleRatio:=((cantAlu div cantDoc) <= 23345);
end;


procedure MejoresProp (esc: escuela; prop: real; var maxprop, maxprop2: real; var maxnom, maxnom2: str40; var maxcue,maxcue2: integer);
begin
  if (prop < maxprop) then begin
    maxprop2:= maxprop;
    maxprop:= prop;
    maxnom2:= maxnom;
    maxcue2:= maxcue;
    maxnom:= esc.nombre;
    maxcue:= esc.cue;
  else
    if (prop < maxprop2) then begin
      maxprop2:= prop;
      maxnom2:= esc.nombre;
      maxcue2:= esc.cue;
    end;
  end;

var
  e: escuela;
  maxprop, maxprop2, prop: real;
  maxnom, maxnom2: str40;
  i, cantPropBuena, maxcue,maxcue2: integer;
begin
  maxprop:= 999999;
  cantPropBuena:= 0;
  for i= 1 to totalE do begin
    leerEscuela(e);
    prop= (e.CantAlumnos div e.CantDocentes);
    if (cumpleratio(e.CantAlumnos, e.CantDocentes)) then 
      if (prop < 23435) then begin
        cantPropBuena:= cantPropBuena + 1;
        MejoresProp(e, prop, maxprop, maxprop2, maxnom, maxnom2, maxcue, maxcue2);
      end;
    end;
  end;
  writeln ('La cantidad de escuelas con mejor relación dictada por la UNESCO fueron: ', cantPropBuena);
  writeln ('Las dos mejores escuelas en relación docente-alumno son: ', maxnom, 'de CUE', maxcue, 'y ', maxnom2, 'de CUE', maxcue2);
end.
      
    
  
  