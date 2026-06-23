3. 
calcule e indique la cantidad de memoria estática y dinámica que utiliza el siguiente programa
mostrar los valores intermedios y justificar

tabla datos:
char: 1 byte
integer: 4 bytes
real: 8 bytes
boolean: 1 byte
string: longitud + 1;
puntero: 4 bytes;

program ejercicio3;
type
  info = record
    nombre: string;
    nota: integer;
    prom: real;
    datos: ^integer;
    end;

  vector = array [1..80] of info;

var
  v: vector;
  i, cant: integer;
  e: info;
begin
  for i:= 1 to 80 do 
    begin
      read(e.nota);
      read(e.nombre);
      read(e.prom);
      if (i mod 2 = 0) then
        new(v[i].datos)
      else
        v[i].datos = nil;
    end;
  i:= 1;
  while (i <= 80) and (e.nombre <> 'zzz') do
   begin
     cant:= 0;
     if (v[i].nota > 5) then 
       cant:= cant + 1;
     i:= i + 1
  end;
end.

memoria estática = suma de variables globales + variables locales + parámetros + constantes 
memoria dinámica = cantidad de new/dispose

memoria dinámica = ¿acá se cuenta el new o como es el peor caso siempre me fijo en el else?

memoria estática = 

4 variables locales:
v = vector = 80*info (info = 256 (string) + 4 (integer) + 8 (real) + 4 (puntero) = 272 bytes) = 80*272 = 21760 bytes
i, cant= 4 + 4 = 8 bytes
e = 272 bytes 

total = 21760 + 8 + 272 = 22040 bytes

4. 
calcule el tiempo de ejecucion del  programa del punto 3. mostrar los valores intermedios y justificar

begin
  for i:= 1 to 80 do // (1)
    begin
      read(e.nota);
      read(e.nombre);
      read(e.prom);
      if (i mod 2 = 0) then
        new(v[i].datos)
      else
        v[i].datos = nil;
    end;
  i:= 1; // (2)
  while (i <= 80) and (e.nombre <> 'zzz') do // (3)
   begin
     cant:= 0;
     if (v[i].nota > 5) then 
       cant:= cant + 1;
     i:= i + 1
  end;
end.

tiempo total = (1) + (2) + (3) ut

(1) for = (3n + 2) + n* cuerpo
    n = 80
    cuerpo = asignación = 1 ut
    for = (3*80 + 2) + 80*1 = 322 ut

(2) asignación = 1 ut

(3) while = c(i + 1) + i*cuerpo
    i = desconocido
    c = 3 ut (dos de comparación y uno de conector)
    cuerpo = asignacion = 1 ut + if = 3 ut + asignacion y suma = 2 ut = 6 ut 
    if = condicion + cuerpo = 1 (condicion) + 2 (asignacion y suma)
    for = 3(i + 1) + i*6 = 9i + 1

total = 322 + 1 + 9i + 1 = 9i + 324 ut 

