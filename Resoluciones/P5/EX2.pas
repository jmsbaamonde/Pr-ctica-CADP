program punteros;
type
cadena = string[9];
producto = record
codigo: integer;
descripcion: cadena;
precio: real;
end;
puntero_producto = ^producto;
var
p: puntero_producto; // 4 bytes por ser puntero
prod: producto; // Memoria estática = suma de los campos = 4 (integer) + 10 (cadena) + 8 (real) 
begin
writeln(sizeof(p), ' bytes'); // 4 bytes por ser puntero
writeln(sizeof(prod), ' bytes'); // Memoria estática = suma de los campos = 4 (integer) + 10 (cadena) + 8 (real) 
new(p); 
writeln(sizeof(p), ' bytes'); // 4 bytes por ser puntero
p^.codigo := 1;
p^.descripcion := 'nuevo producto';
writeln(sizeof(p^), ' bytes'); // 22 bytes suma de campos
p^.precio := 200;
writeln(sizeof(p^), ' bytes'); // 22 bytes suma de campos
prod.codigo := 2;
prod.descripcion := 'otro nuevo producto';
writeln(sizeof(prod), ' bytes'); // Memoria estática = suma de los campos = 4 (integer) + 10 (cadena) + 8 (real) 
end.