Program EX8;

Const
  fin= -1;

Type
  str50 = string[50];
  docente = record
    DNI: integer;
    nombre: str50;
    apellido: str50;
    mail: str50;
  end;
  proyecto = record
    codigo: integer;
    titulo: str50;
    coordinador: docente;
    cantalu: integer;
    nombreescuela: str50;
    localidad: str50;
  end;


procedure leerDocente(var d: docente);
begin
  read(dni);
  read(nombre);
  read(apellido);
  read(mail);
end;

procedure leerProyecto (p: proyecto);
begin
  read(p.codigo)
  if (p.codigo <> 0) then begin
    read(p.titulo);
    read(p.cantalu);
    read(p.nombreescuela);
    read(p.localidad);
    leerDocente(p.coordinador);
end;

fuction cumpleDaireaux (codigo: integer): boolean;
var
 cantPares, cantImpares: integer;
 dig: integer;
begin
  while (codigo <> 0) do begin
    dig:= codigo mod 10
    if ((dig mod 2) = 0) then begin
      cantPares:= cantpares + 1
    else
      cantImpares:= cantImpares + 1
    end;
    codigo:= codigo div 10
  end;
  cumpleDaireaux:= (cantImpares = cantPares);
end;


procedure MaxCantAlu (p: proyecto; var maxnom1, maxnom2: str50; var maxcant1, maxcant2: integer);
begin
  if (p.cantalu > maxcant1) then begin
    maxcant2:= MaxCant1;
    MaxCant:= p.cantalu;
    maxnom2:= Maxnom1;
    MaxNom1:= p.nombreescuela;
  else
    if (maxcant2 > MaxCant2) then
      MaxCant2:= maxcant1;
      maxnom2:= p.nombreescuela;
    end;
end;

var
  p: proyecto;
  d: docente;
  maxcant1, maxcant2, cantTotalEscuelas, cantEscuelasLoc: integer;
  locactual, escactual, maxnom1, maxnom2: str50;
begin
  maxcant1:= -1;
  maxnom1:= '';
  cantTotalEscuelas:= 0
  leerProyecto(p);
  while (p.codigo <> fin) do begin
    cantTotalEscuelas:= cantTotalEscuelas + 1;
    cantEscuelasLoc:= 0
    locactual:= p.localidad
    while (p.codigo <> fin) and (p.localidad = locactual) do begin
      escactual:= p.nombreescuela
      cantEscuelasLoc:= cantEscuelasLoc + 1
      if (p.localidad = 'Daireaux') and (cumpleDaireaux(p.codigo)) then
        writeln('El proyecto', p.codigo, 'tiene misma cantidad de dígitos pares que impares');
      end;
      
      while (p.codigo <> fin) and (p.localidad = locactual) and (p.nombreescuela = escactual) do begin
         MaxCantAlu(p, maxnom1, maxnom2, maxcant1, maxcant2);
         leerProyecto(p);
      end;
    Writeln('La cantidad de escuelas que participan en el proyecto desde la localidad de ', p.localidad, 'es', cantEscuelasLoc)  
    end;  
  end;
  writeln('Las dos escuelas con mayor cantidad de alumnos participantes fueron ', maxnom1, 'con', maxcant1, 'participanntes y', maxnom2, 'con', maxcant2, 'participantes');
end.
      


