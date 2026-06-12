Program EX12;
Const
  dF = 53;
Type
  str30 = string[30];
  galaxia = record
    nombre: str30
    tipo: integer; (*Podría ser integer y contar cada tipo como el número designado o podría ser un string*)
    masa: real;
    pc: real;
  end;

  grupolocal = array [1..dF] of galaxia;
  CantTipos = array [1..4] of integer;

procedure leerGalaxia (g: galaxia);
begin
  read(g.nombre);
  read(g.tipo);
  read(g.masa);
  read(g.pc);
end;

procedure cargarVector (v: grupolocal);
var
  i: integer;
begin
  for i:= 1 to dF do begin
    leerGalaxia(v[i]);
  end;
end;

procedure cargarContador (v: CantTipos);
var
  i: integer;
begin
  for i:= 1 to 4 do begin
    v[i]:= 0
  end;
end;

procedure Contador (var c: CantTipos; g: grupolocal);
var
  i: integer;
begin
  cargarContador(c);
  for i:= 1 to dF do begin
    c[g[i].tipo]:= c[g[i].tipo] + 1
  end;
end;

procedure Masa_Porcentaje (g: grupolocal; var masaprin, porcentaje: real);
var
  masatotal: real;
  i: integer;
begin
  masatotal:= 0
  masaprin:= 0
  for i:= 1 to dF do begin
    masatotal:= masatotal + g[i].masa;
    if (g[i].nombre = 'la Vía Lactea') or (g[i].nombre = 'Andrómeda') or (g[i].nombre = 'Triángulo') then begin
      masaprin:= masaprin + g[i].masa;
    end;
  end;
  porcentaje:= masaprin / masatotal;
end;


function cumple (g: galaxia): boolean;

begin
  cumple:= (g.tipo <> 4) and (g.pc < 1000)
end;

function CantCumple (g: grupolocal): integer;
var
  cant,i: integer;
  
begin
  cant:= 0
  for i:= 1 to dF then begin
    if (cumple(g[i])) then begin
      cant:= cant + 1;
    end;
  end;
  CantCumple:= cant;
end;


procedure MaxMinMasa (v: grupolocal);
var
  i: integer;
  maxmasa1, maxmasa2, minmasa1, minmasa2: real;
  maxnom1, maxnom2, minnom1, minnom2: str30;
begin
  maxnom1:= '';
  maxmasa1:= -1;
  minnom1:= '';
  minmasa1:= -1;
  for i:= 1 to dF do begin
    if (v[i].masa > maxmasa1) then begin
      maxmasa2:= maxmasa1;
      maxmasa1:= v[i].masa;
      maxnom2:= maxnom1;
      maxnom1:= v[i].nombre;
    else
      if (v[i].masa > maxmasa2) then 
        maxmasa2:= v[i].masa;
        maxnom2:= v[i].nombre;
    end;
end;

(*Falta programa principal*)
      
    
    
