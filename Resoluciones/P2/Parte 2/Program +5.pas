a) 

Ejercicio 1:

¿Qué porciones de su código podrían modularizarse? ¿En qué casos propondría una
estructura de módulos anidada?

Se puede modularizar con un procedimiento que calcule el máximo, y se podría anidar la de cantidad de empresas con inversiones de más de 50k, y y una función para calcular el promedio de la inversión

¿Qué tipo de módulo (función o procedimiento) conviene utilizar en cada caso? ¿Existe algún
caso en los que sólo un tipo de módulo es posible?

Conviene usar un procedimiento ya que necesito de parámetros por referencia para los máximos y mínimos, y una función para calcular el promedio de la 

¿Qué mecanismos de comunicación conviene utilizar entre los módulos propuestos?

Pasaje de parámetros por referencia en casos como máximo y mínimo, y obligadamente por valor en el uso de la función


Ejercicio 2:

¿Qué porciones de su código podrían modularizarse? ¿En qué casos propondría una
estructura de módulos anidada?

Podría modularizar la lectura de datos con un procedimiento,
Una función para encontrar la cantidad de alumnos en condiciones de rendir
Un procedimiento con los dos alumnos con notas máximas y mínimas
Se puede anidar en la lectura de datos encontrar alumnos con ciertos requisitos

¿Qué tipo de módulo (función o procedimiento) conviene utilizar en cada caso? ¿Existe algún
caso en los que sólo un tipo de módulo es posible?

Depende de lo que pide el ejercicio, en su mayoría procedimientos ya que se tiene que comunicar el programa principal con los procedimientos
Se está obligado a usar un tipo de módulo si necesito devolver más de 1 valor.

¿Qué mecanismos de comunicación conviene utilizar entre los módulos propuestos?
Se utiliza pasaje de parámetros, las variables globales no son recomendadas


Ejercicio 3: 

¿Qué porciones de su código podrían modularizarse? ¿En qué casos propondría una
estructura de módulos anidada?

Se pueden usar funciones para calcular el radio y volumen de cada tipo de contenedor
Procedimientos de máximos y mínimos
Funciones de promedios
Modularizar la lectura y anidar para analizar características como el volumen de los tanques altura menor a 1.40 y volumen menor a 800

¿Qué tipo de módulo (función o procedimiento) conviene utilizar en cada caso? ¿Existe algún
caso en los que sólo un tipo de módulo es posible?

Funciones simples para cálculos que devuelvan un solo valor 
Procedimientos para situaciones en las que se necesiten devolver más valores, y que los datos se comuniquen con el programa principal ya sea por valor o por referencia
En el caso de máximos y mínimos se está obligado a usar procedimientos

¿Qué mecanismos de comunicación conviene utilizar entre los módulos propuestos?
Se utiliza pasaje de parámetros, las variables globales no son recomendadas

b)

Ejercicio 2:

Program EX18
Const
  fin=-1;
Var
  i, legajo, alumnomax0a, alumnomax0b, rindeingre, rinderecu, parcialingre, parcialrecu, cincode5, cant10, cant0, presente, maxcant10, maxcant0, promalto, ceroauto, cantrecu, cantingre: integer;
  cond: char;
  nota, sumanota, prom: real;
  tienecero: boolean;
begin
  sumanota:=0
  cantrecu:=0
  cantingre:=0
  ceroauto:= 0;
  cincode5:= 0;
  parcialingre:=0;
  parcialrecu:=0;
  promalto:=0;
  read(legajo)
  while (legajo <> fin) do
    begin
      read(cond);
      for i: 1 to 5 do
        begin
          read (nota)
          sumanota:= sumanota + nota;
          if (nota = 10) then
           cant10:= cant10 + 1;
          else
            if (nota = 0) then
              cant0:= cant0 + 1;
          if (nota <> -1) and (nota >= 4) then
            presente:= presente + 1;
          if (tienecero = false) and (nota = 0) then
            ceroauto:= ceroauto +1;
            tienecero:= true;
      if (maxcant10 > cant10) then
        begin
          alumnomax10b:=alumnomax10a;
          alumnomax10a:= legajo;
        end;
      if (maxcant0 > cant0) then
        begin
          alumnomax0b:= alumnomax0a;
          alumnomax0a:= codigo;
        end;

      tienecero:= false;
      if (presente >=4) then
        begin
          if (cond = 'R') then
            rinderecu:=rinderecu + 1;
          else
            rindeingre:= rindeingre + 1;
          end;
      end;
      if (cond = 'R') then
        cantrecu:= cantrecu + 1;
      else
        if (cond = 'I') then
          cantingre:= cantingre + 1;
      if (sumanota div 5 > 6.5) then
        promalto:= promalto + 1;
      else
        if (sumanota div 5 >= 4) then
          cincode5:=cincode5 + 1;
        
      read(legajo);
    end;
    parcialingre:= rindeingre div cantingre;
    parcialrecu:= rinderecu div cantrecu;
    writeln('La cantidad de alumnos ingresantes en condiciones de rendir el parcial es:', 'rindeingre', y su porcentaje sobre el total de alumnos es 'parcialingre');
    writeln('La cantidad de alumnos recursantes en condiciones de rendir el parcial es:', 'rinderecu', 'y su porcentaje sobre el total de alumnos es' 'parcialrecu');
    writeln('La cantidad de alumnos que aprobaron todas las autoevaluaciones es', 'cincode5');
    writeln('La cantidad de alumnos que aprobaron con un promedio mayor a 6.5 es:', 'promalto');
    writeln('La cantidad de alumnos que obtuvieron al menos un 0 en una autoevaluación es', 'ceroauto')
    writeln ('Los dos alumnos con mayor cantidad de autoevaluaciones con nota 10 fueron', 'alumnomax10a', 'y', 'alumnomax10b');
    writeln ('Los dos alumnos con mayor cantidad de autoevaluaciones con nota 0 fueron', 'alumnomax0a', 'y', 'alumnomax0b');    
end.
