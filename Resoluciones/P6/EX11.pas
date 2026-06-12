Program EX11;
Const 
  DimEgresados = 10;
  fin = 0;
Type
  cadena = string[50];

  alumno = record
    nro: integer;
    ape: cadena;
    prom: real;
  end;

  lista = ^nodo

  nodo = record
    elem: alumno;
    sig: lista;
  end;

  Mejores10 = array [1..DimEgresados] of alumno;
end;

procedure leerAlumno (a: alumno);
begin
  read(a.nro);
  if (a.nro <> fin) then begin
    read(a.ape);
    read(a.prom);
  end;
end;


procedure crearLista (l: lista);
begin
  l:= nil;
end;

procedure agregarAdelante (var L: lista; a: alumno);
var
nuevo: lista;
begin
new(nuevo); 
nuevo^.elem := v; 
nuevo^.sig := L; 
L := nuevo; 
end;

procedure generarLista (var l: lista);
var
  a: alumno;
begin
  leerAlumno(a);
  while (a.nro <> fin) do begin
    agregarAdelante(L, a);
    leerAlumno(a)
  end;
end;

procedure eliminar (Var pI: lista; valor: integer);
Var
actual,ant:lista;
Begin
  actual:=pI;
  while (actual <> nil) and (actual^.elem.nro <> valor) do begin
    ant:=actual;
    actual:= actual^.sig;
  end;
  if (actual <> nil) then begin
    if (actual = pI) then
      pI:= pI^.sig;
    else
      ant^.sig:= actual^.sig;
    dispose (actual);
end;

procedure procesarMaximo (l: lista; var MaxAlu: alumno);
Var
  i: integer;
  actual: lista;
  MaxProm: real;
Begin
    MaxProm:= -1
    actual:= l
    while (actual <> nil) do begin
      if (l^.elem.prom > MaxProm) then begin
        MaxProm:= l^.elem.prom;
        MaxAlu:= l^.elem
      end;
      actual:= actual^.sig;
    end;
    eliminar(l, MaxAlu.nro);
    
end;


procedure cargarVector(l: lista; var v: Mejores10);
var
  MaxAlu: alumno;
begin
  for i:= DimEgresados downto 1 do begin
    procesarMaximo(l, MaxAlu);
    v[i]:= MaxAlu;
  end;
      
var
  l: lista;
  v: Mejores10;
  i: integer;
begin
  crearLista(l);
  generarLista(l)
  cargarVector(l, v);
  for i:= 1 to DimEgresados do begin
    writeln('Alumno: ', v[i].nro , v[i].ape);
  end;
end;
