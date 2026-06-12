Program EX5;
Const
  fin = -1;
type
  cadena = string[100];
  producto = record
    code: integer;
    desc: cadena;
    stocka: integer;
    stockmin: integer;
    precio: real;
  end;

  lista = ^producto

  nodo = record
    prod: producto
    sig: lista;
  end;


procedure leerProducto (var p: producto);
begin
  read(p.code)
  if (p.code <> fin) then begin
    read(p.desc);
    read(p.stocka);
    read(p.stockmin);
    read(p.precio);
  end;
end;

procedure agregarElemento (var LI, LF: lista; p: producto);
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
  p: producto;
  pri, ult: lista
begin
  pri, ult:= nil;
  leerProducto(p);
  while (p.code <> fin) do begin
    agregarElemento(pri, ult, p);
    leerProducto(p);
  end;
  l:= pri;
end;


function PorcentajeStock (l: lista): real;
var
  StockTotal, StockPorc: real;
begin
  StockTotal:= 0;
  StockPorc:= 0;
  while (l <> nil) do begin
    StockTotal:= StockTotal + 1;
    if (l^.stocka < l^.stockmin) then
      StockPorc:= StockPorc + 1
    end;
    l:= l^.sig;
  end;
  PorcentajeStock:= StockPorc / StockTotal ;
end;

function Pares (l: lista,): boolean
var
  digito: integer;
  cantPares:= integer;
begin
  cantPares:= 0;
  cumple:= false;
  begin
  digito:= l^.code mod 10;
  while (l^.code <> 0) do begin
    if ((digito mod 2) = 0) then 
      cantPares:= cantPares + 1
    end;
  end;
  if (cantPares >= 3) then begin
    cumple:= true;
  end;
  Pares:= cumple;
end;

procedure ImprimirDesc (l: lista);
begin
  while (l <> nil) do begin
    if (Pares(l)) then begin
      writeln(l^.desc)
    end;
    l:= l^.sig
  end;
end;


procedure MinProd (l: lista; var MinProd1, MinProd2: integer);
var
  min1, min2: integer;
begin
  min:= 99999;
  while (l <> nil) do begin
    if (l^.precio < min1) then begin
      min2:= min1
      minprod2:= minprod1;
      min:= l^.precio;
      minprod1:= l^.code;
    end;
    l:= l^.sig
  end;
end;


var
  l: lista
  minprod1, minprod2: integer;
  p: producto;
begin
  generarLista(l);
  write('El porcentaje de productos con stock actual por debajo del stock mínimo es: ', PorcentajeStock(l), '%');
  ImprimirDesc(l);
  MinProd(l, minprod1, minprod2);
  writeln('Los dos productos más económicos tienen de codigo: ', minprod1, 'y', minprod2);
end;
    

