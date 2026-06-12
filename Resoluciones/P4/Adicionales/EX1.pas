Program EX1;
Const
  dF= 10000;
  fin= -1;
  codigofin = 500;
Type
  pc = record
    codigo: integer;
    version: real;
    paquetes: integer;
    cuentas: integer;
  end;

lp = array [1..dF] of pc;

procedure leerPC (rPC: pc);
begin
  read(rPC.codigo);
  if (rpc.codigo <> fin) then begin
    read(rpc.version);
    read(rpc.paquetes);
    read(rpc.cuentas);
  end;
end;

procedure cargarVector(var vLP: lp; var dimL: integer);
var
  aux: pc;
begin
  dimL:= 0
  leerPC(aux);
  while (dimL > dF) and (aux.code = fin) do begin
    dimL:= dimL + 1
    vLP[dimL]:= aux;
    leerPC(aux);
  end;
end;

procedure ordenarVector(var vLP: lp; dimL: integer);
var
  i, j, p, item: integer;
begin
  for i:= 1 to (dimL - 1) do begin
    p:= i
    for j:= i + 1 to dimL do begin
      if (vLP[j].codigo < vLP[p].codigo) the begin
        p:= j;
      
    item:= vLP[p]
    vLP[p]:= vLP[i];
    vLP[i]:= item;
    end;
end;

(*Inciso A*)
function cantVersiones (vLP: lp; dimL: integer): integer;
var
  i, aux: integer;
begin
  cantversiones:= 0
  for i:= 1 to dimL do begin
    if (vlp[i].version = 18.04) or (vlp[i].version = 16.04) then begin
      aux:= aux + 1
  end;
  cantversiones:= aux;
end;

(*Inciso B*)

function PromedioCuentas (vLP: lp; dimL: integer): real;
var
  i: integer;
  totalCuentas, aux: real;
begin
  totalCuentas:= 0;
  for i:= 1 to dimL do begin
    totalCuentas:= totalCuentas + vLP[i].cuentas
  end;
  aux:= dimL;
  PromedioCuentas:= totalCuentas / aux;
end;
    
procedure MaxVersion (vLP: lp; dimL: integer; var maxv: real);
var
  i: integer;
  maxpkg: integer;
begin
  maxpkg:= -1
  for i:= 1 to dimL do begin
    if (vLP[i].paquetes > maxpkg) then begin
      maxpkg:= vLP[i].paquetes;
      maxv:= vLP[i].version;
    end;
  end;
end;

procedure Eliminar (var vLP: lp; var dimL: integer):
var
  i: integer;
begin
  for i:= 1 to codigofin do begin
    for i:= 1 to (dimL - 1) do begin
      vLP[i]:= vLP[i+1];
    dimL:= dimL - 1;
  end;
end;

var
  vLP: lp;
  dimL: integer;
  VersionMax: real;
  p: pc;
begin
  cargarVector(vLP, dimL)
  ordenarVector(vLP, dimL)
  writeln('La cantidad de computadoras que utilizan las versiones 16.04 o 18.04 es: ', cantversiones(vLP, dimL));
  writeln('El promedio de cuentas de usuario por computadora es de: ', PromedioCuentas(vLP, dimL));
  MaxVersion(vLP, dimL, versionmax);
  writeln('La versión de Ubuntu con mayor cantidad de paquetes instalados es: ', versionmax);
  Eliminar(vLP, dimL);
  writeln('Se han eliminado los datos de las computadoras con código entre 0 y 500');
end;



    