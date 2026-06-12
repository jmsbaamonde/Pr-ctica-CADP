a- program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
var
pc: puntero_cadena;
begin
pc^:= 'un nuevo texto';
new(pc);
writeln(pc^); 
end.

No imprime porque da error en la primera línea

b- program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
var
pc: puntero_cadena;
begin
new(pc);
pc^:= 'un nuevo nombre';
writeln(sizeof(pc^), ' bytes'); // 51 bytes (tamaño del string en bytes + 1)
writeln(pc^); // Imprime 'un nuevo nombre'
dispose(pc); 
pc^:= 'otro nuevo nombre' // Da error de ejecución ya que la operación es inválida
end.

c- program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
procedure cambiarTexto(pun: puntero_cadena);
begin
pun^:= 'Otro texto';
end;
var
pc: puntero_cadena;
begin
new(pc);
pc^:= 'Un texto';
writeln(pc^); // Imprime 'Un texto'
cambiarTexto(pc);
writeln(pc^); // Imprime 'Otro texto'
end.

d- program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
procedure cambiarTexto(pun: puntero_cadena);
begin
new(pun);
pun^:= 'Otro texto';
end;
var
pc: puntero_cadena;
begin
new(pc);
pc^:= 'Un texto';
writeln(pc^); // Imprime un 'Un texto' 
cambiarTexto(pc);
writeln(pc^); // Imprime 'Otro texto'
end.