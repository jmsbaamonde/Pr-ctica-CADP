Program EX5;
Const
  dF= 100;
Type
  vector = array [1..dF] of integer;

procedure cargarVector(var v:vector;  var dimL : integer); 
var 
num: real; 
begin 
dimL:= 0;
read(num);
while (dimL < dF) and (num <> 0) do begin
  dimL:= dimL + 1;
  v[dimL]:= num;
  read(num);
end; 

procedure ElementoMinimo (v: vector; var minpos, minnum: integer);
var
  num, pos: integer;
begin
  min:= 99999
  pos:= 
  read(num));
  while (pos < dimF) do begin
    pos:= pos + 1;
    v[pos]:= num;
    if (v[pos] < min) then begin
      minnum:= v[pos];
      minpos:= pos;
    end;
  end;
end;

procedure ElementoMaximo (v: vector, var maxpos, maxnum: integer)
var
  num, maxpos, maxnum, pos: integer;
begin
  max:= -1
  pos:= 0;
  read(num));
  while (pos < dimF) do begin
    pos:= pos + 1;
    v[pos]:= num;
    if (v[pos] > max) then begin
      maxnum:= v[pos];
      maxpos:= pos;
    end;
  end;
end;

procedure intercambio (var v: vector; x, y: integer); (*Corrección*)
aux: integer;
begin
  aux:= v[x];
  v[x]:= v[y];
  v[y]:= aux;
end;

var
  v: vector;
  i, maxnum, maxpos, minnum, minpos, dimL: integer;
begin
  cargarVector(v);
  ElementoMaximo(v, maxpos, maxnum);
  ElementoMinimo(v, minpos, minnum);
  intercambio(v, maxnum, minnum)
  writeln('El elemento máximo', maxnum, 'que se encontraba en la posición', maxpos, 'fue intercambiado por el elemento mínimo', minnum, 'que se encontraba en la posición', minpos);
end.
