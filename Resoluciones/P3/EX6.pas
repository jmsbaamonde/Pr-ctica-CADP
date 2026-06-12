Program EX6;
Const
  fin= 0;
Type
  str20 = string[20];
  procesador= record
    marca: str20;
    linea: str20;
    cores: integer;
    ghz: real;
    tamaño: integer;
end;

procedure leerProcesador (var p: procesador);
begin
  read(p.marca)
  if (p.marca <> fin) then begin
    read(p.linea);
    read(p.cores);
    read(p.ghz);
    read(p.tamaño);
  end;
end;

procedure actualizarMax (CantTrans14: integer; marcaactual: str20, var MaxCantTrans, MaxCantTrans2: integer; var MarcaMax1, MarcaMax2: str20);
begin
  if (CantTrans14 > MaxCantTrans) then begin
    MaxCantTrans2:= MaxCantTrans;
    MaxCantTrans:= CantTrans14;
    MarcaMax2:= MarcaMax1;
    MarcaMax1:= marcaactual;
  else
    if (CantTrans14 > MaxCantTrans2) then
      MaxCantTrans2:= MaxCantTrans;
      MarcaMax2:= marcaactual;
    end;
end;

var
  CantMulticore, CantTrans14, Cant2Ghz, MaxCantTrans, MaxCantTrans2: integer;
  p: procesador;
  MarcaMax1, MarcaMax2, MarcaActual: str20;
begin
  MarcaMax1:= '';
  MaxCantTrans:= -1;
  CantMulticore:= 0;
  Cant2Ghz:= 0;
  leerProcesador(p);
  while (p.cores <> fin) do begin
    CantTrans14:= 0;
    marcaactual:= p.marca;
    while (p.cores <> fin) and (p.marca = marcaactual) do begin
      if (p.cores > 1) and (p.ghz >= 2) then
        Cant2Ghz:= Cant2Ghz + 1
      end;
      if (p.tamaño = 14) then
        CantTrans14:= CantTrans14 + 1
      end;
      if (p.cores > 2) and (p.tamaño <= 22) then
        writeln ('El procesador', p.linea, 'de la marca', p.marca, 'tiene más de 2 cores y un transistor de a lo sumo 22 nm');
      end;
      leerProcesador(p);
    end;
    actualizarMax(CantTrans14, marcaactual, MaxCantTrans, MaxCantTrans2, MarcaMax1, MarcaMax2);
  end;
  writeln ('La cantidad de procesadores multicore con al menos 2Ghz de velocidad de reloj es: ', Cant2Ghz);
  writeln('Las dos marcas con mayor cantidad de procesadores con procesadores de 14nm son: ' marcamax1, marcamax2);
end.
    


