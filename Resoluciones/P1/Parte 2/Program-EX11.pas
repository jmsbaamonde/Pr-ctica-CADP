Program EX11
Const
  fin= 'Zidane Zinedine';
Var
  alumno: string;
  nota: real;
  cantApro, cant7: integer;
Begin 
  cantApro:= 0;
  cant7:= 0;
  repeat
    read(alumno);
    read(nota);
    if (nota = 7) then
    Begin
      cant7:= cant7 + 1;
    else
      if (nota >= 8) then
        cantApro:= cantApro + 1;
  until (alumno = fin);
    end;
    write ('La cantidad de alumnos que obtuvieron un 7 como nota fueron, cant7 , mientras que la cantidad de alumnos aprobados fue , cantApro')
end.
