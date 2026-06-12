Program EX3
Const
  dimF= 
 

procedure imprimirVector (v: vector; dimL: integer);
var
  i: integer;
begin
  for i= 1 to dimL do begin
    writeln(v[i]);
  end;
end;


procedure imprimirVector2 (v: vector; dimL: integer);
var
  i: integer;
begin
  for i= dimL downto 1 do begin
    writeln(v[i]);
  end;
end;


procedure imprimirVector3 (v: vector; dimL: integer);
var
  i: integer;
  mitad: real;
begin
  mitad:= dimL div 2;
  for i= mitad downto 1 do begin
    writeln(v[i]);
  end;
  for i= (mitad + 1) to dimL do begin
    writeln(v[i);
  end;
end;


procedure imprimirVector4 (v: vector; x,y: integer);
var
  i: integer;
begin
  if (x < y) then begin
    for i:= x to y do begin
      writeln(v[i]);
    end;
  else
    for i:= x downto y do begin
      writeln(v[i]);
  end;
end;


 
e.


procedure imprimirABC (v: vector; dimL: integer)
var
  mitad: real;
begin
  mitad:= dimL div 2;
  imprimirVector4(v, 1, dimL);
  imprimirVector4(v, dimL, 1);
  imprimirVector4(v, mitad, 1);
  imprimirVector4)(v, mitad + 1, dimL);
 end;
 
 
 