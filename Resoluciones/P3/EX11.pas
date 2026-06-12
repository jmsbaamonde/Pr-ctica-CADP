Program EX11;

Const
  fin = 44;

Type
  str50 = string[50];
  vuelo = record
    codigo: integer;
    salida: str50;
    llegada: str50;
    kmrecorrido: real;
    porcentaje: integer;
  end;

procedure leerVuelo (var v: vuelo);
begin
  read(v.codigo);
  read(v.salida);
  read(v.llegada);
  read(v.kmrecorrido);
  read(v.porcentaje);
end;

function Vuelos10km (v: vuelo): boolean;
begin
  Vuelos10km:= ((v.kmrecorrido < 10000) and ((v.llegada = 'Australia') or (v.llegada = 'Nueva Zelanda')));
end;

function Vuelos5km (v: vuelo): boolean;
begin
  Vuelos5km:= ((v.kmrecorrido > 5000) and (v.porcentaje < 60));
end;

procedure MaxSalida (avion: integer; cantsalidas: integer; var maxcantsalidas; var maxavionsalida);
begin
  if (cantsalidas > maxcantsalidas) then begin
    maxcantsalidas:= cantsalidas;
    maxavionsalida:= avion
  end;
end;

procedure MaxMin (v: vuelo; var maxkm1, maxkm2, minkm1, minkm2; var maxavion1, maxavion2, minavion1, minavion2: integer);
begin
  if (v.kmrecorrido > maxkm1)
    maxkm2:= maxkm1;
    maxkm1:= v.kmrecorrido;
    maxavion2:= maxavion1;
    maxavion1:= v.codigo;
  else 
    if (v.kmrecorrido > maxkm2) then begin
      maxkm2:= v.kmrecorrido;
      maxavion2:= v.codigo;
  end;
  if (v.kmrecorrido < minkm1) then begin
    minkm2:= minkm1;
    minkm1:= v.kmrecorrido;
    minavion2:= minavion1;
    minavion1:= v.codigo;
  else
   if (v.kmrecorrido < minkm2) then begin
     minkm2:= v.kmrecorrido;
     minavion2:= v.codigo;
  end;
end;


var
  v: vuelo;
  cant5km, cant10km, avionactual, cantSalidas, maxcantsalidas, maxkm1, maxkm2, minkm1, minkm2: integer;
  paisactual, maxavionsalida, maxavion1, maxavion2, minavion1, minavion2: str50;

begin
  cant5km:=0;
  cant10km:=0;
  maxkm1:= -1;
  minkm1:= 999999;
  maxavion1:= '';
  minavion2:= '';
  leerVuelo(v);
  while (v.codigo <> fin) do begin
    avionactual:= v.codigo;
    while (v.codigo = actual) do begin
      paisactual:= v.salida;
      cantSalidas:= 0;
      while (v.codigo = actual) and (v.salida = paisactual) do begin
        cantSalidas:= cantSalidas + 1;
        if (Vuelos10km(v)) then begin
          cant10km:= cant10km + 1;
        end;
        if (Vuelos5km(v)) then begin
          cant5km:= cant5km + 1;
        end;
        leervuelo(a);
      end; (*fin del while del país*)
      MaxSalida(v.codigo, cansalidas, maxcantsalidas, maxavionsalida);
    end; (*fin del while del avion*)
    MaxMin(v, maxkm1, maxkm2, minkm1, minkm2, maxavion1, maxavion2, minavion1, minavion2);
  end; (*fin del primer while*)
  writeln ('Los códigos de los dos aviones con más kilómetros recorridos son: ', maxavion1, 'y', maxavion2);
  writeln ('Los códigos de los dos aviones con menos kilómetros recorridos son: ', minavion1, 'y', minavion2);
  writeln ('El avión que salió desde más países diferentes tiene de código: ', maxavionsalida);
  writeln ('La cantidad de vuelos de más de 5000km que no alcanzaron el 60% de ocupación en el avion son: ', cant5km);
  writeln ('La cantidad de vuelos de menos de 10000km que llegaron a Australia o Nueva Zelanda son: ', cant10km);
end;
