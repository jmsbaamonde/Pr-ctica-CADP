Program EX10
Var
  num, max, i: integer;
Begin
  max:= -999
  for i: 1 to 10 do
  Begin 
    read(num)
    if (num > max) then
      max:= num
  end;
  write ('El mayor número leído fue el, max')
end.

a)
Program EX10
Var
  num, max, pos, i: integer;
Begin
  max:= -999
  for i: 1 to 10 do
  Begin 
    read(num)
    if (num > max) then
      max:= num
      pos:= i
  end;
  write ('El mayor número leído fue el, max , en la posición pos')
end.
    
