Program EX13;
Const
  usu = 3600;
  DimRoles = 4;
Type
  cadena = string[50];
  usuario = record;
    mail: cadena;
    rol: integer;
    revista: cadena;
    ultimoacceso: integer;
  end;

  lista = ^nodo;

  nodo = record
    elem: usuario;
    sig: lista;
  end;

  CantRoles = array [1..DimRoles] of integer;

  procedure insertarOrdenado (Var pI: lista; u: usuario);
Var
  actual,anterior,nuevo:lista;
Begin
  new (nuevo); 
  nuevo^.elem:= valor; 
  nuevo^.sig:=nil;
  if (pI = nil) then 
    pI:= nuevo
  else begin
    actual:= pI; ant:=pI;
  while (actual <> nil) and (actual^.elem.ultimoacceso < nuevo^.elem.ultimoacceso) do begin
    anterior:=actual;
    actual:= actual^.sig;
  end;
  if (actual = pI) then begin
    nuevo^.sig:= pI; 
    pI:= nuevo;
  end
  else begin
    anterior^.sig:= nuevo; 
    nuevo^.sig:= actual;
  end;
 end;
End;

procedure ImprimirListaOrdenada (pI: lista, var eco: lista);
begin
  while (pI <> nil) do begin
    if (pI^.elem.revista = "Económica") then 
      insertarOrdenado(eco, pI^.elem)
      pI= pI^.sig;
    end;
    while (eco <> nil) do begin
      writeln('Usuario: ', eco^.elem.mail, 'Último acceso: ', eco^.elem.ultimoacceso, 'días');
    end;
end;

procedure inicializarVector (var v: CantRoles);
begin
  for i:= 1 to DimRoles do begin
    v[i]:= 0;
  end;
end;

procedure CargarVector (pI: lista; var v: CantRoles);
var
  i: integer;
begin
  inicializarVector(v);
  while (pI) <> nil) do begin
    v[pI^.elem.rol]= v[pI^.elem.rol] + 1
    pI:= pI^.sig;
  end;
end;

procedure MaxAcceso (pI: lista; var MaxMail1, MaxMail2: cadena);
var
  MaxTiempo1, MaxTiempo2: integer;
begin
  MaxTiempo1:= -1
  while (pI <> nil) do begin
    if (pI^.elem.ultimoacceso > MaxTiempo1) then begin
      MaxTiempo2:= MaxTiempo1;
      MaxMail2:= MaxMail1;
      MaxTiempo1:= pI^.elem.ultimoacceso;
      MaxMail1:= pI^.elem.mail;
    else begin
      if (pI^.elem.ultimoacceso > MaxTiempo2) then begin
        MaxTiempo2:= pI^.elem.ultimoacceso
        MaxMail1:= pI^.elem.mail
      end;
    end;
  end;
end;

var
  pI, eco: lista;
  v: CantRoles;
  i: integer;
  MaxMail1, MaxMail2: cadena;
begin
  crearLista(pI);
  cargarLista(pI); // Se dispone
  ImprimirListaOrdenada(pI, eco);
  for i:= 1 to DimRoles do begin
    writeln('El rol número', i, 'tiene: ', v[i], 'usuarios');
  end;
  MaxAcceso(pI, MaxMail1, MaxMail2);
  writeln('Los correos de los dos usuarios que más tiempo tienen sin conectarse son: ', MaxMail1, MaxMail2);
end;    