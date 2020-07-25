| Welcome to swirl! Please sign in. If you've been here before, use the same name as you
| did then. If you are new, call yourself something unique.

What shall I call you? Gustavo Ríos Páez

| Please choose a course, or type 0 to exit swirl.

1: programacion-estadistica-r
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Obtener Ayuda
 2: Objetos Tipos de Datos y Operaciones Basicas
 3: Subconjuntos de Datos
 4: Leer y escribir Datos
 5: Funciones
 6: Funciones apply
 7: Graficacion
 8: Parametros en el Sistema de Graficos
 9: Colores en el Sistema de Graficos
10: Graficacion con texto y notacion matematica
11: Creacion de Graficas en 3D
12: Expresiones regulares
13: Graficacion con ggplot2
14: Simulacion

Selection: 3
  |                                                                                |   0%

| En esta lección conocerás las maneras de acceder a las estructuras de datos en el
| lenguaje R.

...

  |=                                                                               |   2%
| R tiene una sintaxis especializada para acceder a las estructuras de datos.

...

  |===                                                                             |   4%
| Tú puedes obtener un elemento o múltiples elementos de una estructura de datos usando
| la notación de indexado de R.

...

  |====                                                                            |   5%
| R provee diferentes maneras de referirse a un elemento (o conjunto de elementos) de un
| vector. Para probar estas diferentes maneras crea una variable llamada 'mi_vector' que
| contenga un vector con los números enteros del 11 al 30. Recuerda que puedes usar el
| operador secuencia ':'.

> mi_vector <- (11:30)

| Not exactly. Give it another go. Or, type info() for more options.

> mi_vector <- c(11:30)

| Excellent job!

  |======                                                                          |   7%
| Y ahora ve su contenido.

> mi_vector
 [1] 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30

| Keep working like that and you'll get there!
  
  |=======                                                                         |   9%
  | La manera más común de buscar un elemento en R es por medio de un vector numérico.
  
  ...
  
  |========                                                                        |  11%
  | Puedes buscar elementos por posición en un vector usando la siguiente notación: x[s],
  | donde 'x' es un vector del cual deseas obtener elementos y 's' es un segundo vector
  | representando el conjunto de índices de elementos que te gustaría consultar.
  
  ...
  
  |==========                                                                      |  12%
  | Debes saber que en R las posiciones de los elementos de un vector comienzan en 1 y no
  | en 0, como en lenguajes de programación como Java o C.
  
  ...
  
  |===========                                                                     |  14%
  | Puedes usar un vector entero para buscar un simple elemento o múltiples.
  
  ...
  
  |=============                                                                   |  16%
  | Por ejemplo, obten el tercer elemento de 'mi_vector'.
  
  > mi_vector(3)
  Error in mi_vector(3) : could not find function "mi_vector"
  > mi_vector[3]
  [1] 13
  
  | That's a job well done!

  |==============                                                                  |  18%
| Ahora obten los primeros cinco elementos de 'mi_vector'.

> mi_vectorc(1:5)
Error in mi_vectorc(1:5) : could not find function "mi_vectorc"
> mi_vectorc[(1:5)]
Error: object 'mi_vectorc' not found
> mi_vector[(1:5)]
[1] 11 12 13 14 15

| Not exactly. Give it another go. Or, type info() for more options.

| Introduce mi_vector[1:5] en la línea de comandos.

> mi_vector[1:5]
[1] 11 12 13 14 15

| Your dedication is inspiring!

  |===============                                                                 |  19%
| No necesariamente los índices deben ser consecutivos. Ingresa mi_vector[c(4,6,13)] en
| la línea de comandos.

> mi_vector[c(4,6,13)]
[1] 14 16 23

| You nailed it! Good job!

  |=================                                                               |  21%
| Asimismo, no es necesario que los índices se encuentren ordenados. Ingresa
| mi_vector[c(6,13,4)] en la línea de comandos.

> mi_vector[c(6,13,4)]
[1] 16 23 14

| You are quite good my friend!

  |==================                                                              |  23%
| Como un caso especial, puedes usar la notación [[]] para referirte a un solo elemento.
| Ingresa mi_vector[[3]] en la línea de comandos.

> mi_vector[3]
[1] 13

| Almost! Try again. Or, type info() for more options.

