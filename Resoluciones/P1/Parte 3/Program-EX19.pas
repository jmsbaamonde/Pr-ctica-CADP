Program EX19
Const
  fin= 'Z';
Var
  tipotanque: char;
  A, B, C, radio, altobajo, volumenalto, maxvolrec1, maxvolrec2, maxvolcil1, maxvolcil2, maxvoltotal1, maxvoltotal2, volumen, volpromcil, volpromrec: real;
Begin
  sumavolcil:=0;
  cantcil:=0;
  sumavolrec:=0;
  cantcil:=0;
  volumenalto:=0
  altobajo:=0
  while (tipotanque <> 'Z') do
    if (tipotanque = 'C') then
      read(radio);
      read(A);
      if (alto < 1.40) then
        altobajo:= altobajo + 1;
      cantcil:= cantcil + 1;
      volumen:= Pi*(radio * radio)*A;
      if (volumen > 800) then
          volumenalto:= volumenalto +1;
      sumavolcil:= sumavolcil + volumen;
      if (volumen > maxvolcil1) then
        maxvolcil2:= maxvolcil1;
        maxvolcil2:= volumen;
        cantrec:= cantrec + 1;
    
      end;
    else
      if (tipotanque = "R") then
        read(A);
        read(B);
        read(C);
        if (alto < 1.40) then
        altobajo:= altobajo + 1;
        cantrec:=cantrec + 1;
        volumen:= a*b*c;
        if (volumen > 800) then
          volumenalto:= volumenalto +1;
        if (volumen > maxvolrec1) then
          maxvolrec2:= maxvolrec1;
          maxvolrec1:= volumen;
        end;                                  
    end;
    (*fin de la lectura*)
    if (maxvolcil1 > maxvolrec1) then
      maxvoltotal1:= maxvolcil1;
    end;
    else
      maxvoltotal1:= maxvolrec1;
    if (maxvolcil2 > maxvolrec2) then
      maxvoltotal2:= maxvolcil2;
    end;
    else
      maxvoltotal2:= maxvolrec2;
    end;
    (*Calculo de promedio*)
    volpromcil:= sumavolcil div cantcil;
    volpromrec:= sumavolrec div cantrec;
    (*Escritura en pantalla*)
    writeln('El volumen de los dos mayores tanques vendidos es:', 'maxvoltotal1' 'y', 'maxvoltotal2')
    writeln('El promedio de volumen de los tanques cilíndricos es:', 'volpromcil')
    writeln('El promedio de volumen de los tanques rectangulares es:', 'volpromrec')
    writeln('La cantidad de tanques cuyo alto es menor a 1.40 metros es', 'altobajo')
    writeln('La cantidad de tanques cuyo volumen es menor a 800 metros cúbicos es', 'volumenalto')
   end;
