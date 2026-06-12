Program EX10;
Type
  cliente = record
    dni: integer;
    nro: integer;
  end;
// a)
  lista = ^nodo 
  nodo = record
    elem: cliente
    sig: lista;
  end;
  
// b)
  procedure RecibirCliente (dni: integer; var pri, ult: lista)
  var
    nuevo: lista;
  begin
    new(nuevo)
    nuevo^.elem.dni:= dni;
    nuevo^.sig:= nil;
    ult^.elem.nro:= ult^.elem.nro + 1;
    pri^.elem.nro:= ult^.elem.nro;
    
    
    if (pri = nil=) then begin
      pri:= nuevo;
      ult:= nuevo;
    else begin
      ult^.sig:= nuevo;
      ult:= nuevo;
    end;
  end;
 
// c)
  procedure AtenderCliente (var pri, ult: lista; var nro, dni: integer);
  var
    actual: lista;
  begin
    nro:= pri^.nro;
    dni:= pri^.dni;
    actual:= pri;
    pri:= pri^.sig
    if (pri = nil) then
      ult:= nil;
    dispose(actual);
  end;

// d)
var
  pri, ult, l: lista;
  c: cliente;
begin
  pri:= nil;
  ult:= nil;
  read(c.dni);
  while (c.dni <> 0) do begin
    RecibirCliente(c.dni, pri, ult);
    read(c.dni);
  end;

  while (pri <> nil) do begin
    AtenderCliente(pri, ult, nro, dni);
  end;
end;

(Falta revisar)


      
