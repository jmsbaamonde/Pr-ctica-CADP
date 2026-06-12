Program EX6;
Const
  fin= 100;
Procedure leerDatos (var precio: real; var codigo: integer; var tipo: string[20]);
begin
  writeln('Ingrese precio, código y tipo del producto')
  read(precio)
  read(codigo)
  read(tipo)
end.

Procedure MasBaratos (PrecioProducto:real; var MinProducto: real; var MinCodigo1, MinCodigo2: integer);
begin
  If (PrecioProducto < MaxProducto) then
    begin
      MinProducto:= PrecioProducto
      MinCodigo2:= MinCodigo1
      MinCodigo1:= PrecioProducto
    end;
end.

Procedure PantalonMasCaro (PantaPrecio: real; var MaxPantaPrecio: real; var CodigoPantalon: integer; var MaxCodigoPantalon);
begin
  if (PantaPrecio > MaxPantaPrecio) then
    MaxPantaPrecio:= PantaPrecio

  end;
end.

function Promedio (Total: real): real;
begin
  Promedio:= total div fin
end.

var
  i, code, mincode1, mincode2, maxpantcode: integer;
  price, minproduct, maxpantprice, sumatotal: real;
  tipodeproducto: string[20];
begin
  maxpantprice:= -99999999;
  minproduct:= 9999999;
  sumatotal:= 0;
  For i: 1 to fin do
    leerDatos(price, code, type);
    MasBaratos(price, minproduct, mincode1, mincode2);
    if (tipodeproducto = 'Pantalon') then
      begin
        PantalonMasCaro(price, maxpantprice, code, maxpantcode);
      end;
    sumatotal:= sumatotal + price;
  end;
  writeln('El codigo de los dos productos más baratos son: ', mincode1, 'y', mincode2);
  writeln('El código del pantalón más caro es: ', maxpantcode);
  writeln('El precio promedio de los productos es', Promedio);
