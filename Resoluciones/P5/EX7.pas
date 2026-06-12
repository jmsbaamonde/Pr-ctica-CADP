Program EX7;

a-

Type 
  cadena = string[50];
  vector = array [1..2500] of cadena;

Cálculo de memoria:= 2500 x 51 = 127.500 bytes

b-
Type 
Nombre = String[50];
Puntero = ^Nombre;
ArrPunteros = array[1..2500] of Puntero;
Var
Punteros: ArrPunteros;
i) 4 x 2500 = 10000 bytes
ii) procedure crearNodos(var v: ArrPunteros);
var
  i: integer;
begin
  for i:= 1 to 2500 do begin
    new(v[i]);
  end:

Cálculo de memoria = 2500 x 51 = 127.500 bytes de memoria dinámica

iii) procedure cargarNombres (var v: ArrPunteros);
var
  i: integer;
begin
  for i:= 1 to 2500 do begin
    read(v[i]^);
  end;
end;