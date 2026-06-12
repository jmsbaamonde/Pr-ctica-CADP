¿Qué se define como memoria estática

La memoria estática se define como el espacio que se reserva de memoria para cualquier tipo de dato y variable decladaro en un programa
Estos tipos de datos ya tienen una dimensión definida, por lo que a la hora de correr el programa, siempre ocupan lo mismo

¿Qué se define cómo memoria dinámica?
Por el contrario a la estática, la dinámica puede ir variando a lo largo del programa, como por ejemplo, con la estructura de datos lista
Cuando uno necesita añadir un elemento a la lista, reserva en una dirección de memoria y expande el uso de memoria dinámica, una vez ya no se usa, ese espacio se libera

¿Qué es una variable de tipo puntero?

Una variable de tipo puntero almacena/se vincula con una dirección en memoria dinámica, y en esa dirección se encontrará el contenido del que el puntero apunte

¿Qué hace la operación new?

Al utilizar la operación new, a la variable de tipo puntero que se usó en esta operación, se la vincula con una dirección de memoria donde se almacenarán los datos

¿Qué hace la operación dispose?
Al contrario del new, el dispose deshace el vínculo y libera la zona de memoria estática de la variable tipo puntero;
