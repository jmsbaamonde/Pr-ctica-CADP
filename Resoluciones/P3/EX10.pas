Program EX10;
Const
  fin= 'zzz';
Type
  str50 = string[50];
  planta = record
    nombre: str50;
    vida: real;
    tipo: str50;
    clima: str50;
  end;


procedure leerPlanta (var p: planta, var pais: str50);
begin
  read(p.nombre);
  read(p.vida);
  read(p.tipo);
  read(p.clima);
  read(pais);
end;

procedure MinPlanta (p: planta; cantTipo: integer; var mincant: integer; var mintipo: str50);
begin
  if (cantTipo < mincant) then begin
    maxcant:= cantTipo;
    mintipo:= p.tipo;
  end;
end;

procedure MaxPaises (cantPais: integer; pais: str50; var maxcantpais: integer; var maxnompais);
begin
  if (cantPais > maxcantpais) then begin
    maxcantpais:= cantPais;
    maxnompais:= pais;
  end;
end;

procedure MaxVida (p: planta; var maxvida1, maxvida2; var maxnom1, maxnom2);
begin
  if (p.vida > maxvida1) then begin
    maxvida2:= maxvida1;
    maxvida1:= p.vida;
    maxnom2:= maxnom1;
    maxnom1:= p.nombre;
  else
    if (p.vida > maxvida2) then begin
      maxvida2:= p.vida
      maxnom2:= p.nombre
  end;
end;

function CumpleArgentina (p: planta): boolean;
begin
  CumpleArgentina:= ((pais = 'Argentina') and (p.clima = 'subtropical'));
end;


var
  p: planta
  maxnom1, maxnom2, maxtipo, pais, paisactual, tipoactual, maxnompais: str50;
  maxvida1, maxvida2: real
  cantTipo, cantPais, maxcant, maxcantPais: integer;
begin
  maxnom1:= '';
  maxvida1:= -1;
  maxcant:= 99999999;
  maxtipo:= '';
  leerPlanta(p, pais);
  while (pais <> fin) do begin
    cantTipo:= 0;
    tipoactual:= p.tipo;
    while (pais <> fin) and (p.tipo = tipoactual) do begin
      paisactual:= pais;
      cantPais:= 0
      cantTipo:= canttipo + 1
      while (pais <> fin) and (p.tipo = tipoactual) and (pais = paisactual);
        cantPais:= cantpais + 1
        if (CumpleArgentina(p)) then begin
          writeln('La planta de nombre: ', p.nombre, 'se encuentra en Argentina con clima subtropical');
          leerPlanta(p)
        end;
      end; (*end del while país*)
      MaxPaises(cantpais, paisactual, maxcantpais, maxnompais);
    end; (*end del while planta*)
    writeln('El nombre de la planta que se encuentra en más paises es: ', maxnompais);
    MaxVida(p, maxvida1, maxvida2, maxnom1, maxnom2)
    MinPlanta(p, canttipo, maxcant, maxtipo);
    writeln('El tiempo promedio de vida de la especie ', tipoactual, 'es de', p.vida, 'meses');
  end; (*end del primer while*)
  writeln('El tipo de planta con menor cantidad de plantas es: ', maxtipo, 'con', maxcant, 'plantas');
  writeln('Las dos plantas más longevas son: ', maxnom1, 'con', maxvida1, 'meses y', maxnom2, 'con', maxvida2, 'meses');


  