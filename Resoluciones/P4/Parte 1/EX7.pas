Program EX7;
Const
  fin = -1;
Type
  numeros = array [0..9] of integer;


procedure inicializar (v: numeros);
var
  i: integer;
begin
  for i:= 0 to 9 do begin
    v[i]:= 0;
  end;
end;

procedure procesarNumero (num: integer; var v: vector);
var
  dig: integer;
begin
  dig:= num mod 10
  if (num = 0) do begin
    v[0]:= v[0] + 1
  else
    while num <> 0 do begin
      v[dig]:= v[dig] + 1
      num:= num div 10
    end;
end;
      
procedure leerNumero (v: vector);
var
  num: integer;
begin
  readln(num);
  while (num <> fin) do begin
    procesarNumero(num, v);
    readln(num);
  end;

procedure Ocurrencias (v: vector);
var
  i: integer;
begin
  for i:= 0 to 9 do begin
    writeln ('Numero', i, v[i], ': veces');
  end;
end;

procedure CeroOcu (v: vector);
var
  i: integer;
begin
  writeln ('Los digitos que no tuvieron ocurriencias son: ');
  for i:= 0 to 9 do begin
    if (v[i] = 0) then begin
      writeln (i);
  end;
end;


function MaxLeido (v: vector): integer;
var
  max, pos, i: integer;
begin
  max:= -1
  pos:= 0
  for i:= 0 to 9 do begin
    if (v[i] > max) then
      max:= v[i];
      pos:= i
    end;
  MaxLeido:= pos;
end;


var
  v: vector
  num: integer;
begin
  inicializar(v);
  leerNumero(v);
  Ocurrencias(v);
  writeln('El digito más leído es ', MaxLeido(v));
  CeroOcu(v);
end.