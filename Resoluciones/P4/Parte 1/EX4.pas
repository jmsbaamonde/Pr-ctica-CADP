Program EX4

Const
  dimF = 100;


vector= array 1..dimF of integer;

fuction posicion (v: vector, x: integer): integer;
var
  seguir: boolean;
  pos: integer;
begin
  pos:= 0;
  seguir= true;
  while (seguir) do begin
    if (v[pos] = x) then
      seguir:= false
    else
      pos:= pos + 1;
    end;
  posicion:= pos;
end;


procedure intercambio (var v: vector; x, y: integer);
begin
  for i= 1 to dimF do begin
    if (v[i] = x) then
      v[y]:= x
    else
      if (v[i] = y)
        v[x]:= y
   end;
end;   


procedure intercambio (var v: vector; x, y: integer); (*Corrección*)
aux: integer;
begin
  aux:= v[x];
  v[x]:= v[y];
  v[y]:= aux;
end;


function sumaVector (v: vector): integer;
var
  i, sumatotal: integer;
begin
  sumatotal:= 0
  for i= 1 to 100 do begin
    sumatotal:= sumatotal + v[i];
  end;
  sumaVector:= sumatotal;
end;

function Promedio (v: vector): real;
var
  i, sumatotal: real;
begin
  sumatotal:= 0
  for i= 1 to 100 do begin
    sumatotal:= sumatotal + v[i];
  end;
  Promedio:= sumatotal div 100;
end;


fuction ElementoMaximo (v: vector): integer;
var
  num, maxpos, maxnum, pos: integer;
begin
  max:= -1
  pos:= 0;
  read(num));
  while (pos < dimF) do begin
    pos:= pos + 1
    v[pos]:= num;
    if (v[pos] > max) then begin
      maxnum:= v[pos];
      maxpos:= pos
    end;
  end;
  ElementoMaximo:= max;
end;
    
function ElementoMinimo (v: vector): integer;
var
  num, minpos, minnum, pos: integer;
begin
  min:= 99999
  pos:= 
  read(num));
  while (pos < dimF) do begin
    pos:= pos + 1
    v[pos]:= num;
    if (v[pos] < min) then begin
      min:= v[pos];
    end;
  end;
  ElementoMinimo:= min;
end;

