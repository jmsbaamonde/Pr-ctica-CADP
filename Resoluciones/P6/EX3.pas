Program EX3L;

procedure armarNodo(var l: lista; v: integer);
var
  nuevo, aux : lista;
begin
new(nuevo);
nuevo^.num := v;
nuevo^.sig := nil;
if (L = nil) then begin
  L:= nuevo
else
  begin
    aux:= l
    aux^.elem:= v;
    while (aux^.sig <> nil) do begin
      aux:= aux^.sig
    end;
    aux^.sig:= nuevo
  end;
end;


b)


procedure armarNodo(var LI, LF: lista; v: integer);
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

