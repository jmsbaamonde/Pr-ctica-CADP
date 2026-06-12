Program Plus1;
procedure intercambio(var num1,num2 : integer);
var
aux : integer;
begin
aux := num1; (*Pasa a ser 10*)/
num1 := num2; (*Pasa a ser 5*)
num2 := aux;
end;
procedure sumar(num1 : integer; var num2 : integer);
begin
num2 := num1 + num2; (*Num2= 1 + 5*) / 2davuelta: (2 + 10) = 12
end;
var
i, num1, num2 : integer;
begin
read(num1);
read(num2);
for i := 1 to 3 do begin
intercambio(num1,num2); (Num1= 6) (*Num2 = 10*) / 2davuelta: (Num1:= 12 y Num2:=6) / Tercera vuelta
sumar(i,num1); 
end;
writeln(num1);
end.


a) Num1:= 10 Num2:= 5

Imprime: 9

b) Num1:= 5, Num2:= 10

Imprime: 14