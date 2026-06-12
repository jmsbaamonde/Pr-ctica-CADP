Program EX8;
Const
  fin= 123456;

Procedure PareseImpares (num: integer; var sumadepares, cantimpares: integer);
var
  dig: integer;
begin
  sumadepares:= 0
  cantimpares:= 0
  while (num <> 0) do
    begin
      dig:= num mod 10;
      if ((dig mod 2) = 0) then
        begin
          sumadepares:= sumadepares + dig;
      else 
        cantimpares:= cantimpares + 1
      end;
      num:= num div 10
    end;
end;

var
  numero, sumapar, cantimpar: integer;
begin
  writeln('Ingrese un número por teclado');
  read(numero);
  while (numero <> fin) do
    begin
      PareseImpares(numero, sumapar, cantimpar);
      writeln('La cantidad de digitos impares es de: ', cantimpar);
      writeln('La suma de los dígitos pares es: ', sumapar);
  end;
end.

  