> mi_vector[[3]
+ 
+ q
Error: unexpected symbol in:
"
q"
> mi_vector[[3]]
[1] 13

| That's a job well done!
    
    |====================                                                            |  25%
  | La notación [[]] funciona de la misma manera que la notación [] en este caso.
  
  ...
  
  |=====================                                                           |  26%
  | También puedes usar enteros negativos para obtener un vector que consista en todos los
  | elementos, excepto los elementos especificados. Excluye los elementos 9:15, al
  | especificar -9:-15.
  
  > mi_vector[-c(9:15)]
  [1] 11 12 13 14 15 16 17 18 26 27 28 29 30
  
  | That's not exactly what I'm looking for. Try again. Or, type info() for more options.
  
  | Introduce mi_vector[-9:-15] en la línea de comandos.
  
  > mi_vector[-9:-15]
  [1] 11 12 13 14 15 16 17 18 26 27 28 29 30
  
  | Keep up the great work!
    
    |======================                                                          |  28%
  | Como alternativa a indexar con un vector de enteros, puedes indexar a través de un
  | vector lógico.
  
  ...
  
  |========================                                                        |  30%
  | Como ejemplo crea un vector lógico de longitud 10 con valores lógicos alternados, TRUE
  | y FALSE (rep(c(TRUE,FALSE),10)), y consulta con él mi_vector[rep(c(TRUE,FALSE),10)].
  
  > (rep(TRUE,FALSE),10)
  Error: unexpected ',' in "(rep(TRUE,FALSE),"
  > (rep(TRUE,FALSE),10))
Error: unexpected ',' in "(rep(TRUE,FALSE),"
> (rep(c(TRUE,FALSE),10))
[1]  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
[15]  TRUE FALSE  TRUE FALSE  TRUE FALSE

| Almost! Try again. Or, type info() for more options.

| Introduce mi_vector[rep(c(TRUE,FALSE),10)] en la línea de comandos.

> mi_vector[(rep(c(TRUE,FALSE),10))]
[1] 11 13 15 17 19 21 23 25 27 29

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Introduce mi_vector[rep(c(TRUE,FALSE),10)] en la línea de comandos.

> mi_vector[rep(c(TRUE,FALSE),10)]
[1] 11 13 15 17 19 21 23 25 27 29

| You got it!
  
  |=========================                                                       |  32%
| Como podrás notar, lo que ocurrió fue que indexaste únicamente los elementos en las
| posiciones impares, puesto que creaste un vector con elementos TRUE en las posiciones
| impares y FALSE en las pares.

...

|===========================                                                     |  33%
| El vector índice no necesita ser de la misma longitud que el vector a indexar. R
| repetirá el vector más corto y regresará los valores que cacen. Ingresa
| mi_vector[c(FALSE,FALSE,TRUE)] en la linea de comandos.

> mi_vector[c(FALSE,FALSE,TRUE)]
[1] 13 16 19 22 25 28

| You got it!
  
  |============================                                                    |  35%
| Notarás que ahora indexaste los índices de los elementos múltiplos de 3.

...

|=============================                                                   |  37%
| Es muy útil calcular un vector lógico de un mismo vector. Por ejemplo, busca elementos
| más grandes que 20. Ingresa en la línea de comandos mi_vector > 20.

> mi_vector > 20
[1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE
[15]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE

| You are quite good my friend!
  
  |===============================                                                 |  39%
| Y ahora indexa 'mi_vector' usando el vector previamente calculado. Ingresa
| mi_vector[(mi_vector > 20)] en la línea de comandos.

> mi_vector[(mi_vector > 20)]
[1] 21 22 23 24 25 26 27 28 29 30

| You are really on a roll!
  
  |================================                                                |  40%
| También puedes usar esta notación para extraer partes de una estructura de datos
| multidimensional.

...

|==================================                                              |  42%
| Un arreglo es un vector multidimensional. Vectores y arreglos se almacenan de la misma
| manera internamente, pero un arreglo se muestra diferente y se accede diferente.

...

|===================================                                             |  44%
| Para crear un arreglo de dimensión 3x3x2 y de contenido los números del 1 al 18 y
| guardarlo en la variable 'mi_arreglo', ingresa mi_arreglo <-
  | array(c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18),dim=c(3,3,2)) en la línea de
| comandos.

> mi_arreglo <- array(c(1:18), dim=c(3,3,2))

| You are really on a roll!
  
  |====================================                                            |  46%
| Ahora ve el contenido de la variable 'mi_arreglo'.

> mi_arreglo
, , 1

