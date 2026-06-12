(*1)*)
(*Responda las siguientes preguntas*)
program Ejercicio3;
procedure suma(num1: integer; var num2:integer);
begin
num2 := num1 + num2;
num1 := 0;
end;
var
i, x : integer;
begin
read(x); { leo la variable x }
for i:= 1 to 5 do
suma(i,x);
write(x); { imprimo las variable x }
end.

(*a. ¿Qué imprime si se lee el valor 10 en la variable x ?
Respuesta: Imprime el valor 25*)

(*b. Qué imprime si se lee el valor 10 en la variable x y se cambia el encabezado del procedure por:
procedure suma(num1: integer; num2:integer);
Respuesta: Imprime el valor 10 ya que nunca se guarda la modificación del proceso*)

(*c. Qué sucede si se cambia el encabezado del procedure por:
procedure suma(var num1: integer; var num2:integer);
Respuesta: Se produce un error ya que está cambiando el valor inicializado del for constantemente)