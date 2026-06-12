Idea general:

Principal:
Leer información ordenada por código de alumno y almacenarla en una lista insertando ordenado

Inciso A:
Mientras no cambio de código de alumno
Sumo la cantidad de viajes, si es mayor a 6, añado al total de Cant6

Inciso B
Dentro del primer while, cambiando alumno
si la suma de todos sus viajes sale más de 80
Añado al total de Cant80

Inciso C:
Acá puedo hacer un vector contador de cada tipo de transporte y sacar dos máximos, primero recorro la lista ordenada, cargo el vector, y calculo máximo

Inciso D:
Dentro de los viajes de un alumno, tener un Boolean para cuando hizo un viaje con bicicleta, y hacer un
if (viaje <> bicicleta) and (cumpleBicicleta) then CantBicicleta + 1


Program EX14;
Const
  cA = 1300;
  rangocodigo = 1..1300;
  rangotrans = 1..5;
  fin = -1;
  bicicleta = 5;
Type
  
  cadena = string[50];
  viaje = record
    codigo: rangocodigo;
    dia: integer;
    facultad: cadena;
    transporte: integer;
    precio: real;
  end;

  lista = ^nodo;

  nodo = record
    elem: viaje;
    sig: lista;
  end;

  CantTipo = array [1..rangotrans] of integer;

procedure leerViaje (var v: viaje);
begin
  read(v.codigo);
  if (v.codigo <> fin) then begin
    read(v.dia);
    read(v.facultad);
    read(v.transporte);
    read(v.precio);
  end;
end;

procedure insertarOrdenado (var l: lista; v: viaje);
var
  ant, actual, nuevo: lista;
begin
  new(nuevo);
  nuevo^.elem:= v;
  nuevo^.sig:= nil;
  if (l = nil) then
    l:= nuevo;
  else begin
    actual:= l;
    ant:= l;
  while (actual <> nil) and (actual^.elem.codigo < nuevo^.elem.codigo) do begin
    ant:= actual;
    actual:= actual^.sig;
  end
  if (actual = l) then begin
    nuevo^.sig:= l;
    l:= nuevo;
  end;
  else begin
    ant^.sig:= nuevo;
    nuevo^.sig:= actual;
  end;
 end;
end;

procedure cargarLista (var l: lista);
var
  v: viaje;
begin
  leerViaje(v);
  while (v.dni <> fin) do begin
    insertarOrdenado(l, v);
    leerViaje(v);
  end;
end;

procedure inicializarContador (var vTrans: CantTipo);
var
  i: integer;
begin
  for i:= 1 to rangotrans do begin
    vTrans[i]:= 0;
  end;
end;

procedure procesarLista (l: lista; var vTrans: CantTipo);
var
  ViajeActual: viaje;
  Cant80, Cant6, CantViajes, CantBicicleta: integer;
  SumaPrecio: real;
  CumpleBicicleta: boolean;
begin
  Cant80:= 0;
  while (l <> nil) do begin
    AlumnoActual:= l^.elem.codigo;
    Cant6:= 0;
    CantBicicleta:= 0;
    CantViajes:= 0;
    CumpleBicicleta:= false;
    SumaPrecio:= 0;
    while (l <> nil) and (l^.elem.codigo = AlumnoActual) do begin
      SumaPrecio:= SumaPrecio + l^.elem.precio;
      CantViajes:= CantViajes + 1;
      vTrans[l^.elem.transporte]:= vTrans[l^.elem.transporte] + 1;
      if (l^.elem.transporte <> bicicleta) and (cumpleBicicleta = false) do begin;
        CantBicicleta:= CantBicicleta + 1
        CumpleBicicleta:= true;
      end;
      l:= l^.sig;
    end;
    if (CantViajes > 6) then
      Cant6:= + 1;
    if (SumaPrecio > 80) then
      Cant80:= cant80 + 1;
    end;
  end;
end;

procedure crearLista(var l: lista);
begin
  l:= nil;
end;

procedure CalcularMaximos (vTrans: CantTipo, var MaxTipo1, MaxTipo2: integer);
var
  Max, i: integer;

begin
  Max:= -1
  for i:= 1 to rangotrans do begin
    if (Max < vTrans[i]) then begin
      MaxTipo2:= MaxTipo1
      MaxTipo1:= vTrans[i];
    else
      MaxTipo2:= vTrans[i];
    end;
  end;
end;
    
var
  l: lista;
  vTrans: CantTipo;
  v: viaje;
  MaxTipo1, MaxTipo2: integer;
begin
  crearLista(l);
  cargarLista(l);
  inicializarContador(vTrans);
  procesarLista(l, vTrans);
  CalcularMaximos(vTrans, MaxTipo1, MaxTipo2);
  writeln('Los dos medios de transporte más utilizados son: ', MaxTipo1, MaxTipo2);
end;

    

  

