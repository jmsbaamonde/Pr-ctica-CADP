Program EX6;


a.
Type 
    arreglo1 = array [1..25000] of char;
var
    v1, v2: arreglo1;
begin
  write('Hello world');
end;


b.
Type 
    arreglo1 = array [1..25000] of char;
    arreglo2 = array [1..24996] of char;
    PunVector = ^arreglo2;
var
    v1: arreglo1;
    p: punvector;
begin
  write('Hello world');
  new(p)
end;


c.
Type 
    arreglo1 = array [1..49996] of char;
    PunVector = ^arreglo2;
var
    p: punvector;
begin
  write('Hello world');
  new(p)
end;
