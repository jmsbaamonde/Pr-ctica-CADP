program punteros;
type
numeros = array[1..10000] of integer;
puntero_numeros = ^numeros;
var
n: puntero_numeros;
num: numeros;
i:integer;
begin
    writeln(sizeof(n), ' bytes'); // 4 bytes porque es un puntero
    writeln(sizeof(num), ' bytes'); // 10000 x 2 = 20.000 bytes (dimensión física por tipo de dato)
    new(n);
    writeln(sizeof(n^), ' bytes'); // 20.000 bytes
    for i:= 1 to 5000 do
    n^[i]:= i;
    writeln(sizeof(n^), ' bytes'); // 20.000 bytes
end.