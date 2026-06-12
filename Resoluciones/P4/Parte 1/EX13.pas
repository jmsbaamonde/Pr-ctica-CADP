Program EX13;
Const
  años = 50;
  medidas = 100;

Type
  temperaturas = array [1..años] of real;
  promedios = array [1..años] of real;


procedure cargarVectores (var t: temperaturas; var p: promedios);
var
  a, m: integer;
  temp, maxtemp, sumatotal: real;
begin
  for a= 1 to años do begin
    sumatotal:= 0
    maxtemp:= -9999;
    for m= 1 to medidas do begin
      read(temp);
      sumatotal:= sumatotal + temp;
      if (temp > maxtemp) do begin
        maxtemp:= temp;
      end;
    end;
    v[i]:= maxtemp;
    p[i]:= sumatotal / 100;
  end;
end;

function MayorPromedio (p: promedios): integer;
var
  maxaño: integer;
  maxprom: real;
  i: integer;
begin
  maxprom:= -999
  for i:= 1 to años do begin
    if (p[i] > maxprom) then begin
      maxprom:= p[i];
      maxaño:= i;
    end;
  end;
  MayorPromedio:= maxprom;
end;


function MaxTemp (t: temperaturas);
var
  max: real;
  maxaño, i: integer;
begin
  maxtemp:= -888
  for i:= 1 to años do begin
    if (t[i] > max) then begin
      maxt:= t[i]
      maxaño:= i;
    end;
  end;
  MaxTemp:= max;
end;


var
  i: integer;
  t: temperaturas;
  p: promedios;
begin
  cargarVectores(t, p);
  writeln('La mayor temperatura promedio registrada a nivel mundial, se encontró en el año: ', (MayorPromedio(p)));
  writeln('La mayor temperatura registrada en un punto, se encontró en el año: ', (MaxTemp(t)));
end.
    
    
    