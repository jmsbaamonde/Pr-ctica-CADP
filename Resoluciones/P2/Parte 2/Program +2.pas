Program Plus2;
Const
  fin= 10;
Procedure ProductoySuma (x, y; real);
var
  i, suma, producto: real
begin
  sumatotal:= 0
  producto:= 1
  for i:= x to y do
    begin
      sumatotal:= sumatotal + i;
      producto:= producto * i;
  end;
  writeln ('La suma es: ', sumatotal);
  writeln ('El producto es: ', producto);
end;
var
  i: integer;
  x, y: real;
begin
  for i:= 1 to fin do begin
    read(x);
    read(y);
    ProductoySuma(x, y);
  end,
end.

  
      