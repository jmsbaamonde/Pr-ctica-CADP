Program EX14;
Const
  cantProyectos = 1000;
Type
  str60 = string[60];
  tabla = array [1..5] of real;
  vMontos = array [1..cantProyectos] of real;
  vArqui = array [1..cantProyectos] of integer;
  dev = record
    pais: str60;
    codigo: integer;
    rol: integer;
    horas: real;
  end;

procedure inicializarVectores (var montos: vMontos; var arqui: vArqui);
var
  i: integer;
begin
  for i:= 1 to cantProyectos do begin
    montos[i]:= 0;
    arqui[i]:= 0;
  end;
end;

procedure leerDev (var d: dev);
begin
  readln(d.codigo);
  if (d.codigo <> -1) then begin
    readln(d.pais);
    readln(d.rol);
    readln(d.horas);
  end;
end;

procedure procesarParticipante (d: dev; t: tabla; var montos: vMontos; var arqui: vArqui;  var montoArg: real; var horasAdmin: real);
begin
  montos[d.codigo]:= montos[d.codigo] + (t[d.rol] * d.horas);
  if (d.rol = 4) then
    arqui[d.codigo]:= arqui[d.codigo] + 1;
  if (d.pais = 'Argentina') then
    montoArg:= montoArg + (t[d.rol] * d.horas);
  if (d.rol = 3) then
    horasAdmin:= horasAdmin + d.horas;
end;

procedure minMonto (montos: vMontos; var minCodigo: integer);
var
  i: integer;
  min: real;
begin
  min:= 999999
  for i:= 1 to cantProyectos do begin
    if (montos[i] < min) then begin
      min:= montos[i];
      minCodigo:= i;
    end;
  end;
end;

procedure mostrarArqui (arqui: vArqui);
var
  i: integer;
begin
  for i:= 1 to cantProyectos do begin
    writeln('El proyecto ', i, ' tiene: ', arqui[i], ' arquitectos de software');
  end;
end;

var
  d: dev;
  t: tabla;
  montos: vMontos;
  arqui: vArqui;
  montoArg, horasAdmin: real;
  minCodigo: integer;

begin
  cargarTabla(t);
  inicializarVectores(montos, arqui);
  montoArg:= 0;
  horasAdmin:= 0;
  leerDev(d);
  while (d.codigo <> -1) do begin
    procesarParticipante(d, t, montos, arqui, montoArg, horasAdmin);
    leerDev(d);
  end;
  minMonto(montos, minCodigo);
  writeln('Monto total invertido en Argentina: ', montoArg);
  writeln('Horas totales de Administradores de bases de datos: ', horasAdmin);
  writeln('Codigo del proyecto con menor monto: ', minCodigo);
  writeln('Arquitectos de software por proyecto:');
  mostrarArqui(arqui);
end.