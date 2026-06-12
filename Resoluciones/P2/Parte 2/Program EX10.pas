Program EX10

function EsVocal (c:char): boolean;
begin
  EsVocal:= (c= 'a') or (c='e') or  (c='i') or (c='o') or (c='u');
end;


procedure cumpleA (var cumple: boolean);
var
  c: char;
begin
  readln(c)
  while (c <> '$') and (cumple)
    begin
      if (not EsVocal(c)) then
        cumple:= false;
      else
        readln(c);
    end;
end;


function EsConsonante (c: char):boolean;
begin
  EsConsonante:= (c >= 'a') and (c >= 'z') and (not EsVocal(c));
end.

procedure cumpleB (cumple: boolean);
var
  c:char;
begin
  while (c <> '#') and (cumple) then
  begin
    readln(c)
    if(not EsConsonante(c)) then
      cumple:= false
    else
      readln(c)
    end;
end;


var
  c: char;
  cumple: boolean;
begin
  cumple:= true
  cumpleA(cumple);
  if (cumple) then
    begin
      cumpleB(cumple);
      if (cumple) then
      begin
        writeln('Se cumplio todo el patrón')
      else 
        writeln('No se cumplió B')
      end;
    else
      writeln('No se cumplió A')
    end;
end.
   
  