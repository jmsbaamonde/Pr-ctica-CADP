Program EX7;

Const
  fin= 0;
Type 
  str30 = string[30];
  Centro = record
    nombre: str30;
    universidad: str30
    CantI: integer;
    CantB: integer;
  end;

procedure leerCentro (var C: Centro);
begin
  read(C.CantI);
  if (C.CantI <> fin) then begin
    read(C.Universidad);
    read(C.Nombre);
    read(C.CantB);
end;

procedure MaxI (c: centro; var maxinv: integer; var maxuni: str30);
begin
  if (c.canti > maxinv) then
    maxinv:= cantinv;
    maxuni:= c.universidad;
end;


procedure MinB (c: centro; var minbec1, minbec2: integer; var mincen1, mincen2: str30);
begin
  if (c.cantb < minbec1) then
    minbec2:= minbec1;
    minbec1:= cantbec;
    mincen2:= mincen1;
    mincen1:= c.nombre;
  else
    if (c.cantb < minbec2) then
      minbec2:= c.cantb;
      mincen2:= c.nombre;
  end;
end;


var
  C: Centro;
  uniactual, maxuni, maxcen1, maxcen2: str30;
  minbec1, maxinv, TotalCentros, TotalInv: integer;
begin
  minbec1= 9999999
  maxinv= -1
  MaxCen1:= '';
  MaxCen2:= ''
  MaxUni:= ''
  leerCentro(C);
  while (C.CantI <> fin) then
    begin
      uniactual:= c.universidad;
      TotalCentros:= 0;
      while (C.CantI <> fin) and (c.universidad = uniactual) do begin
        TotalInv:= totalinv + c.canti;
        TotalCentros:= totalcentros + 1
        MinB(C, minbec1, minbec2, mincen1, mincen2);
        leerCentro(c);
      end;
    writeln('La cantidad total de centros para la universidad', uniactual, 'es: totalcentros');
    MaxI(c, maxinv, maxuni);
  end;
  writeln('La universidad con mayor cantidad de investigadores en su centro es, ', maxuni, 'con', maxinv, 'investigadores');
  writeln('Los dos centros con menor cantidad de becarios son ', mincen1, 'y', mincen2);
end.
        
    