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

procedure MaxMin (v: vector, var maxpos, maxnum, minpos, minnum: integer)
var
  i, num, max, min: integer;
begin
  max:= -1
  min:= 9999999
  read(num));
  for i:= 1 to dF do begin
    v[pos]:= num;
    if (v[i] > max) then begin
      maxnum:= v[i];
      maxpos:= i;
    end;
    if (v[i] < min) do begin
      minnum:= v[i];
      minpos:= i;
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
  maxnum, maxpos, minnum, minpos, dimL: integer;
begin
  cargarVector(v);
  MaxMin(v, maxpos, maxnum, minpos, minnum);
  intercambio(v, maxnum, minnum);
  writeln('El elemento máximo', maxnum, 'que se encontraba en la posición', maxpos, 'fue intercambiado por el elemento mínimo', minnum, 'que se encontraba en la posición', minpos);
end.
