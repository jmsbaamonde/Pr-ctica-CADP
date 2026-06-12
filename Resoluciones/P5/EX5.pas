De acuerdo a los valores de la tabla que indica la cantidad de bytes que ocupa la representación
interna de cada tipo de dato en Pascal, calcular el tamaño de memoria en los puntos señalados a partir
de(I), suponiendo que las variables del programa ya están declaradas y se cuenta con 400.000 bytes
libres. Justificar mediante prueba de escritorio.
Program Alocacion_Dinamica;
Type
TEmpleado = record
sucursal: char;
apellido: string[25];
correoElectrónico: string[40];
sueldo: real;
end;
Str50 = string[50];
Var
alguien: TEmpleado;
PtrEmpleado: ^TEmpleado;
Begin
{Suponer que en este punto se cuenta con 400.000 bytes de memoria disponible (I)}
Readln( alguien.apellido ); // Los read con hacen uso de la memoria
{Pensar si la lectura anterior ha hecho variar la cantidad de memoria (II)}
New( PtrEmpleado ); // El new reserva en la memoria dinámica, en este caso al ser un puntero al registro TEmpleado, ocupa 1 (char) + 26 (string) + 41 (string 2) + 8 (real) = 76 bytes
{¿Cuánta memoria disponible hay ahora? (III)}
Readln( PtrEmpleado^.Sucursal, PtrEmpleado^.apellido ); // No cambia
Readln( PtrEmpleado^.correoElectrónico, PtrEmpleado^.sueldo ); // No cambiar
{¿Cuánta memoria disponible hay ahora? (IV)} 
Dispose( PtrEmpleado ); // -76 bytes
{¿Cuánta memoria disponible hay ahora? (V)}
400.000 bytes
end