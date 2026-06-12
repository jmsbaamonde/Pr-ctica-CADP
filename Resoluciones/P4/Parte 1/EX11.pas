Program EX11;
Const
  dF= 200;
Type
  str50 = string[50];
  foto = record
    titulo: str50;
    autor: str50;
    likes: integer;
    clics: integer;
    comentarios: integer;
  end;


  pagina = array [1..dF] of foto;

procedure leerFoto (f: foto);
begin
  read(f.titulo);
  read(f.autor);
  read(f.likes);
  read(f.clics);
  read(f.comentarios);
end;

procedure cargarVector (var v: pagina);
var
  i: integer;
begin
  for i:= 1 to dF do begin  
    leerFoto(v[i]);
  end;
end;

procedure MaxClicks (v: pagina; var maxnom: str50)
var
  maxnom: str50;
  max, i: integer;
begin
  max:= -1
  for i:= 1 to dF do begin
    if (v[i].clics > max) then begin
      max:= v[i].clics
      maxnom:= v[i].titulo;
    end;
  end;
end;

function ArtVandelay (v: pagina): integer;
var
  cantlikes, i: integer;
begin
  cantlikes:= 0
  for i:= 1 to dF do begin
    if (v[i].autor = 'Art Vandelay') then
      cantlikes:= cantlikes + v[i].likes;
    end,
  end;
  ArtVandelay:= cantlikes;
end;

var
  v: pagina
  f: foto
  maxnom: str50;
  i: integer;
begin
  cargarVector(v)
  for i:= 1 to df do begin
    writeln('La cantidad total de comentarios para la foto', v[i].titulo, 'es de: ', v[i].comentarios);
  end;
  MaxClicks(v, maxnom);
  writeln('El título de la foto con más clics es: ', maxnom);
  writeln('La cantidad de likes de las fotos provenientes del autor Art Vandelay es: ', ArtVandelay(v));
end.
  
  
  