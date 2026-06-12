Program EX12;
Type
  zonas: 1..3;
Function Rendimiento (ha: real; precio, tipozona: integer): real
begin
  if (tipozona = 1) then
    begin
      ha:= (ha * 6)*precio;
    else
      if (tipozona = 2) then
        ha:= (ha * 2,6)*precio;
      else
        ha:= (ha * 1,4)*precio;
    end;
  Rendimiento:= ha;
end;

Procedure MaxMin (rend: integer, loc: string[50]; var LocMin, LocMax: string[50], var Max, Min: real);
begin
  if (rend > max) then begin
    max:= rend;
    LocMax:= loc;

  else
    if (rend < min) then
      min:= rend;
      LocMin:= loc;
    end;
  end;
end;
  
function Promedio (TotalCampos: real, sumatotal: real): real;
begin
  Promedio:= sumatotal div TotalCampos;
end;


var
  localidad, MinLoc, MaxLoc: string[50];
  SumaRend, Rend, cantHa, RendProm, MaxRend, MinRend, TotalCampos: real;
  numerozona: zonas;
  PrecioTN, Cant3dF, integer;
begin
  maxren:= -99999;
  MinRend:= 99999;
  Cant3dF:= 0;
  sumatotal:= 0;
  TotalCampos:= 0;
  repeat
  read(localidad);
  read(cantHa);
  read(PrecioTN);
  read(numerozona);
    rend:= Rendimiento(cantHa, PrecioTN, numerozona);
    sumatotal:= sumatotal + rend;
    TotalCampos:= TotalCampos + 1
    if (localidad:= 'Tres de Febrero') and (rend > 10.000) then begin
      Cant3dF:= Cant3dF + 1;
    end;
    MaxMin (rend, localidad, MinLoc, MaxLoc, maxren, MinRend);
  until (localidad = 'Saladillo') and (cantHa = 900);
  Writeln('El rendimiento económico promedio es de: ', Promedio(TotalCampos, sumatotal);
  Writeln('La cantidad de campos de la localidad Tres de Febrero con rendimiento estimado superior a U$S
10.000 es de: ', Cant3dF);
  Writeln('Las localidades con mayor y menor rendimiento económico, respectivamente son: ', MaxLoc, 'y', MinLoc);

  
