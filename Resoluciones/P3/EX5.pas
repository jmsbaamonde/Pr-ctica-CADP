Program EX5;
Const
  fin:= 'ZZZ';
Type
  str20: string[20];
  auto = record
    marca: str20
    modelo: str20
    precio: real;
  end;


procedure leerAuto(var a: auto);
begin
  read(a.marca);
  read(a.modelo);
  read(a.precio);
end;

procedure AutoMasCaro (a: auto; var maxprecio: real; var marcamax, modelomax: str40);
begin
  if (a.precio > maxprecio) then begin
    maxprecio:= a.precio;
    marcamax:= a.marca;
    modelomax:= a.modelo;
end;

function PromedioMarca (sumaMarca: real; cantMarca: real): real;
begin
  PromedioMarca:= sumaMarca div cantMarca;
end;

var
  a: auto
  maxprecio, sumaMarca, cantMarca: real;
  marcaactual, marcamax, modelomax: str40;
begin
  leerAuto(a);
  while (a.marca <> fin) do begin
    sumaMarca:= 0
    cantMarca:= 0
    marcaactual:= a.marca
    while (a.marca <> fin) and (a.marca = actual) do begin
      sumaMarca:= sumaMarca + a.precio
      cantMarca:= cantMarca + 1
      AutoMasCaro(a, maxprecio, marcamax, modelomax);
      leerAuto(a);
    end;
    writeln('El precio promedio de la marca ' marcaactual, 'es de', PromedioMarca(sumaMarca div cantMarca));
  end;
  writeln('El auto más caro es de la marca ', marcamax, 'modelo', modelomax);
end.
      

