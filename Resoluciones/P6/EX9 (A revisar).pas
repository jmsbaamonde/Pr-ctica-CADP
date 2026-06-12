program JugamosConListas; 
type 
lista = ^nodo; 
nodo = record 
    num : integer; 
    sig : lista; 
end;       
procedure armarNodo(var L: lista; v: integer); 
var 
  aux : lista; 
begin 
  new(aux); 
  aux^.num := v; 
  aux^.sig := L; 
  L := aux; 
end;

function estaOrdenada (l: lista): boolean;
var
  cumple: boolean;
begin
  cumple:= true;
  while (l <> nil) and (cumple) do begin
    if (l^.num > l^.sig^.num) then // no sé si se escribe así, pero lo que pregunto es si el valor del nodo actual es mayor al del siguiente, retorna false
      cumple:= false;
    l:= l^.sig;
  end;
  estaOrdenada:= cumple;
end;
    
procedure Eliminar (var l: lista; v: integer);
var
  ant, actual: lista;
begin
  actual:= l;
  while (actual <> nil) and (actual^.num <> v) do begin
    ant:= actual
    actual:= actual^.sig;
  end;
  if (actual <> nil) then begin
    if (actual = nil) then
        L:= l^.sig;
    else
      ant^.sig:= actual^.sig;
      dispose(actual);
    end;
end;
      
procedure SublistaC (l: lista; a,b: integer; var ListaNueva: lista);
begin
     
  while (l <> nil) do begin
    if (l^.num > a) and (l^.num < b) then
      armarNodo(ListaNueva, l^.num)
    l:=l^.sig;
  end;
end;

procedure SublistaD (l: lista; a,b: integer; var ListaNueva: lista);
begin
     
  while (l^.num < b) do begin
      if (l^.elem > a) then
        armarNodo(ListaNueva, l^.num)
    l:=l^.sig;
  end;
end;

procedure SublistaE (l: lista; a,b: integer; var ListaNueva: lista);
begin
     
  while (l^.num > a) do begin
    if (l^.num < b) then
      armarNodo(ListaNueva, l^.num)
    l:=l^.sig;
  end;
end;

var 
  pri : lista; 
  valor : integer;  
begin 
  pri := nil; 
  writeln(‘Ingrese un numero’);      
  read(valor); 
  while (valor <> 0) do begin 
    armarNodo(pri, valor); 
    writeln(‘Ingrese un numero’); 
    read(valor); 
  end; 
  . . . { imprimir lista } 
end. 