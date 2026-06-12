Program EX10;
Const
  fin= 0;
  dF= 300;
Type
  salarios = array [1..dF] of real;


procedure CargarVector(v: salarios; var dimL: integer);
  s: real;
begin
  dimL:= 0
  read(s);
  while (s <> fin) and (dimL <= dF) do begin
    dimL:= dimL + 1;
    v[dimL]:= s;
  end;
end;

procedure Incrementar(var v: salarios; dimL: integer; x: real)
var
  i: integer;
begin
  for i:= 1 to dimL do begin
    v[i]:= (v[i] * x);
  end;
end;


procedure Incrementar15 (var v: salarios; dimL: integer);
begin
  Incrementar(v, dimL, 1.15)
end;

procedure SueldoPromedio (v: salarios; dimL: integer);
var
  sumatotal: real;
  i: integer;
begin
  sumatotal:= 0
  for i:= 1 to dimL do begin
    sumatotal:= sumatotal + v[i];
  end;
  writeln('El sueldo promedio de los empleados es de ', (sumatotal / dimL));
end;

var
  v: salarios
  dimL: integer;
begin
  cargarVector(v, dimL);
  Incrementar15(v, dimL);
  SueldoPromedio(v, dimL);
end;

