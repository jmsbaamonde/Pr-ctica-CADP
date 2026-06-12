Program EX6;
Const
  fin = 'GAIA';
type
  rango = 1..7;
  cadena = string[20];
  sonda = record
    nombre: cadena;
    meses: integer;
    construccion: real;
    mantenimiento: real;
    espectro: rango;
  end;

  lista = ^nodo;

  nodo = record
    s: sonda;
    sig: lista;
  end;

CantRango = array [rango] of integer;


procedure leerSonda (var s: sonda);
begin
  read(s.nombre);
  if (s.nombre <> fin) then begin
    read(s.meses);
    read(s.construccion);
    read(s.mantenimiento);
    read(s.espectro);
  end;
end;

procedure agregarElemento (var LI, LF: lista; s: sonda);
var
  aux : lista;
begin
  new(aux);
  aux^.num := v;
  aux^.sig := nil;
if (l = nil) then begin
  LI:= aux;
  LF:= aux;
else
  begin
    LF^.sig:= aux;
    LF:= aux;
  end;
end;

procedure generarLista (var l: lista);
var
  son: sonda;
  pri, ult: lista;
begin
  pri, ult:= nil;
  repeat
    leerProducto(p);
    agregarElemento(pri, ult, son);
    leerSonda(p);
  until (son.nombre = fin)
  end;
  l:= pri;
end;

procedure IncisoAyB (l: lista; var MaxNom: cadena);
var
  CostoTotal, CostoMax: real;
  vCant: CantRango;
  i: integer;
begin
  CostoMax:= -99999
  for i:= 1 to 7 do begin
    v[i]:= 0;
  end;
  while (l <> nil) do begin
    CostoTotal:= l^.mantenimiento + l^.construccion
    if (CostoTotal > CostoMax) then begin
      CostoMax:= CostoTotal;
      MaxCost:= l^.nombre;
    end;
    vCant[l^.espectro]:= vCant[l^.espectro] + 1
    l:= l^.sig
    end;
  end;
end;

function DuracionPromedio (l: lista): real;
var
  SondasTotalDura, cant: real;
begin
  SondasTotalDura:= 0
  cant:= 0
  while (l <> nil) do begin
    SondasTotalDura:= SondasTotalDura + l^.meses;
    cant:= cant + 1
    l:= l^.sig;
  end;
  DuraciónPromedio:= SondasTotalDura / cant;
end;

function CostoPromedio (l: lista): real;
var
  SondasTotalCost, cant: real;
begin
  SondasTotalDura:= 0
  cant:= 0
  while (l <> nil) do begin
    SondasTotalDura:= SondasTotalCost + l^.meses;
    cant:= cant + 1
    l:= l^.sig;
  end;
  CostoPromedio:= SondasTotalCost / cant;
end;

procedure IncisoCyD (l: lista; var CantSondas: integer);
var
  cpromedio, dpromedio: real;
begin
  CantSondas:= 0;
  dpromedio:= DuracionPromedio(l);
  cpromedio:= CostoPromedio(l)
  while (l <> nil) do begin
    if (dpromedio < l^.meses) do begin
      CantSondas:= cantsondas + 1
    if (cpromedio < l^.construccion) do begin
      write('La sonda de nombre: ', l^.nombre , 'supera el costo de producción promedio')
    end;
    
var
l: lista;
i, CantSondas: integer;
MaxNom: cadena;
s: sonda;
vCant: CantRango;
begin
  generarLista(l);
  IncisoAyB(l, MaxNom)
  writeln('El nombre de la sonda más costosa es: ', MaxNom);
  for i:= 1 to 7 do begin
    writeln('Rango de espectro: ', i, 'tiene ,' v[i], 'sondas');
  end;
  IncisoCyD(l, CantSondas);
  writeln('La cantidad de sondas cuya duración estimada supera la duración promedio de todas es: ', CantSondas);
end;

  

