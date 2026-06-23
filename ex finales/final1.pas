2.

dados los siguiente programas:

program uno
type
  datos = array [1..100] of integer;
var 
  d: datos;
begin
// operaciones e invocaciones para cargar y recorrer el vector d
end

program dos 
var
  d: array [1..100] of integer;
begin
// operaciones e invocaciones para cargar y recorrer el vector d
end.

indicar si los siguientes programas son válidos o no. analice si considera que el funcionamiento en ambos programas es el mismo o no

respuesta:

ambos programas son válidos, ya que los dos declaran una variable de tipo vector de enteros y la utilizan en el programa principal
la diferencia recae en que, el primer programa declara un tipo datos que se asocia siempre a un vector de 100 enteros, mientras que en el segundo, el vector se declara directamente en la variable
Funcionan de la misma manera, pero el primero puede reutilizar el tipo datos para nuevos vectores, mientras que el segundo debería declarar uno nuevo.

3. 
calcule e indique la cantidad de memoria estática y dinámica que utiliza el siguiente programa
mostrar los valores intermedios y justificar

tabla datos:
char: 1 byte
integer: 6 bytes
real: 10 bytes
boolean: 1 byte
string: longitud + 1 byte
puntero: 4 bytes

program ejercicio3;
type
  info = record
    nombre: string;
    nota: integer;
    datos: ^integer;
    end;

  vector = array [1..100] of info;

var
  v: vector;
  i,j: integer;
  e: info;
begin
  read(e.nombre);
  i:= 0;
  while (i < 100) and (e.nombre <> 'zzz') do begin
    read(e.nota)
    e.datos= nil;
    i:= i + 1;
    v[i]:= e;
    read(e.nombre);
  end
  for j:= 1 to i do begin
    new(v[j].datos)
    v[j.datos]^:=v[j].nota mod 10;
  end;

memoria estática = suma de variables globales + variables locales + parámetros + constantes 
memori dinámica = new/dispose

memoria dinámica = i.6 bytes (cantidad de veces que hace new, multiplicado por el valor de lo que apunta datos que es un entero)

memoria estática=

4 variables locales =
v = 100 x info (info = 256 (string) + 6 (integer) + 4 (puntero)) ---> 100 x 266 = 26600 bytes
i, j= 2 x 6 = 12 bytes
e = 266 bytes

total = 26600 + 12 + 266 = 26878 bytes

4.
calcule el tiempo de ejecucion del  programa del punto 3. mostrar los valores intermedios y justificar

begin
  read(e.nombre); // no se considera
  i:= 0; // (1)
  while (i < 100) and (e.nombre <> 'zzz') do begin // (2)
    read(e.nota)
    e.datos= nil;
    i:= i + 1;
    v[i]:= e;
    read(e.nombre);
  end
  for j:= 1 to i do begin // (3)
    new(v[j].datos)
    v[j.datos]^:=v[j].nota mod 10;
  end;

tiempo total = 1 + 2 + 3 ut 

(1)= asignacion = 1 ut

(2)= while = evaluar la condición + cuerpo = (1 + 1 + 1)*n+1  + n*(1 + 2 + 1) = 3*n+1 + 4*n

(3)= for (3i + 2) + i*cuerpo =  
     i = desconocido
     cuerpo = asignacion + mod = 1 + 1 ut
     
     for = (3i + 2) + i*2 ut

total = 1 ut + (3*n+1 + 4*n) + (3i + 2) + i*2 ut = 4n + 5i + 3 ut 



