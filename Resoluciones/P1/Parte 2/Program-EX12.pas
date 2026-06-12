Program EX12
Var
  i, num, 1erMin, 2doMin: integer;
  Begin
  1erMin:= 100000;
  2doMin:= 99999;
  for i: 1 to 1000 do
  Begin
    read(num);
    if (num < 1erMin) then
    Begin
      1erMin:= num;
      2doMin:= 1erMin;
    end;
 end;
end.

a) Program EX12
Const
  fin= 0
Var
  i, num, 1erMin, 2doMin: integer;
  Begin
  1erMin:= 100000;
  2doMin:= 99999;
  repeat
  Begin
    read(num);
    if (num < 1erMin) then
    Begin
      1erMin:= num;
      2doMin:= 1erMin;
    until (num = fin);
    end;
 end;
end.
    
b) 
Program EX12
Var
  i, num, 1erMin, 2doMin: integer;
  Begin
  1erMin:= 100000;
  2doMin:= 99999;
  for i: 1 to 1000 do
  Begin
    read(num);
    while (num <> fin) do
    Begin
      if (num < 1erMin) then
      Begin
        1erMin:= num;
        2doMin:= 1erMin;
      end;
    end;
end.