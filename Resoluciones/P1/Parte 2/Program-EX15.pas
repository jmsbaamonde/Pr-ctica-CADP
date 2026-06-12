Program EX15
Var
  nombre: string
  Puesto1, Puesto2, último, anteúltimo, tiempo, 1erMin, 2domin, 1erMax, 2doMax: integer;
Begin
  max:= -99999999
  min:= 99999999
  for i: 1 to 100 do
  begin
    read(nombre)
    read(tiempo)
    if (tiempo > max) then
      Begin
        puesto2:= Puesto1
        puesto1:= nombre
    end;
    if (min > tiempo) then
      Begin
        anteúltimo:= último
        último:= nombre
    end;
  end;
  write ('Los dos primeros puestos fueron', 'puesto1' y 'puesto2')
  write ('Los dos últimos puestos fueron', 'puesto1' y 'puesto2')
end.
    
        
    

