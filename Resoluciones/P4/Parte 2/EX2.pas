Program EX2; 
Const
  dF = 500;

Type
  cadena:= string[50]
  nombres = array [1..dF] of cadena;


procedure cargarVector(var v: nombres, var dimL: integer);
var
 num: integer;
begin
  dimL:= 0
  read(num);
  while (dimL <= dF) and (num <> 'ZZZ') do begin
    dimL:= dimL + 1
    v[dimL]:= num;
    read(num);
  end;
end;

procedure eliminar (var v: nombres; var dimL: integer; nom: cadena; var ok: boolean)
var
  pos, i: integer;
  
begin
  ok:= false
  i:= 1
  while (pos <= dF) and (not ok) do begin
    if (v[i] = nom) then begin
      pos:= i;
      ok:= true;
    end;
    i:= i + 1;
  end;
  if ok then begin
    for i:= pos to (dimL - 1)
      a[i]:= a[i+1];
    end;
    dimL:= dimL - 1
  end;
end;
    
procedure insertar (var v: nombres; var dimL: integer; nom: cadena; pos; var ok: boolean);
var
  i: integer;
begin
  ok:= false
  if (dimL <= dF) and (pos >= 1) and (pos <= dimL) then begin
    for i:= dL downto pos do begin
      v[i+1]:= v[i];
    end;
    ok:= true;
    v[pos]:= nom;
    dimL:= dimL+1;
  end;
end;
    
procedure agregar (var v: nombres; var dimL: integer; nom: cadena; var ok: boolean)
var
  i: integer;
begin
  ok:= false;
  if (dl + 1 <= dimF) do begin
    ok:= true;
    dimL:= dimL + 1;
    v[dimL+] = nom;
  end;
end;


var
  v: nombres;
  pos, i: integer;
  nom: cadena;
  ok: boolean;
  
begin
  cargarVector(v, dimL);
  read(nom);
  eliminar(v, dimL, nom, ok);
  read(nom);
  insertar(v, dimL, nom, pos, ok);
  read(nom);
  agregar(v, dimL, nom, ok);
end.
    