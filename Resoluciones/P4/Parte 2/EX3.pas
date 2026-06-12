Program EX3;
Const
  dF = 200;
Type
  viaje = record
    dia: integer;
    monto: real;
    distancia: real;
  end;

datos = array [1..dF] of viaje;
viajesPorDia = array [1..31] of integer;

procedure leerViaje (var v: viaje);
begin
  read(v.distancia);
  if (v.distancia <> 0) then begin
    read(v.monto);
    read(v.dia);
  end;
end;


procedure cargarVectores(var vpd: viajespordia; var d: datos; var dimL: integer);
var
  aux: viaje;
begin
  dimL:= 0;
  leerViaje(aux);
  while (dimL <= dF) and (aux <> 0) do begin
    dimL:= dimL + 1;
    d[dimL]:= aux;
    leerViaje(aux)
  end;
  for i: 1 to 31 do begin
    vpd[i]:= 0
  end;
end;

procedure IncisoB (var vpd: viajespordia; d: datos; dimL: integer; var mindistancia, prom: real; var mindia: integer);
var
  i: integer;
  min, sumamonto: real;
  
begin
  sumamonto:= 0
  min:= 99999999
  for i:= 1 to dimL do begin
    sumamonto:= sumamonto + d[i].monto;
    if (d[i].monto < min) then begin
      min:= d[i].monto;
      minndistancia:= d[i].distancia;
      mindia:= d[i].dia;      
    end;
    vpd[d[i].dia]:= vpd[d[i].dia] + 1 
  end;
  prom:= sumamonto / dimL;
end;

procedure eliminar (var d: datos; var dimL: integer; num: integer; var ok: boolean)
var
  pos, i: integer;
  
begin
  ok:= false
  i:= 1
  while (pos <= dF) do begin
    if (v[i] = num) then begin
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
end


var
d: datos;
vpd: viajespordia;
diamin, dimL, i: integer;
distanciamin, prom: real;
ok: boolean;
begin
  cargarVectores(vpd, d, dimL)
  IncisoB(vpd, d, dimL, distanciamin, prom, diamin);
  writeln('El monto promedio transportado de los viajes realizados es: ', prom);
  writeln('La distancia y día del mes en el que se realizó el viaje con menor monto es: ' distanciamin, 'y ', diamin);
  for i:= 1 to 31 do begin
    writeln('La cantidad de viajes del día: ', i, 'es de', vpd[i]);
  end;
  eliminar(d, dimL, 100, ok)
end.
  
  

    
    
  