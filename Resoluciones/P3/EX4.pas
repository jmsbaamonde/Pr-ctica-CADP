Program EX4;
Const
  totalC= 9300;
  PrecioMinuto= 3.40;
  PrecioMB= 1.45;
Type
  linea= record
    numero: integer;
    Mins: real;
    MBs: real;
  end;
  cliente = record
    codigo: integer;
    CantLineas: integer;

Procedure leerCliente (var c: cliente);
begin
  read(c.numero);
  read(c.cantlineas);
end;

Procedure leerLinea (var l: linea);
begin
  read(l.numero);
  read(l.Mins);
  read(l.MBs);
end;


Procedure Facturacion (c: cliente; l: linea; var totalMins, totalMBs: real);
begin
  for i= 1 to c.CantLineas do begin
    leerLinea(l)
    totalMins:= totalmins + (l.Mins * PrecioMinuto);
    totalMBs:= totalMBs + (l.MBs * PrecioMB);
  end;


var
  c: cliente
  l: linea
  totalMins, totalMBs: real;
begin
  totalmins:=0
  totalMBs:=0
  for i= 1 to totalC do begin
    leerCliente(c)
    Facturacion(c, l, totalmins, totalMBs);
    writeln ('El total a factura es de: ', totalmins, 'para el total de minutos y',totalMBs, 'para el total de MB consumidos');
  end;
end;
    


  
