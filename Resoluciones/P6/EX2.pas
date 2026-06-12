program ejercicio2;
type
lista = ^nodo;
persona = record
dni: integer;
nombre: string;
apellido: string;
end;
nodo = record
dato: persona;
sig: lista;
end;


procedure leerPersona(p: persona);
begin
  read(p.dni);
  if (p.dni <> 0)then begin
    read(p.nombre);
    read(p.apellido);
  end;
end;

{Agrega un nodo a la lista}
procedure agregarAdelante(var l:lista;p:persona);
var
aux: lista;
begin
new(aux)
aux^.dato:= p;
aux^.sig:= l;
l:= aux;
end;

{Carga la lista hasta que llega el dni 0}
procedure generarLista(var l:lista);
var
p:nodo;
begin
leerPersona(p);
while (p.dni <> 0) do begin
agregarAdelante(l,p);
end;
end;

procedure imprimirInformacion(var l:lista);
begin
while (l <> nil) do begin
writeln('DNI: ', l^.dato.dni, 'Nombre:',
l^.nombre, 'Apellido:', l^.apellido);
l:= l^.sig;
end;
end;

{Programa principal}
var
l:lista;
begin
generarLista(l);
imprimirInformacion(l);
end.


1- En agregarAdelante no hacen un new, por lo que no existe ninguna zona de memoria dinámica
2- En agregarAdelante el parámetro del puntero se pasa por valor cuando debería pasarse por referencia
3- En while (p.dni <> 0) do begin, p.dni no es válido ya que p es de tipo nodo, no de tipo persona
4- En leerPersona, el parámetro p está pasado por valor y debe ser referencia
5- En generarLista, falta volver a leer una persona dentro del while
6- En imprimirInformacion de la misma manera que usa l^.dato.dni, debería usar l^.dato.apellido y l^.dato.nombre
7- En imprimirInformacion, el parámetro l se pasa por referencia cuando debería ser por valor
8- En el programa principal, nunca se inicializa la lista con el valor nil
9- En generarLista, se llama a leerPersona(p), pero p es de tipo nodo