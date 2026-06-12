Respuesta de Sonnet 4.6:

¿La solución está correctamente modularizada?
La solución de Sonnet busca separar cada proceso requerido por el enunciado del programa.
Por un lado, cumple con el a) corrigiendo un libro y devolviendo páginas eliminadas, por otro cumple con b) porque a partir del inciso anterior, procesa toda la información
En corregirBiblioteca, sin embargo, me resulta innecesario usar una variable procesados, si ya se tiene la dimensión lógica

2. ¿Las estructuras de datos utilizadas son correctas?
No, Sonnet asume un máximo para los libros y para las páginas que nunca se menciona en el Prompt, si bien en la primera pregunta, estoy de acuerdo con la modularización que hace, es porque bajo esos términos lo hace bien, pero para lo que pide el enunciado
Se debe usar una lista, ya que, en ningún momento se puede asumir un valor máximo de datos que entren en una estructura de datos estática, se necesita una dinámica.

3. ¿El algoritmo es eficiente en cuanto al tiempo de ejecución?
Al usar un vector, cuando se modifica eliminando las páginas repetidas, ese recorrido por cada una de las eliminaciones ralentiza mucho el tiempo de ejecución, por eso también las listas tienen una ventaja a la hora de eliminar

4. ¿La solución es eficiente en cuanto al uso de memoria?
Al usar estructuras de memoria estática, y no listas como debería proponerse ese ejercicio, no aprovecha este tipo de memoria en lo absoluto

5. ¿Qué le cambiaría a la solución para que se ajuste a los conceptos vistos en clase?
Como ya ha sido mencionado, primero y principal, el uso de listas en este programa es obligatorio según lo que nos pide el enunciado
El primer módulo usa una forma distinta a la vista en clase de eliminar un elemento de un vector

Respuesta de Gemini:

1. ¿La solución está correctamente modularizada?
A diferencia de Sonnet, Gemini utiliza un solo módulo para el ejercicio, lo cual es más dificultoso a la hora de leer el programa y reutilizar sus partes
Lo que no utiliza es el hecho de que esté ordenada la información, ya que recorre toda la lista
2. ¿Las estructuras de datos utilizadas son correctas?
Como lo dice la explicación de Gemini, las listas son estructuras de datos dinámicas y eso nos da la opción de agregar nodos sin saber cuántos van a ser en total.
Si lo pensamos basándonos en el enunciado, la librería es una lista y cada nodo es un libro, y cuando agarramos un libro, este es una lista donde cada nodo es una página.

3. ¿El algoritmo es eficiente en cuanto al tiempo de ejecución?
En el módulo de corregirLibro, se preguntan las condiciones cada vez que pasa por un nodo, sin embargo, se puede hacer todo el recorrido de la lista, y preguntar por el estado de la variable 'ant'

4. ¿La solución es eficiente en cuanto al uso de memoria?
Al usar listas, se utiliza la cantidad de memoria necesaria para el programa porque no se determina un valor estático, sino el justo y necesario para crear la lista.

5. ¿Qué le cambiaría a la solución para que se ajuste a los conceptos vistos en clase?

i- Modularizaría como lo hace Sonnet el procesamiento de la biblioteca entera pero separaría la parte de informar en otro módulo
ii- En relación a la pregunta 3, haría lo explicado, recorrería la lista teniendo en cuenta un nodo actual, uno anterior y uno siguiente, y según el estado del anterior, actúo de un modo u otro
Depende si la lista está vacía, es el primero, o está entre el segundo y el último.


