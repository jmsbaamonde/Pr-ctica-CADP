Program Plus4;
Const
  tierra = 12700;
  marte = 6780;
  jupiter = 439264
  
Procedure DiametroYPerimetro (r: real, var d, p: real);
begin
  d:= 2 * r;
  p:= Pi * d;
end;

var
  planeta: string[50];
  radio, diametro, perimetro, añosluz: real;
  cantSupJupiter: integer;
begin
  cantSupJupiter:=0
  read(radio)
  while (radio <> 0) do begin
    DiametroYPerimetro (radio, diametro, perimetro);
    if (diametro <= tierra) and (diametro >= marte) then
      writeln(planeta, añosluz);
    end;
    if (perimetro > jupiter) then
      cantSupJupiter:= cantSupJupiter + 1
    end;
    writeln('La cantidad de planetas con mayor perímetro que el de Júpiter es: ', cantSupJupiter)
  end;
end.

