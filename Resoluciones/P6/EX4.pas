Program EX4;

function Maximo (l: lista): integer;
var
  max: integer
begin
  max:= -9999;
  while (l <> nil) do begin
    if (l^.elem > max) then begin
      max:= l^.elem;
    end;
    l:= l^.sig
  end;
  maximo:= max;
end;

function Minimo (l: lista): integer;
var
  min: integer
begin
  min:= 99999
  while (l <> nil) do begin
    if (l^.elem > min) then begin
      min:= l^.elem;
    end;
    l:= l^.sig
  end;
  minimo:= min;
end;


function Multiplos (l: lista; A: integer): integer;
var
  multiplo: boolean;
  cantMult: integer;
begin
  multiplo:= ((l^.elem mod 2) = 0);
  cantMult:= 0
  while (l <> nil) do begin
    if (multiplo) then begin
      cantMult:= cantMult + 1
    end;
    l:= l^.sig
  end;
  Multiplos:= cantMult
end;
