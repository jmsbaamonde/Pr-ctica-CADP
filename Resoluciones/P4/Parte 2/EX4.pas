Program EX4;
Const
  dF= 1000;
Type
  str50 = string[50];
  alumno = record
    nro: integer;
    apellido: str50;
    nombre: str50;
    asistencias: integer;
  end;

 catedra = array [1..dF] of alumno;


procedure leerAlumno (var a: alumno);
begin
  read(a.nro);
  read(a.apellido);
  read(a.nombre);
  read(a.asistencias);
end;
function IncisoA (c: catedra; dimL: integer; n: integer): integer;
var
  li, ls, mid, aux: integer;
begin
  li:= 1;
  ls:= dimL;
  mid:= (li + ls) div 2;
  while (ls >= li) and (c[mid] <> n) do begin
    if (n < c[mid]) then begin
      ls:= mid - 1
    else
      li:= mid + 1
    mid:= (li + ls) div 2;
  if  (n = c[mid]) then begin
    aux:= mid;
  end;
  dicotomica:= aux;
end;

procedure IncisoB (var c: catedra; var dimL: integer; a: alumno; pos: integer; var ok: boolean);
var
  i: integer;
begin
  ok:= false
  if (dimL <= dF) and (pos >= 1) and (pos <= dimL) then begin
    for i:= dL downto pos do begin
      c[i+1]:= c[i];
    end;
    ok:= true;
    c[pos]:= a;
    dimL:= dimL+1;
  end;
end;

procedure IncisoC (var c: catedra; var dimL: integer; pude: boolean; posa: integer)
var
  i: integer;
begin
  pude:= false
  if (pos >= 1) and (pos <= dF) then begin
    for i:= pos to (dimL - 1)
      c[a]:= c[a+1];
    end;
  end;
  pude:= true
  dimL:= dimL - 1;
end;


procedure IncisoD (var c: catedra; var dimL: integer; code: integer; var ok: boolean)
var
  pos, i: integer;
  
begin
  ok:= false
  i:= 1
  while (pos <= dF) and (not ok) do begin
    if (v[i] = nom) then begin
      pos:= i;
      ok:= true;
    end;
    i:= i + 1;
  end;
  if ok then begin
    for i:= pos to (dimL - 1)
      a[i]:= a[i+1];
    end;
    dimL:= dimL - 1
  end;
end;


procedure IncisoE (var v: nombres; var dimL: integer; var ok: boolean)
var
  pos, i: integer;
  
begin
  ok:= false
  i:= 1
  while (pos <= dF) do begin
    if (c[i].asistencias = 0) then begin
      pos:= i;
      ok:= true;
    end;
    i:= i + 1;
  end;
  if ok then begin
    for i:= pos to (dimL - 1)
      a[i]:= a[i+1];
    end;
    dimL:= dimL - 1
  end;
end;

var
c: catedra;
a: alumno;
pos, posalu, dimL: integer;
ok: boolean;

begin
  cargarVector(c, dimL);
  read(posalu);
  IncisoA(c, dimL, posalu);
  leerAlumno(a);
  IncisoB(c, dimL, a, pos, ok);
  read(posalu);
  IncisoC(c, dimL, ok, posalu);
  read(a.nro);
  IncisoD(c, dimL, a.nro, ok);
  IncisoE(v, dimL, ok);
end;
  