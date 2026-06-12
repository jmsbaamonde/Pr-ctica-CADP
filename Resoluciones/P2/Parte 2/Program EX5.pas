Program EX5;

function EsDoble(num1: integer; num2:integer): boolean;
begin
  EsDoble:= (num2 = num1 * 2);
end;

var
  numero1, numero2, cantDoble, cantPares: integer;
begin
  cantPares:= 0;
  cantDoble:= 0;
  read(numero1);
  read(numero2);
  while (numero1 <> 0) and (numero2 <> 0) do;
    begin
      cantPares:= cantPares + 1;
      if (EsDoble(numero1, numero2)) then
        cantDoble:= cantDoble + 1;
    end;
      read(numero1);
      read(numero2);
    end;
  writeln('La cantidad de pares leídos es: ', cantPares);
  writeln('La cantidad de pares en los que el segundo número es el doble del primero es: ', cantDoble);
end.