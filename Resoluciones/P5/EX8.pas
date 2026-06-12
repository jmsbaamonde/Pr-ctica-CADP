a)
Hasta la línea 18:

Solo contamos variables locales decladaras:
- vect: datos = vector de enteros. Dimensión física por tipo de dato, 20 x 2 = 40 bytes
- pvect: punt = puntero que apunta a vector de enteros. En memoria estática ocupa 4 bytes
- i: integer = variable índice. 4 bytes


b)
Hasta la línea 20:
Mismo espacio: 48 bytes

c)
Hasta la línea 23:
Se hace un new(pvect), se suman 40 bytes de memoria dinámica porque guarda una zona de memoria para un vector de enteros de tal magnitud

d) Hasta linea 11:

No ocupa nada

e)
Hasta línea 25:

Se llama al procedimiento, por lo que se utilizan 20 x 2 bytes para la copia de v, 4 para la referencia del parámetro v2, y las dos variables de enteros 4 bytes máse
40 + 4 + 4 = 48

En total 136 bytes