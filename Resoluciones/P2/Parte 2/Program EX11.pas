Program EX11

procedure cumpleA(cumple: boolean; var long, arroba: integer);

var
 c: char;
begin
  readln(c);
  while (c <> '%') do
    begin
      if (c = '$') then
        cumple:= false;
      else
        long:= long + 1
        if (c = '@') then
          arroba:= arroba + 1
        readln(c);
    end;
end;

procedure cumpleB(long, arroba: integer; var cumple: boolean);
var
 c: char;
 longA: integer;
begin
  longA:= 0
  readln(c)
  while (c <> '*') and (arroba <= 3) do
    begin
      longA:= longA + 1;
      readln(c);
    end;
  cumple:= (longA = long);
end;

var
  long, arroba: integer;
  cumple: boolean;
  c: char;
begin
  cumple:= true
  cumpleA(cumple, long, arroba);
  if (cumple) then
    begin
      cumpleB(long, arroba, cumple)
      if (cumple) then
        writeln('Se cumplió todo el patrón')
      else
        writeln('No se cumplió B')
      end;
  else
    writeln ('No se cumplió A')
end.
      
  