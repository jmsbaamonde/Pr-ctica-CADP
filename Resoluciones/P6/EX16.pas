Program EX16;
Type
  cadena = string[50];
  corredor = record
    nom: cadena;
    ape: cadena;
    km: real;
    tiempo: real;
    paisinicio: cadena;
    ciudadinicio: cadena;
    ciudadfin: cadena;
  end;

  listaoriginal = ^corredores;

  corredores = record;
    elem: corredor;
    sig: lista;
  end;
  
  listacontador = ^ciudad
  
  ciudad = record
    nombre: cadena;
    cantCorredores: integer;
    cantKms: real;
  
  nodo = record
    elem: ciudad;
    sig: listacontador;
  end;


procedure leerCorredor (var c: corredor);
begin
  read(c.km);
  if (c.km <> -1) then begin
    read(c.nom);
    read(c.ape);
    read(c.tiempo);
    read(c.paisinicio);
    read(c.ciudadinicio);
    read(c.ciudadfin);
  end;
end;

procedure agregarAdelante (var l: listaoriginal, c: corredor);
var
  nuevo: lista;
begin
  new(nuevo)
  nuevo^.elem:= c;
  nuevo^.sig:= l;
  l:= nuevo;
end;

procedure cargarLista (var l: listaoriginal);
var
  c: corredor;
begin
  leerCorredor(c);
  while (c.km <> -1) do begin
    agregarAdelante(l, c);
    leerCorredor(c);
  end;
end;

procedure actualizarContador (var lnueva: listacontador; ciudad: cadena; distancia: real);
var
  act, nuev: listacontador;
begin
  act:= lnueva;
  while (act <> nil) and (act^.elem.ciudad <> ciudad) do begin
    act:= act^.sig;
  end;

  if (act <>  nil) then begin
    act^.elem.cantKms:= act^.elem.cantkms + distancia
    act^.elem.cantCorredores:= act^.elem.cantCorredores + 1;
  end;
  else begin
    new(nuev);
    nuev^.elem.ciudad:= act^.elem.ciudad
    nuev^.elem.cantCorredores:= 1;
    nuev^.elem.cantkms:= distancia;
    nuev^.sig:= lnueva;
    lnueva:= nuev;
  end;
end;
  
procedure procesarListaPrincipal (l: listaoriginal; var lnueva: listacontador);
var
  CorredoresTotales, CorredoresBrasil: integer;
  TiempoBoston, DistanciaBoston, DistanciaBrasil, KilometrosTotales, TiempoTotal: real;

begin
  CorredoresTotales:= 0;
  KilometrosTotales:= 0;
  TiempoTotal:= 0;
  CorredoresBrasil:= 0;
  DistanciaBrasil:= 0;
  while (l <> nil) do begin
    CorredoresTotales:= CorredoresTotales + 1;
    KilometrosTotales:= KilometrosTotales + l^.elem.km;
    TiempoTotal:= TiempoTotal + l^.elem.tiempo;
    actualizarContador(lnueva, l^.elem.ciudadinicio, l^.elem.km);
    if (l^.elem.pais = 'Brasil') then begin
      CorredoresBrasil:= CorredoresBrasil + 1
      DistanciaBrasil:= DistanciaBrasil + l^.elem.km;
    end;
    if (l^.elem.ciudadinicio = 'Boston') then begin
      TiempoBoston:= TiempoBoston + l^.elem.tiempo;
      DistanciaBoston:= DistanciaBoston + l^.elem.km;
    end;
    l:= l^.sig;
  end;
  writeln ('La distancia promedio recorrida por los corredores de Brasil es: ', DistanciaBrasil/CorredoresBrasil);
  writeln('El paso promedio de los corredores de Boston es: ', TiempoBoston / DistanciaBoston);
end;

procedure BuscarMáximo (lnueva: listacontador, var Max: ciudad);
begin
  MaxCant:= -1;
  while (lnueva <> nil)
    if (lnueva^.elem.cantCorredores > MaxCant) then
      Max:= lnueva^.elem
  end;
end;

var
l: listaoriginal
lnueva: listacontador
Max: ciudad;
c: corredor;
begin
  l:= nil;
  lnueva:= nil;
  cargarLista(l);
  procesarListaPrincipal(l, lnueva);
  buscarMáximos(lnueva, Max);
  writeln('Ciudad: ', Max.nombre , 'Kilómetros totales recorridos', Max.cantKms);
end;

    