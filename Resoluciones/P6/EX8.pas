program EX8; 
type 
lista = ^nodo; 
nodo = record 
    num : integer; 
    sig : lista; 
end;       
procedure armarNodo(var L: lista; v: integer); 
var 
  actual, ant, aux : lista; 
begin 
  new(aux);
  aux^.num:= v;
  aux^.sig:= nil;
  if (l = nil) then
    L:= aux;
  else
    actual:= L
    ant:= L
	while (actual <> nil) and (actual^.elem = v) do begin
	  ant:= actual
	  actual:= actual^.sig;
	end;
    if (actual = L) then begin
      aux^.sig:= L;
      L:= aux;
    else begin
      ant^.sig:= nuevo;
      aux^.sig = actual;
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