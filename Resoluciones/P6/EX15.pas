Program EX15;
Const
  Turnos = 1..5;
Type
  cadena = string[50];

  alumno = record
    nombre: cadena;
    apellido: cadena;
    nota: real;
  end;

  listainfo = ^nodo

  nodo = record
    elem: alumno;
    sig: listainfo;
  end;
  
  VecTurnos = array [Turnos] of listainfo;
  CantTurno = array [Turnos] of integer;

end;

// De momento la idea general me resulta que debe ser una vector con listas para cada turno
//Lo que no sé y no descifré es cómo encontrar una forma de hacer equitativo el reparto de alumnos
// ¿Un case capaz?

procedure inicializarContador (var vCT: CantTurno);
var
  i: integer;
begin
  for i:= 1 to 5 do
    vCT[i]:= vCT[i] + 1
end;

procedure agregarAdelante (var lturno: listainfo, a: alumno);
var
  nuevo: listainfo;
begin
  new(nuevo);
  nuevo^.elem:= a;
  nuevo^.sig:= l;
  l:= nuevo;
end;

function asignarTurno (nota: real; vCT: CantTurno): integer;
var
  turno: integer;
begin
  turno:= 0;
  if nota > 8 then begin
    if (vCT[1] >= vCT [4]) then
       turno:= 1;
    else
      turno:= 4;
    end;
  else begin
    if nota >= 5 then begin
      turno:= 2;

    if cant[3] > cant[turno] then
      turno:= 3;
    else
      turno:= 5;
    end;
  end;

  asignarTurno:= turno;
end;

procedure cargarVector (lori: listainfo; var vT: VecTurnos; var vCT: CantTurno);
var
  turno: integer;
begin
  while (lori <> nil) do begin
    turno:= asignarTurno(lori^.elem.nota, vCT);
    agregarAdelante(vT[turno], lori^.elem);
    vCT[turno]:= vCT[turno] + 1;
    lori:= lori^.sig;
  end;


procedure imprimirLista (l: listainfo);
begin
  while (l <> nil) do begin
    writeln('Nombre: ', l^.elem.nombre, 'Apellido: ', l^.elem.nombre, 'Nota: ', l^.elem.nombre);
    l:= l^.sig;
  end;
end;

procedure imprimirTurno (vT: VecTurnos);
var
  i: integer;
begin
  for i:= 1 to 5 do begin
    writeln('Turno: ', i);
    imprimirLista(vT[i]);
  end;


var
  lori, lnueva: listainfo;
  vCT: CantTurno;
  vT: VecTurnos;

begin
  crearLista(lori)
  cargarLista(lori) // Se dispone
  inicializarContador(vCT);
  cargarVector(lori, vT, vCT)
  imprimirTurno(vT);
end;