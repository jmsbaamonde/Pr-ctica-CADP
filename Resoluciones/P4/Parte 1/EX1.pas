Program EX1
2. type 
3.   
vnums = array [1..10] of integer; 
4. var 
5.   
6.   
numeros : vnums; 
i : integer; 
7. begin 
8.   
for i:=1 to 10 do {primer bloque for} 
9.     
numeros[i] := i; 
10.  
11.   for i := 2 to 10 do {segundo bloque for} 
12.     
numeros[i] := numeros[i] + numeros [i-1] 
13. end. 

a. ¿Qué valores toma la variable numeros al finalizar el primer bloque for? 
En el primer for, la variable numeros toma los valores de la variable i, del 1 al 10
b. Al terminar el programa, ¿con qué valores finaliza la variable números? 
numeros[2]:= numeros[2] + numeros[2-1] = 2 + 1 = 3
numeros[3]:= numeros[3] + numeros[3-1] = 3 + 3 = 6
numeros[4]:= numeros[4] + numeros[4-1] = 4 + 6 = 10
numeros[5]:= numeros[5] + numeros [5-1] = 5 + 10 = 15
...
numeros[10]:= numeros[10] + numeros [10-1] = 10 + numeros[9]
c. Si se desea cambiar la línea 11 por la sentencia:      
for i:=1 to 9 do     
¿Cómo debe modificarse el código para que la variable números contenga los mismos valores que 
en 1.b? 
Podría ser:
for i= 1 to 9 do begin
  numeros[i]:= numeros[i+1] + numeros[i] 
d. Qué valores están contenidos en la variable numeros si la líneas 11 y 12  se reemplazan por: 
for i:=1 to 9 do 
numeros[i+1] := numeros[i];
La variable tendría los valores: basura, 1, 2, 3, 4, 5, 6, 7, 8, 9
 