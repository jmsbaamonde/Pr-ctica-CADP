Program EX-8
var
  charleido: char; 
  suma, num: real;

Begin
suma:= 0;
read (charleido);
read (num);
while (num <> 0) do;
  if (charleido = '+');
  Begin
    suma:= suma + num;
  else
   if (charleido = '-') then
     suma:= suma - num;
  else
    write ('Error en el ingreso de cálculo')
  read (num)
  end;
end.
   
    