Program EX12;
Type
  telefono = record
    version: real;
    pulgadas: real;
    ram: integer;
  end;

  ListaEmpresa = ^infomacion;

  informacion = record
    elem: telefono;
    sig: ListaEmpresa;
  end;

  // 14:57hs, estoy pensando en cómo declarar la segunda lista por versión de Android, de ahí sigo con el planteo de los módulos

  ListaVersiones = ^nodo;

    nodo = record
    version: real;
    cantversion: integer;
    sig: ListaVersiones;
  end;

procedure agregarAlfinal (var lv, ultV: ListaVersiones; ver: real; cant: integer);
var
  nuevo: ListaVersiones;
begin
  new(nuevo);
  nuevo^.version:= ver;
  nuevo^.cantversion:= cant;
  nuevo^.sig:= nil;
  if (lv = nil) then begin   
    lv   := nuevo;
    ultV := nuevo;
  else begin           
    ultV^.sig := nuevo;
    ultV      := nuevo;
  end;
end;

function PromPant (totaltamaño, cpantallas: real): real;
begin
  prompant:= (totaltamaño / cpantallas);
end;
procedure procesarLista(pri, ult: ListaEmpresa; var lv: ListaVersiones);
var
  Mas3GB, cantversion: integer
  actual, CantPantallas, TotalTamaño: real;
  
begin
  CantPantallas:= 0;
  TotalTamaño:= 0;
  Mas3GB:= 0;
  while (pri <> nil) do begin
  // 15:09 hs Para cada versión de Android, corte de control sumando cantidad de dispositivos
    Actual:= pri^.elem.version;
    cantversion:= 0
    while (pri <> nil) and (pri^.elem.version = actual) do begin
      CantPantallas:= CantPantallas + 1;
      cantversion:= cantversion + 1;
      totaltamaño:= totaltamaño + pri^.elem.pulgadas;
      if (pri^.elem.ram > 3) and (pri^.elem.pulgadas <= 5) then
        Mas3GB:= Mas3GB + 1;
      pri:= pri^.sig;
    end;
    agregarAlFinal(lv, actual, cantversion);
  end;
  writeln('El tamaño promedio de las pantallas de todos los dispositivos es', PromPant(CantPantallas, totaltamaño));
  writeln('La cantidad de dispositivos con más de 3GB de Ram y a lo sumo 5 pulgades es: ', Mas3GB);
end;


var
  pri, ult: ListaEmpresa;
  LV: ListaVersiones;
  t: telefono;
begin
  crearlista(pri, ult);
  generarLista(pri, ult) // Se dispone
  procesarLista(pri, ult, lv);
end;
  

