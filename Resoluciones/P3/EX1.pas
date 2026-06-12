program EX1;
type
  str20 = string[20];
  alumno = record
  codigo : integer;
  nombre : str20;
  promedio : real;
end;

procedure leer(var alu : alumno);
begin
  writeln('Ingrese el código del alumno');
  readln(alu.codigo);
  if (alu.codigo <> 0) then begin
    writeln('Ingrese el nombre del alumno'); 
    readln(alu.nombre);
    writeln('Ingrese el promedio del alumno'); 
    readln(alu.promedio);
  end;
 end;

procedure MejorAlumno (alu: alumno; var aux: real; var mejoralu: str20);
begin
  if (alu.promedio > aux) then begin
    aux:= alu.promedio;
    mejoralu:= alu.nombre;
  end;
end;
{ declaración de variables del programa principal }
var
a: alumno;
cantAlu: integer;
maxprom: real;
maxnom: str20;
{ cuerpo del programa principal }
begin
  cantAlu:= 0;
  leer(a);
  maxprom:= -99999;
  maxnom:= '';
  MejorAlumno(a, maxprom, maxnom);
  while (a.codigo <> 0) do begin
    cantAlu:= cantAlu + 1;
    leer(a);
    MejorAlumno(a, maxprom, maxnom);
  end;
  writeln('La cantidad de alumnos es: ', cantAlu);
  writeln('El nombre del alumno con mejor promedio es: ', maxprom);
end.
