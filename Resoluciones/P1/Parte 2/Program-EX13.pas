Program EX13
Const
  fin=100;
Var
  num, totalSum, max, min: integer;
Begin
  totalSum:= 0
  max:= -9999999999
  min:= 9999999999999
  repeat
    read(num)
    if (num > max) then
        max:= num
    end;
    if (min > num) then
      begin
        min:= num
    end;
    totalSum:= totalSum + num
    until (num = fin);
    write ('El número máximo leído es:', 'max')
    write ('El número mínimo leído es:', 'min')
end.
