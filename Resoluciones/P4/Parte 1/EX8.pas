Program EX8;
Const
  dF= 400;
Type
  str50 = string[50];
  alumno = record
    nro: integer;
    DNI: integer;
    NomApe: str50;
    AñoNac: integer;
  end;
  
  ingresantes = array [1..dF] of alumno;

procedure leerAlumno(var a: alumno);
begin
  read(a.nro);
  read(a.dni);
  read(a.NomApe);
  read(a.añonac);
end;

procedure CargarVector (var v: ingresantes);
var
  i: integer;
begin
  for i:= 1 to dF do begin
    leerAlumno(v[i]);
  end;

procedure DNIPar (a: alumno): boolean;
var
  dig, i: integer;
  sigo: boolean;
begin
  sigo:= true
  dig:= a.dni mod 10
  while (a.dni <> 0) do begin
    if ((dig mod 2) <> 0) then
      sigo:= false;
    end;
    a.dni:= a.dni div 10;
  end;
  DNIPar:= sigo;
end;

procedure MaxEdad (a: alumno; var maxedad1, maxedad2: integer; var maxnom1, maxnom2: str50);
begin
  if (a.añonac < maxedad1) then begin
    maxedad2:= maxedad2;
    maxedad1:= a.añonac;
    maxnom2:= maxnom1;
    maxnom1:= a.nomape;
  else
    if (a.añonac < maxedad2) then begin
      maxedad2:= a.añonac;
      maxnom2:= a.nomape;
    end;
  end;
end;

function porcentaje (cantdni: integer): real;
begin
  porcentaje:= cantdni / dF;
end;

var
  i, maxedad1, maxedad2, cantdni: integer;
  cumple: boolean;
  a: alumno;
  v: ingresantes;
  maxnom1, maxnom2: str50;
begin
  cantdni:= 0
  maxedad1:= -1;
  maxnom1:= '';
  cargarVector(v);
  for i:= 1 to dF do begin
    if (DNIPar(v[i])) then
      cantdni:= cantdni + 1;
    end;
    MaxEdad(a, maxedad1, maxedad2, maxnom1, maxnom2);
  end;
  writeln('La proporción de alumnos que su DNI está compuesto por dígitosp pares es: ', porcentaje(cantdni));
  writeln('Los dos alumnos de mayor edad son: ', maxnom1, 'y', maxnom2);
end.



  

      