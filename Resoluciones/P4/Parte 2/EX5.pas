Program EX5;
Const
  clientes = 500;
  cantciudades = 2400;
Type
  fecha = record
    dia: integer;
    mes: integer;
    año: integer;
  end;
  cliente = record 
    fechacontrato: fecha;
    categoría: char;
    codigociudad: integer;
    salario: real;
  end;

aws = array [1..clientes] of cliente;
cantcategoria = array [A..F] of integer;
ciudades = array [1..cantciudades] of integer; 

procedure leerFecha (var rf: fecha);
begin
  read(rf.dia);
  read(rf.mes);
  read(rf.año);
end;

procedure leerCliente(var rc: cliente);
begin
  leerFecha (rc.fechacontrato);
  read(rc.categoria);
  read(rc.codigociudad);
  read(rc.salario);
end;

procedure cargarVector(var vAws: aws);
var
  i: integer;
begin
  for i:= 1 to dF do begin
    leerCliente(v[i]);
  end;
end;

procedure MaxAño (vAws: aws, AñoActual, AñoTotal: integer; var MaxCant, AñoMax: integer);
begin
  MaxCant:= -1
  if (AñoTotal > MaxCant) then begin
    MaxCant:= AñoTotal;
    AñoMax:= AñoActual;
  end;
end;

procedure IncisoA (vAws: aws);
var
  MaxCant, pos, AñoActual, MesActual, AñoMax, AñoTotal, MesTotal: integer;
begin
  pos:= 1;
  while (pos <= 500) do begin
    añoActual:= vAws[pos].fechacontrato.año
    AñoTotal:= 0;
    while (pos <= 500) and (vAws[pos].fechacontrato.año = AñoActual) do begin
      MesActual:= vAws[pos].fechacontrato.mes;
      MesTotal:= 0;
      while (pos <= 500) and (vAws[pos].fechacontrato.año = AñoActual) and (vAws[pos].fechacontrato.mes = MesActual) do begin
        MesTotal:= MesTotal + 1;
        AñoTotal:= añoTotal + 1;

      end;
      writeln('El mes: ', MesActual , 'tiene un total de: ', MesTotal , 'contratos');
    end;
    writeln ('El año: ', añoActual, 'tiene un total de ', añoTotal, 'contratos');
    MaxAño(vAws, AñoActual, AñoTotal, MaxCant, AñoMax);
  end;
  writeln('El año: ', añomax, 'fue el máximo en cantidad de contratos con ', cantmax, 'contratos realizados');
end;

procedure IncisoB (vAws: aws; var vCat: cantcategoria);
var
  c: char;
  i: integer;
begin
  (*Inicializo vector contador*)
  for c:= A to F do begin
    vCat[c]:= 0
  end;
  for i: 1 to dF do begin
    vcat[vAws[i].categoria]:= vcat[vAws[i].categoria] + 1
  end;
end;

procedure IncisoC(vAws: aws; var vC: ciudades);
var
  max, maxcode, i, j, k, F: integer;
begin
    for i= 1 to cantciudades do begin
      vC[vAws[i].codigo] = 0;
    end;
    for j:= 1 to clientes do begin
      vC[vAws[i].codigo] = vC[vAws[i].codigo] + 1
    end;
    
    max:= -1
    for f:= 1 to 10 do begin
      for k:= 1 to cantciudades do begin
        if (vc[i] > max) do begin
          max:= vc[i];
          maxcode:= i;
          vc[maxcode]:= -1;
        writeln('La ciudad: ', maxcode, 'tuvo', max, 'clientes');
        end;
    end;
end;

function promedio (vAws: aws): real;
var
  sumatotal: real;
begin
  sumatotal:= 0
  for i:= 1 to dF do begin
    sumatotal:= sumatotal + vAws[i].salario;
  end;
  promedio:= sumatotal / 500;
end;

function IncisoD (vAws: aws, prom: real;): integer;
var
  i, aux: integer;

begin
  aux:= 0
  for i:= 1 to dF do begin
    if (vAws[i]. salario > prom) then
      aux:= aux + 1
    end;
  end;
  IncisoD:= aux;
end;

var
vAws: aws;
vC: ciudades;
vCat: cantcategoria;
prom: real;
begin
  cargarVector(vAws);
  IncisoA(vAws);
  IncisoB(vCat);
  for c:= A to F do begin
    writeln('La categoría: , ', c, 'tuvo: ', v[c], 'clientes');
  end;
  IncisoC (vAws, vC);
  prom:= promedio(vAws)
  writeln('La cantidad de clientes que superan mensualmente el monto promedio entre todos los clientes es de: ', IncisoD(prom));
end;
  


      