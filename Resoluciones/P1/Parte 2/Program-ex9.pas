Program EX9
Var
  num, totalSum, i: integer;
Begin 
  totalSum:= 0
  for i: 1 to 10 
  do
  Begin
    read(num)
    totalSum:= totalSum + num
  end;
  write ('La suma total de los números leídos es, totalSum')
End.

a)
Program EX9
Var;
  Mayor5, num, totalSum, i: integer;
Begin 
  totalSum:= 0
  Mayor5:= 0
  for i: 1 to 10 do
  Begin
    read(num)
    totalSum:= totalSum + num
    if (num > 5) 
    then
      Mayor5:= Mayor5 + 1
  end;
  write ('La suma total de los números leídos es, totalSum')
End.


