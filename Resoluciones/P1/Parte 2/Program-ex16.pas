Program EX18
Const
 fin= 0;
Var
  i, numdia: integer;
  monto, totalDía, totalMes: real;
Begin
  VentasDía:= 0
  totalMes:= 0
  for i: 1 to 31 do;
    begin
      numdia:= i
      repeat
        read(monto);
        VentasDia:= VentasDía + 1;
        totalMes:= totalMes + monto;
      until (monto = fin);
      write ('La cantidad de ventas en el día', 'numdia' , 'fueron', 'VentasDia');
      VentasDia:=0
    end;
  end;
  write ('El monto total acumulado en el mes fue de:', 'totalMes');
end.


a) Program EX18
Const
 fin= 0;
Var
  i, numdia, maxdia, maxventas: integer;
  monto, totalDía, totalMes: real;
Begin
  maxventas:= -999
  VentasDía:= 0
  totalMes:= 0
  for i: 1 to 31 do;
    begin
      numdia:= i
      repeat
        read(monto);
        VentasDia:= VentasDía + 1;
        totalMes:= totalMes + monto;
        if (VentasDia > maxventas) then
          maxdia:= i
          maxventas:= VentasDia
      until (monto = fin);
      write ('La cantidad de ventas en el día', 'numdia' , 'fueron', 'VentasDia');
      VentasDia:=0
    end;
  end;
  write ('El monto total acumulado en el mes fue de:', 'totalMes');
  write ('El día con mayor cantidad de ventas fue el día número:', 'maxdia')
end.
      
        
      

