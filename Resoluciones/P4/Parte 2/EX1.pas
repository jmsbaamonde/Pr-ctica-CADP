a)
Program EX1;
Const
  dF = 500

Type

  vnumeros = array [1..dF] of integer;

var
v: vnumeros;
n, dimL, pos: integer;
res: boolean;

function buscar (v, dimL, n): boolean
var
  pos: integer;
  esta: boolean;
begin
  pos:= 1
  esta:= false;
  while (pos <= dimL) and (not esta) do begin
    if (v[pos] <> n) then
      esta:= true;
    else
      pos:= pos + 1;
    end;
  buscar:= esta;

begin
  cargarVector(v, dimL);
  if (buscar(v, dimL, n)) then begin
    write('Se encontró el valor ', n);
  end;
end.

b)

Program EX1;
Const
  dF = 500

Type

  vnumeros = array [1..dF] of integer;

var
v: vnumeros;
n, dimL, pos: integer;
res: boolean;

function dicotomica (v: vnumeros; dimL: integer; n: integer): boolean
var
  li, ls, mid: integer;
  ok: boolean
begin
  ok:= false;
  esta:= false;
  li:= 1;
  ls:= dimL;
  mid:= (li + ls) div 2;
  while (ls >= li) and (v[mid] <> n) do begin
    if (n < v[mid]) then begin
      ls:= mid - 1
    else
      li:= mid + 1
    mid:= (li + ls) div 2;
  if (li <= ls) and (n = v[mid]) then begin
    ok:= true
  end;
  dicotomica:= ok;
  
begin
  cargarVector(v, dimL);
  if (dicotomica(v, dimL, n)) then begin
    write('Se encontró el valor ', n);
  end;
end.