[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

, , 2

[,1] [,2] [,3]
[1,]   10   13   16
[2,]   11   14   17
[3,]   12   15   18


| Great job!
  
  |======================================                                          |  47%
| R tiene una manera muy limpia de referirse a parte de un arreglo. Se especifican
| índices para cada dimensión, separados por comas. Ingresa mi_arreglo[1,3,2] en la línea
| de comandos.

> mi_arreglo[1,3,2]
[1] 16

| You're the best!

  |=======================================                                         |  49%
| Asimismo, puedes ingresar mi_arreglo[1:2,1:2,1] en la línea de comandos. ¡Inténtalo!

> mi_arreglo[1:2,1:2,1]
     [,1] [,2]
[1,]    1    4
[2,]    2    5

| You got it right!

  |=========================================                                       |  51%
| Una matriz es simplemente un arreglo bidimensional. Ahora crea una matriz con 3
| renglones y 3 columnas con los números enteros del 1 al 9 y guárdala en la variable
| 'mi_matriz'.

> mi_matriz <- array(c(1:9), dim = c(3,3))

| Not exactly. Give it another go. Or, type info() for more options.

| Ingresa mi_matriz <- matrix(data=1:9,nrow=3,ncol=3) en la línea de comandos.

> mi_matriz <- matrix(data=1:9, nrow=3,ncol=3)

| You are quite good my friend!

  |==========================================                                      |  53%
| Al igual que con los arreglos, para obtener todos los renglones o columnas de una
| dimensión de una matriz, simplemente omite los índices.

...

  |============================================                                    |  54%
| Por ejemplo, si quisiéras solo el primer renglón de 'mi_matriz', basta con ingresar
| mi_matriz[1,] en la línea de comandos. ¡Inténtalo!

> mi_matriz
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

| Not quite right, but keep trying. Or, type info() for more options.

> mi_matriz[1,]
[1] 1 4 7

| Keep working like that and you'll get there!
  
  |=============================================                                   |  56%
| ¡Ahora obtén solo la primera columna!
  
  > mi_matriz[,1]
[1] 1 2 3

| You are really on a roll!
  
  |==============================================                                  |  58%
| También puedes referirte a un rango de renglones. Ingresa mi_matriz[2:3,] en la línea
| de comandos.

> mi_matriz[2:3,]
[,1] [,2] [,3]
[1,]    2    5    8
[2,]    3    6    9

| That's correct!

  |================================================                                |  60%
| O referirte a un conjunto no contiguo de renglones. Ingresa mi_matriz[c(1,3),] en la
| línea de comandos.

> mi_matriz[c(1,3),]
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    3    6    9

| That's correct!
  
  |=================================================                               |  61%
| En los ejemplos de arriba solo has visto estructuras de datos basadas en un solo tipo.
| Recuerda que R tiene un tipo de datos incorporado para la mezcla de objetos de
| diferentes tipos, llamados listas.

...mi_matriz

|===================================================                             |  63%
| Debes de saber que en R las listas son sutilmente diferentes de las listas en muchos
| otros lenguajes. Las listas en R contienen una selección heterogénea de objetos. Puedes
| nombrar cada componente en una lista.

...

|====================================================                            |  65%
| Los elementos en una lista pueden ser referidos por su ubicación o por su nombre.

...

|=====================================================                           |  67%
| Ingresa este ejemplo de una lista con cuatro componentes nombrados carro <-
  | list(color="rojo", nllantas=4, marca= "Renault", ncilindros=4).

> carro <- list(color="rojo", nllantas=4, marca"Renault", ncilindros=4)
Error: unexpected string constant in "carro <- list(color="rojo", nllantas=4, marca"Renault""
> carro <- list(color="rojo", nllantas=4, marca="Renault", ncilindros=4)

| You're the best!

  |=======================================================                         |  68%
| Tú puedes acceder a los elementos de una lista de múltiples formas. Puedes usar la
| misma notación que usaste con los vectores.

...

  |========================================================                        |  70%
| Y además puedes indexar un elemento por nombre usando la notación $. Por ejemplo,
| ingresa carro$color en la línea de comandos.

> carro$color
[1] "rojo"

| You got it!

  |==========================================================                      |  72%
| Además, puedes usar la notación [] para indexar un conjunto de elementos por nombre.
| Ingresa carro[c("ncilindros","nllantas")] en la línea de comandos.

> carro[c("ncilindros", "nllantas")]
$ncilindros
[1] 4

$nllantas
[1] 4


| Keep up the great work!

  |===========================================================                     |  74%
| También puedes indexar por nombre usando la notación [[]] cuando seleccionas un simple
| elemento. Por ejemplo, ingresa carro[["marca"]] en la línea de comandos.

> carro[["marca"]]
[1] "Renault"

| That's correct!
  
  |============================================================                    |  75%
| Hasta puedes indexar por nombre parcial usando la opción exact=FALSE. Ingresa
| carro[["mar",exact=FALSE]] en la línea de comandos.

> carro[["mar", exact=FALSE]]
[1] "Renault"

| Perseverance, that's the answer.

  |==============================================================                  |  77%
| Ahora crea la siguiente lista: camioneta <- list(color="azul", nllantas=4, marca=
| "BMW", ncilindros=6).

> camioneta <- list(color="azul", nllantas=4, marca="BMW", ncilindros=6)

| You are really on a roll!

  |===============================================================                 |  79%
| Algunas veces una lista será una lista de listas. Ingresa cochera <- list(carro,
| camioneta).

> cochera <- list(carro, camioneta)

| That's the answer I was looking for.

|=================================================================               |  81%
| Ahora ve el contenido de 'cochera'.

> cochera
[[1]]
[[1]]$color
[1] "rojo"

[[1]]$nllantas
[1] 4

[[1]]$marca
[1] "Renault"

[[1]]$ncilindros
[1] 4


[[2]]
[[2]]$color
[1] "azul"

[[2]]$nllantas
[1] 4

[[2]]$marca
[1] "BMW"

[[2]]$ncilindros
[1] 6



| Keep up the great work!
  
  |==================================================================              |  82%
| Tú puedes usar la notación [[]] para referirte a un elemento en este tipo de estructura
| de datos. Para hacer esto usa un vector como argumento. R iterará a través de los
| elementos en el vector referenciando sublistas.

...

|===================================================================             |  84%
| Ingresar cochera[[c(2, 1)]] en la línea de comandos.

> cochera[[c(2,1)]]
[1] "azul"

| You got it right!
  
  |=====================================================================           |  86%
| Recuerda que los data frames son una lista que contiene múltiples vectores nombrados
| que tienen la misma longitud. A partir de este momento usarás el data frame cars del
| paquete datasets. No te preocupes, este paquete viene cargado por defecto.

...

|======================================================================          |  88%
| Los datos que conforman al data frame cars son un conjunto de observaciones tomadas en
| la década de 1920; estas observaciones describen la velocidad (mph) de algunos carros y
| la distancia (ft) que les tomó parar.

...

|========================================================================        |  89%
| Ve el contenido del data frame cars. Ingresa cars en la línea de comandos.

> cars
speed dist
1      4    2
2      4   10
3      7    4
4      7   22
5      8   16
6      9   10
7     10   18
8     10   26
9     10   34
10    11   17
11    11   28
12    12   14
13    12   20
14    12   24
15    12   28
16    13   26
17    13   34
18    13   34
19    13   46
20    14   26
21    14   36
22    14   60
23    14   80
24    15   20
25    15   26
26    15   54
27    16   32
28    16   40
29    17   32
30    17   40
31    17   50
32    18   42
33    18   56
34    18   76
35    18   84
36    19   36
37    19   46
38    19   68
39    20   32
40    20   48
41    20   52
42    20   56
43    20   64
44    22   66
45    23   54
46    24   70
47    24   92
48    24   93
49    24  120
50    25   85

| Perseverance, that's the answer.

  |=========================================================================       |  91%
| Te puedes referir a los elementos de un data frame (o a los elementos de una lista) por
| nombre usando el operador $. Ingresa cars$speed en la línea de comandos.

> cars$speed
 [1]  4  4  7  7  8  9 10 10 10 11 11 12 12 12 12 13 13 13 13 14 14 14 14 15 15 15 16 16
[29] 17 17 17 18 18 18 18 19 19 19 20 20 20 20 20 22 23 24 24 24 24 25

| You nailed it! Good job!

  |==========================================================================      |  93%
| Supón que deseas saber a qué velocidad iban los carros a los que les tomó más de 100
| pies (ft) frenar.

...

  |============================================================================    |  95%
| Una manera de encontrar valores específicos en un data frame es al usar un vector de
| valores booleanos para especificar cuál o cuáles elementos regresar de la lista. La
| manera de calcular el vector apropiado es así: cars$dist>100. ¡Inténtalo!

> cars$dist>100
 [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[15] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[29] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
[43] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE

| You are quite good my friend!

  |=============================================================================   |  96%
| Entonces puedes usar ese vector para referirte al elemento correcto. Ingresa
| cars$speed[cars$dist>100] en la línea de comandos.

> cars$speed[cars$dist>100]
[1] 24

| Your dedication is inspiring!

  |=============================================================================== |  98%
| Ahora ya sabes cómo acceder a las estructuras de datos.

...

  |================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has
| completado esta lección?

1: No
2: Si

Selection: 2