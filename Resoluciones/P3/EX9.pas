Program EX9
Const
  fin= 'Zárate';
Type
  str30 = string[30];
  candidato = record
    localidad: str30;
    apellido: str30;
    CantVotos: real;
    CantVotantes: real;
  end;


procedure leerCandidato (var c: candidato);
begin
  read(c.localidad);
  read(c.apellido);
  read(c.cantvotos);
  read(c.CantVotantes);
end;

function PorcentajeVotos (c: candidato): real;
begin
  PorcentajeVotos:= (c.CantVotos div c.CantVotantes);
end;

procedure MaxVotos (c: candidato; var maxvoto: real; var maxape: str30);
begin
  if (c.cantvotos > maxnum) then begin
    maxnum:= c.cantvotos;
    maxape:= c.apellido;
  end;
end;

procedure MaxVotantes (ape: str30; p: real; var MaxVota: real; var maxape: str30)
begin
  if (p > maxnum) then begin
    maxnum:= p;
    maxape:= ape
  end;
end;

var
  c: candidato
  maxvoto, porcentaje: real;
  maxapecant, maxapepor, maxvota: str30;
begin
  maxapepor: '';
  maxvoto:= -1;
  maxape:= '';
  MaxVota:= -1;
  leerCandidato(c);
  repeat
    porcentaje:= PorcentajeVotos(c)
    MaxVotos(c, maxvoto, maxapecant);
    MaxVotantes(c.apellido, porcentaje, maxvota, maxapepor);
  until (c.localidad = 'Zárate');
  writeln('El intendente que obtuvo más votos fue: ', maxapecant, 'con', maxvoto, 'votos');
  writeln('El intendente con mayor porcentaje de votos en la elección fue: ', maxapepor, 'con', maxvota, 'votos');
end.
  

