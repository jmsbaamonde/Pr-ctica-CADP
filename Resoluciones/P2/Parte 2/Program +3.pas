Program Plus3;
Const
  fin= 200;
  codigopar= 16;
Type
  codigo: 1..200;
Procedure MasBaratos (code: codigo; precio: real; var minprecio: real; var min1, min2: integer);
var
  minprecio2:= 99998;
begin
  if (precio < minprecio) then begin
    min2:= min1
    min1:= code
  else
    (precio < minprecio2) then
      min2:= code
  end;
end;

var
 precio, minprecio: real;
 i, min1, min2, cantCodigoPar: integer;
 code: codigo;
begin
  cantCodigoPar:= 0
  minprecio:= 999999
  for i:= 1 to fin do begin
    read(precio)
    read(codigo)
    if ((code mod 2) = 0) and (precio > 16) then
      cantCodigoPar:= cantCodigoPar + 1
    end;
    MasBaratos(code, price, minprecio, min1, min2)
  end;
  writeln('La cantidad de productos de más de 16 pesos con código par son: ', cantCodigoPar);
  writeln('Los códigos de los dos prodcutos más baratos son: ', min1, 'y', 'min2');
end.
  



