1. program ejercicio5;
2. { suma los números entre a y b, y retorna el resultado en c }
3. procedure sumar(a, b, c : integer)
4. var
5. suma : integer;
6. begin
7.
8. for i := a to b do
9. suma := suma + i; (*La primera suma sería basura + i*)
10. c := c + suma;
11. end;



12. var
13. result : integer;

14. begin
15. result := 0;
16. readln(a); readln(b); (*No se puede leer un parámetro de un módulo en el programa principal*)
17. sumar(a, b, 0); (*No se pueden usar parámetros de un procedimiento en el cuerpo del programa principal*)
18. write(‘La suma total es ‘,result); (*La variable result no tiene conexión con lo hecho en el procedimiento*)
19. { averigua si el resultado final estuvo entre 10 y 30}
20. ok := (result >= 10) or (result <= 30); (*Ok no está inicializado*) (*Result no se modifica en ningún momento por lo que queda en 0*)
21. if (not ok) then
22. write (‘La suma no quedó entre 10 y 30’);
23. end.