(*9. Realizar un programa modularizado que lea información de alumnos de una facultad. Para cada alumno se
lee: número de inscripción, apellido y nombre. La lectura finaliza cuando se ingresa el alumno con número
de inscripción 1200, que debe procesarse. Se pide calcular e informar:
● Apellido de los dos alumnos con número de inscripción más chico.
● Apellido de los dos alumnos con número de inscripción más grande.
● Porcentaje de alumnos con nro de inscripción par.*)

Program EX9;
Const
  fin= 1200;
Type
  alumno= string[30];
Procedure MaxMin (surname: alumno; code: integer; var maxcode, mincode: integer; var maxape1, maxape2, minape1, minape2: alumno);
var
  maxnro2, minnro2: integer;
Begin
  if (code > maxnro1) then
    maxnro2:= maxnro1;
    maxnro1:= code;
    maxape2:= maxape1;
    maxape1:= surname;
  else
  if (code > maxnro2) then
    maxnro2:= code;
    maxape2:= surname;
  if (code < minnro1) then
    minnro2:= minnro1;
    minnro1:= code;
    minape2:= minape1;
    minape1:= surname;
  else
  if (code < minnro2) then
    minnro2:= code;
    minape2:= surname;

Procedure leerDatos (var nroalu: integer; var nom, ape: alumno);
begin
    read(nroalu);
    read(nom);
    read(ape);
end;

function Porcentaje (cantAlu, cantPar: integer): Real;
begin
  Porcentaje:= cantPar div cantAlu;
end;

var
  nombre, apellido: alumno;
  codins, ApeMax1, ApeMax2, ApeMin1, ApeMin2, CodeMax, CodeMin, totalAlu, TotalPar: integer;
Begin
  totalAlu:= ;
  TotalPar:= 0;
  CodeMax1:= -99999;
  CodeMin:= 99999;
  repeat 
    leerDatos (codins, nombre, apellido);
    MaxMin(apellido, codins, CodeMax, CodeMin, apemax1, apemax2, apemin1, apemin2);
    totalAlu:= totalAlu + 1;
    if ((codins mod 2) = 0) then
      TotalPar:= TotalPar + 1;
    end;
  until (codins = fin);
  writeln ('Los apellidos de los dos alumnos con número de inscripción más chico son: ', apemin1, 'y', apemin2);
  writeln ('Los apellidos de los dos alumnos con número de inscripción más grande son: ', apemax1, 'y', apemax2);
  writeln ('El porcentaje de alumnos con número de inscripción par es: ', Porcentaje(totalAlu, TotalPar));
end.

