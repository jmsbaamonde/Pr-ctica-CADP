Program EX2
type
  FechaCasamiento = record;
    dia: integer;
    mes: integer;
    año: integer;
    
Procedure leerFecha (var f: FechaCasamiento);
begin
  read(f.año);
  if (f.año = 2019) then
    read(f.dia);
    read(f.mes);
  end;
end;

function cumpleVerano (f: integer): boolean;
begin
  cumpleVerano:= (f = '1') or (f = '2') or (f = '3');
end;

function cumplePrimeros10 (d: integer): boolean;
begin
  cumplePrimeros10:= ((d >= 1) and (d <= 10));
end;

var
 fec: FechaCasamiento;
 cantVerano: integer;
 cantPrimeros10: integer;
begin
  cantVerano:= 0;
  cantPrimeros10:=0;
  leerFecha(fec);
  while (fec.año <> 2020) do begin
    if (cumplePrimeros10(fec.dia)) then
      cantPrimeros10:= cantPrimeros10 + 1;
    if (cumpleVerano(fec.mes)):= cantVerano + 1;
    leerFecha(fec)
  end;
  writeln('Los casamientos realizados en los primeros 10 días de cada mes en total son: ', cantPrimeros10);
  writeln('Los casamientos realizados en los meses de verano de 2019 en total son: ', cantVerano);
end.


  
    
    