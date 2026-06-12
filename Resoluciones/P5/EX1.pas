Program EX1;

1. program punteros;
type
cadena = string[50];
puntero_cadena = ^cadena;
var
pc: puntero_cadena;
begin
    writeln(sizeof(pc), ' bytes'); // 4 bytes ya que es un puntero
    new(pc); // Hace un new, por lo que en memoria dinámica son 51 bytes (tamaño string + 1)
    writeln(sizeof(pc), ' bytes'); // 4 bytes ya que es un puntero
    pc^:= 'un nuevo nombre'; // 51 bytes por la cadena
    writeln(sizeof(pc), ' bytes'); // 4 bytes ya que es un puntero
    writeln(sizeof(pc^), ' bytes'); // 51 bytes por la cadena
    pc^:= 'otro nuevo nombre distinto al anterior'; // 51 bytes por la cadena
    writeln(sizeof(pc^), ' bytes'); // 51 bytes por la cadena
end;