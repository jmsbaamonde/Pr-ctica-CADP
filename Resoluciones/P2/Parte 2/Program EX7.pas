Program EX7;
Const
  fin= 10;

Procedure CantDigitos (numero: integer; var cantDig, sum: integer);
var
 dig: integer;
begin
    cantdig:= 0
    sum:= 0
    while (numero <> 0) do
      begin 
        dig:= numero mod 10;
        sum:= sum + dig;
        numero:= numero div 10;
        cantDig:= cantDig + 1;
    end;
  end;

var
  num, cantDigit, suma: integer;
begin
  repeat
    readln(num);
    CantDigitos(num, cantDigit, suma);
    writeln('La cantidad de dígitos del número leído es: ', cantDigit);
  until (cantDigit= fin);
end.



    
        