rogram JugamosConListas;
type
lista = ^nodo;
nodo = record
num : integer;
sig : lista;
end;
procedure armarNodo(var L: lista; v: integer);
var
aux : lista;
begin
new(aux); // Reserva una zona de memoria dinámica para la variable aux
aux^.num := v; // Copia en el valor contenido en lo que apunta aux, lo que tiene el parámetro v (valor)
aux^.sig := L; // Copia en el valor contenido de la dirección del siguiente nodo lo que tiene el parámetro L (pri)
L := aux; // Copia aux en L
end;

var
pri : lista; 
valor : integer;
begin
pri := nil; // Crea lista poniendo en la primera posición el valor nil
writeln(‘Ingrese un numero’);
read(valor); // Lee valor
while (valor <> 0) do begin
armarNodo(pri, valor); // Llama al procedimiento nodo
writeln(‘Ingrese un numero’);
read(valor); // Lee valor
end;
. . . { imprimir lista }
end.


b.

La lista agrega los nodos de manera como si fuera una pila, por lo que agrega adelante, si se tomasen los valores del inciso, en orden sería: 0, 48, 13, 21, 10;

c.

procedure ImprimirNodos (p: lista);
begin
  while (p <> nil) do begin
    write(p^.num);
    p:= p^.sig;
  end;
end;

d.
procedure IncrementarNodos (var p: lista; valor: integer);
begin
  while (p <> nil) do begin
    aux^.num:= aux^.num + valor;
    aux:= aux^.sig
  end;
end;