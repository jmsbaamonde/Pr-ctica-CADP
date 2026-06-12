Program EX14
Var
  i, codigo, 1erCode, 2doCode, cantPar: integer;
  1erMin,precio: real
Begin 
  cantPar:= 0
  1erMin= 10000000000
  for i: 1 to 200 do
    begin
        read(codigo)
        read(precio)
        if (1erMin > precio) then
          begin
            2docode:= 1erCode
            1erCode:= codigo
          end;
        if (precio > 16) and ((codigo mod 2) = 0) then
          Begin
            cantPar:= cantPar + 1
          end;
    end;
  end;
  writeln('Los dos productos más baratos fueron:, 1erCode y , 2docode ')
  writeln('La cantidad de productor de más de 16 pesos con código par es:, cantPar')
end.
