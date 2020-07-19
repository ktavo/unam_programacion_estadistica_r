> swirl()

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

Selection: 2
  |                                                                                 |   0%

| En esta lección conocerás los tipos de datos que existen en el lenguaje R, además de las
| operaciones básicas que puedes hacer con ellos.

...

  |=                                                                                |   1%
| Cuando introduces una expresión en la línea de comandos y das ENTER, R evalúa la
| expresión y muestra el resultado (si es que existe uno). R puede ser usado como una
| calculadora, ya que realiza operaciones aritméticas, además de operaciones lógicas.

...

  |==                                                                               |   2%
| Pruébalo: ingresa 3 + 7 en la línea de comandos.

> 3+7
[1] 10

| You are amazing!

  |===                                                                              |   3%
| R simplemente imprime el resultado 10 por defecto. Sin embargo, R es un lenguaje de
| programación y normalmente la razón por la que usas éstos es para automatizar algún
| proceso y evitar la repetición innecesaria.

...

  |====                                                                             |   4%
| En ese caso, tal vez quieras usar el resultado anterior en algún otro cálculo. Así que
| en lugar de volver a teclear la expresión cada vez que la necesites, puedes crear una
| variable que guarde el resultado de ésta.

...

  |=====                                                                            |   6%
| La manera de asignar un valor a una variable en R es usar el operador de asignación, el
| cual es sólo un símbolo de menor que seguido de un signo de menos, mejor conocido como
| guion alto. El operador se ve así: <-

...

  |=====                                                                            |   7%
| Por ejemplo, ahora ingresa en la línea de comandos: mi_variable <- (180 / 6) - 15

> mi_variable <- (180 / 3) - 15

| One more time. You can do it! Or, type info() for more options.

> mi_variable <- (180 / 6) - 15

| Your dedication is inspiring!

  |======                                                                           |   8%
| Lo que estás haciendo en este caso es asignarle a la variable mi_variable el valor de
| todo lo que se encuentra del lado derecho del operador de asignación, en este caso (180
| / 6) - 15.

...

  |=======                                                                          |   9%
| En R también puedes asignar del lado izquierdo: (180 / 6) - 15 -> mi_variable

...

  |========                                                                         |  10%
| Como ya te habrás dado cuenta, la asignación '<-' no muestra ningún resultado. Antes de
| ver el contenido de la variable 'mi_variable', ¿qué crees que contenga la variable
| ‘mi_variable’?.

1: la expresión evaluada, es decir un 15
2: la expresión (180 /  6) - 15
3: la dirección de memoria de la variable 'mi_variable'

Selection: 1

| You got it!

  |=========                                                                        |  11%
| La variable 'mi_variable' deberá contener el número 15, debido a que (180 / 6) - 15 =
| 15. Para revisar el contenido de una variable, basta con escribir el nombre de ésta en
| la línea de comandos y presionar ENTER. Inténtalo: muestra el contenido de la variable
| 'mi_variable':

> mi_variable
[1] 15

| You got it right!

  |==========                                                                       |  12%
| Nota que el '[1]' acompaña a los valores mostrados al evaluar las expresiones
| anteriores. Esto se debe a que en R todo número que introduces en la consola es
| interpretado como un vector.

...

  |===========                                                                      |  13%
| Un vector es una colección ordenada de números, por lo cual el '[1]' denota la posición
| del primer elemento mostrado en el renglón 1. En los casos anteriores sólo existe un
| único elemento en el vector.

...

  |============                                                                     |  15%
| En R puedes construir vectores más largos usando la función c() (combine). Por ejemplo,
| introduce: y <- c(561, 1105, 1729, 2465, 2821)

> y <- c(561, 1105, 1729, 2465, 2821)

| You are doing so well!

  |=============                                                                    |  16%
| Ahora observa el contenido de la variable 'y'. Otra manera de ver el contenido de una
| variable es imprimirlo con la función print(). Introduce print(y) en la línea de
| comandos:

> print(y)
[1]  561 1105 1729 2465 2821

| Excellent work!

  |==============                                                                   |  17%
| Como puedes notar, la expresión anterior resulta ser un vector que contiene los primeros
| cinco números de Carmichael. Como ejemplo de un vector que abarque más de una línea, usa
| el operador de secuencia para producir un vector con cada uno de los enteros del 1 al
| 100. Introduce 1:100 en la línea de comandos.

> 1:100
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21
 [22]  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42
 [43]  43  44  45  46  47  48  49  50  51  52  53  54  55  56  57  58  59  60  61  62  63
 [64]  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84
 [85]  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100

| You are doing so well!

  |===============                                                                  |  18%
| El vector es el objeto más simple en R. La mayoría de las operaciones están basadas en
| vectores.

...

  |===============                                                                  |  19%
| Por ejemplo, puedes realizar operaciones sobre vectores y R automáticamente empareja los
| elementos de los dos vectores. Introduce c(1.1, 2.2, 3.3, 4.4) - c(1, 1, 1, 1) en la
| línea de comandos.

> c(1.1, 2.2, 3.3, 4.4) - c(1, 1, 1, 1)
[1] 0.1 1.2 2.3 3.4

| Keep working like that and you'll get there!
  
  |================                                                                 |  20%
| Nota: Si los dos vectores son de diferente tamaño, R repetirá la secuencia más pequeña
| múltiples veces. Por ejemplo, introduce c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) - c(1, 2) en la
| línea de comandos.

> c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) - c(1,2)
[1] 0 0 2 2 4 4 6 6 8 8

| Your dedication is inspiring!
  
  |=================                                                                |  21%
  | En R casi todo es un objeto. Para ver qué objetos tienes en un momento determinado,
  | puedes usar la función ls(). Inténtalo ahora.
  
  > ls()
  [1] "mi_variable" "ncol"        "test1"       "tf"          "y"          
  
  | Excellent work!
    
    |==================                                                               |  22%
  | Como sabes, existen otros tipos de objetos, como los caracteres (character).
  
  ...
  
  |===================                                                              |  24%
  | Las expresiones con caracteres se denotan entre comillas. Por ejemplo, introduce "¡Hola
| Mundo!" en la línea de comandos.
  
  > "¡Hola Mundo!"
  [1] "¡Hola Mundo!"
  
  | That's a job well done!

  |====================                                                             |  25%
| Esto es mejor conocido en R como un vector de caracteres. De hecho, este ejemplo es un
| vector de longitud uno.

...

  |=====================                                                            |  26%
| Ahora crea una variable llamada ‘colores’ que contenga un vector con las cadenas "rojo",
| "azul", "verde", "azul", "rojo", en ese orden.

> colores <- c("rojo", "azul", "verde", "azul", "rojo")

| You got it right!

  |======================                                                           |  27%
| Ahora imprime el vector ‘colores’ .

> colores
[1] "rojo"  "azul"  "verde" "azul"  "rojo" 

| Great job!

  |=======================                                                          |  28%
| En otros lenguajes como C, carácter (character) hace referencia a un simple carácter, y
| cadena (string) se entiende como un conjunto de caracteres ordenados. Una cadena de
| caracteres es equivalente al valor de carácter en R.

...

  |========================                                                         |  29%
| Además, hay objetos de tipo numérico (numeric) que se dividen en complejos (complex) y
| enteros (integer). Los últimos ya los conoces, pues has estado trabajando con ellos,
| además de los vectores y los caracteres.

...

  |=========================                                                        |  30%
| Los complejos en R se representan de la siguiente manera: a+bi, donde 'a' es la parte
| real y 'b' la parte imaginaria. Pruébalo: guarda el valor de 2+1i en la variable
| 'complejo'.

> complejo <- c(2+1i)

| You're close...I can feel it! Try it again. Or, type info() for more options.
  
  | Introduce complejo <- 2+1i en la línea de comandos.
  
  > complejo <- 2+1i
  
  | You're the best!

  |=========================                                                        |  31%
| Al igual que los demás objetos de tipo numérico, lo complejos pueden hacer uso de los
| operadores aritméticos más comunes, como `+`(suma), `-` (resta, o negación en el caso
| unario), `/`(división), `*` (multiplicación) `^` (donde x^2 significa 'x elevada a la
  | potencia 2'). Para obtener la raíz cuadrada, usa la función sqrt(), y para obtener el
| valor absoluto, la función abs().

...

  |==========================                                                       |  33%
| También hay objetos lógicos (logic) que representan los valores lógicos falso y
| verdadero.

...

  |===========================                                                      |  34%
| El valor lógico falso puede ser representado por la instrucción FALSE o únicamente por
| la letra F mayúscula; de la misma manera, el valor lógico verdadero es representado por
| la instrucción TRUE o por la letra T.

...

  |============================                                                     |  35%
| Como operadores lógicos están el AND lógico: `&` y `&&` y el OR lógico: `|` y `||`.

...

  |=============================                                                    |  36%
| También existen operadores que devuelven valores lógicos, éstos pueden ser de orden,
| como: `>` (mayor que), `<` (menor que), `>=` (mayor igual) y `<=` (menor igual), o de
| comparación, como: `==` (igualdad) y `!=` (diferencia). Por ejemplo, introduce en la
| línea de comandos mi_variable == 15.

> mi_variable == 15
[1] TRUE

| That's the answer I was looking for.
  
  |==============================                                                   |  37%
  | Como puedes ver, R te devuelve el valor TRUE, pues si recuerdas, en la variable
  | 'mi_variable' asignaste el valor de la expresión (180 / 6) - 15, la cual resultaba en el
  | valor 15. Por lo cual, cuando le preguntas a R si 'mi_variable' es igual a 15, te
  | devuelve el valor TRUE.
  
  ...
  
  |===============================                                                  |  38%
  | En R existen algunos valores especiales.
  
  ...
  
  |================================                                                 |  39%
  | Por ejemplo, los valores NA son usados para representar valores faltantes. Supón que
  | cambias el tamaño de un vector a un valor más grande del previamente definido. Recuerda
  | el vector 'complejo', el cual contenía el número complejo 2+1i; cambia la longitud de
  | 'complejo'. Ingresa length(complejo) <- 3 en la línea de comandos.
  
  > length(complejo) <- 3
  
  | Nice work!
    
    |=================================                                                |  40%
  | Ahora ve el contenido de 'complejo'.
  
  > complejo
  [1] 2+1i   NA   NA
  
  | You are doing so well!
    
    |==================================                                               |  42%
  | Los nuevos espacios tendrán el valor NA, el cual quiere decir not available (no
                                                                                 | disponible).
  
  ...
  
  |===================================                                              |  43%
  | Si un resultado de la evaluación de alguna expresión aritmética es muy grande, R regresa
  | el valor 'Inf' para un valor positivo y '-Inf' para un valor negativo (infinitos
                                                                           | positivo y negativo, respectivamente). Por ejemplo, introduce 2^1024 en la línea de
  | comandos.
  
  > 2^1024
  [1] Inf
  
  | That's a job well done!

  |===================================                                              |  44%
| Algunas veces la evaluación de alguna expresión no tendrá sentido. En estos casos, R
| regresará el valor Nan (not a number). Por ejemplo, divide 0 entre 0.

> 0/0
[1] NaN

| You got it right!

  |====================================                                             |  45%
| Adicionalmente, en R existe el objeto null y es representado por el símbolo NULL.

...

  |=====================================                                            |  46%
| Nota que NULL no es lo mismo que NA, Inf, -Inf o Nan.

...

  |======================================                                           |  47%
| Recuerda que R incluye un conjunto de clases para representar fechas y horas. Algunas de
| ellas son: Date, POSIXct y POSTXlt.

...

  |=======================================                                          |  48%
| Por ejemplo, introduce fecha_primer_curso_R <- Sys.Date() en la línea de comandos.

> fecha_primer_curso_R <- Sys.Date()

| You are really on a roll!

  |========================================                                         |  49%
| Ahora imprime el contenido de fecha_primer_curso_R.

> print(fecha_primer_curso_R)
[1] "2020-07-19"

| Nice work!

  |=========================================                                        |  51%
| Recuerda que R te permite llevar a cabo operaciones numéricas y estadísticas con las
| fechas y horas. Además, R incluye funciones para manipularlas. Muchas funciones de
| graficación requieren fechas y horas.

...

  |==========================================                                       |  52%
| Ahora que conoces los objetos más usados en R, debes saber que además de la función c(),
| en R existe la función vector() para crear vectores. Al usar la función vector(), debes
| especificar el tipo de dato que almacenará el vector y el tamaño.

...

  |===========================================                                      |  53%
| La función vector() crea un vector con los valores por defecto del tipo especificado.

...

  |============================================                                     |  54%
| Por ejemplo, escribe vector("numeric", length = 10) en la línea de comandos.

> vector("numeric", length = 10)
 [1] 0 0 0 0 0 0 0 0 0 0

| Keep up the great work!

  |=============================================                                    |  55%
| Como puedes observar, el vector fue llenado con ceros.

...

  |==============================================                                   |  56%
| Ahora introduce vector("character", length = 10) en la línea de comandos.

> vector("character", length = 10)
 [1] "" "" "" "" "" "" "" "" "" ""

| Great job!

  |==============================================                                   |  57%
| Esta vez el vector fue llenado con 10 cadenas vacías.

...

  |===============================================                                  |  58%
| Si le indicaras al vector que el tipo fuera "logical", ¿qué crees que contendría?

1: sólo valores TRUE
2: sólo valores FALSE
3: ninguna de las anteriores

Selection: 2

| Keep working like that and you'll get there!
    
    |================================================                                 |  60%
  | Crea un vector de tipo "logical" de tamaño 10 usando la función vector().
  
  > vector("logical", length = 10)
  [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  
  | That's correct!

  |=================================================                                |  61%
| Nota: Ahora que conoces los objetos más usados en R, es importante que sepas que los
| vectores sólo pueden contener objetos de la misma clase. Para guardar objetos de
| diferentes clases, puedes usar listas.

...

  |==================================================                               |  62%
| Las listas son una colección ordenada de objetos. Para crear una lista, usa la función
| list() y especifica el contenido de la lista separado por comas dentro de los
| paréntesis. Inténtalo: crea una lista que contenga un 0, la cadena "Hola" y el valor
| TRUE, en ese orden.

> list(0, "Hola", TRUE)
[[1]]
[1] 0

[[2]]
[1] "Hola"

[[3]]
[1] TRUE


| That's the answer I was looking for.
  
  |===================================================                              |  63%
  | Anteriormente viste que en R los vectores sólo pueden contener objetos de la misma
  | clase.
  
  ...
  
  |====================================================                             |  64%
  | Pero, ¿qué pasa si creas un vector c(T, 19, 1+3i)? Introduce c(T, 19, 1+3i) en la línea
  | de comandos.
  
  > c(T, 19, 1+3i)
  [1]  1+0i 19+0i  1+3i
  
  | Great job!
    
    |=====================================================                            |  65%
  | Como habrás supuesto, el número complejo 1+3i no puede ser convertido a entero ni a
  | objeto de tipo "logical", entonces los valores T y 19 son convertidos a los números
  | complejos 1+0i y 19+0i respectivamente. Esto no es más que la representación de esos
  | valores en objeto tipo "complex".
  
  ...
  
  |======================================================                           |  66%
  | Esto se llama coerción.
  
  ...
  
  |=======================================================                          |  67%
  | La coerción hace que todos los objetos de un vector sean de una misma clase. Entonces,
  | cuando creas un vector de diferentes tipos, R busca un tipo común, y los elementos que
  | no son de ese tipo son convertidos.
  
  ...
  
  |========================================================                         |  69%
  | Otro ejemplo de coerción es cuando usas las funciones as.*().
  
  ...
  
  |========================================================                         |  70%
  | Inténtalo: crea un vector de longitud 5 de tipo "numeric" con la función vector() y
  | guardarlo en la variable ‘c’.
  
  > c <- vector("numeric" 5)
  Error: unexpected numeric constant in "c <- vector("numeric" 5"
  > c <- vector("numeric", 5)
  
  | Keep up the great work!
    
    |=========================================================                        |  71%
  | Revisa el contenido de la variable ‘c’ .
  
  > c
  [1] 0 0 0 0 0
  
  | You got it right!
    
    |==========================================================                       |  72%
  | Ahora usa la función as.logical() con el vector c.
  
  > as.logical(c)
  [1] FALSE FALSE FALSE FALSE FALSE
  
  | You are amazing!
    
    |===========================================================                      |  73%
  | Como puedes imaginar, el vector de tipo "numeric" fue explícitamente convertido a
  | "logical".
  
  ...
  
  |============================================================                     |  74%
  | Este tipo de coerción es mejor conocida como coerción explícita. Además de as.logical(),
  | también existe as.numeric(), as.character(), as.integer().
  
  ...
  
  |=============================================================                    |  75%
  | Si usas la función class(), que te dice la clase a la que pertenece un objeto, obtendrás
  | que class(c) = "numeric." Pruébalo, ingresa class(c) en la línea de comandos.
  
  > class(c)
  [1] "numeric"
  
  | That's correct!

  |==============================================================                   |  76%
| Pero si después pruebas la misma función class() enviándole como argumento
| as.logical(c), obtendrás que es de tipo logical. Compruébalo:

> class(as.logical(c))
[1] "logical"

| That's a job well done!
    
    |===============================================================                  |  78%
  | Además de los vectores y las listas, existen las matrices.
  
  ...
  
  |================================================================                 |  79%
  | Una matriz es una extensión de un vector de dos dimensiones. Las matrices son usadas
  | para representar información de un solo tipo de dos dimensiones.
  
  ...
  
  |=================================================================                |  80%
  | Una manera de generar una matriz es al usar la función matrix(). Inténtalo, introduce m
  | <- matrix(data=1:12,nrow=4,ncol=3) en la línea de comandos.
  
  > m <- matrix(data=1:12, nrow=4, ncol=3)
  
  | Excellent work!
    
    |==================================================================               |  81%
  | Ahora imprime el contenido de 'm'.
  
  > print(m)
  [,1] [,2] [,3]
  [1,]    1    5    9
  [2,]    2    6   10
  [3,]    3    7   11
  [4,]    4    8   12
  
  | Excellent job!
    
    |==================================================================               |  82%
  | Como puedes observar, creaste una matriz con tres columnas (ncol) y cuatro renglones
  | (nrow).
  
  ...m
  
  |===================================================================              |  83%
  | Recuerda que también puedes crear matrices con las funciones cbind, rbind y as.matrix().
  
  ...
  
  |====================================================================             |  84%
  | Los factores son otro tipo especial de vectores usados para representar datos
  | categóricos, éstos pueden ser ordenados o sin orden.
  
  ...
  
  |=====================================================================            |  85%
  | Recuerda el vector 'colores' que creaste previamente y supón que representa un conjunto
  | de observaciones acerca de cuál es el color preferido de las personas.
  
  ...
  
  |======================================================================           |  87%
  | Es una representación perfectamente válida, pero puede llegar a ser ineficiente. Ahora
  | representarás los colores como un factor. Introduce factor(colores) en la línea de
  | comandos.
  
  > factor(colores)
  [1] rojo  azul  verde azul  rojo 
  Levels: azul rojo verde
  
  | Nice work!
    
    |=======================================================================          |  88%
  | La impresión de un factor muestra información ligeramente diferente a la de un vector de
  | caracteres. En particular, puedes notar que las comillas no son mostradas y que los
  | niveles son explícitamente impresos.
  
  ...
  
  |========================================================================         |  89%
  | Por último, existen los dataframes, que son una manera muy útil de representar datos
  | tabulares. Son uno de los tipos más importantes.
  
  ...
  
  |=========================================================================        |  90%
  | Un dataframe representa una tabla de datos. Cada columna de éste puede ser de un tipo
  | diferente, pero cada fila debe tener la misma longitud.
  
  ...
  
  |==========================================================================       |  91%
  | Ahora crea uno. Introduce data.frame(llave=y, color=colores) en la línea de comandos.
  
  > data.frame(llave=y, color=colores)
  llave color
  1   561  rojo
  2  1105  azul
  3  1729 verde
  4  2465  azul
  5  2821  rojo
  
  | You're the best!

  |===========================================================================      |  92%
| ¿Recuerdas los vectores 'y' y 'colores'? Pues con ellos creaste un data frame cuya
| primera columna tiene números de Carmichael y la segunda colores.

...

  |============================================================================     |  93%
| Otra manera de crear dataframes es con las funciones read.table() y read.csv().

...

  |============================================================================     |  94%
| También puedes usar la función data.matrix() para convertir un data frame en una matriz.

...

  |=============================================================================    |  96%
| Antes de concluir la lección, te mostraré un par de atajos.

...

  |==============================================================================   |  97%
| Al inicio de esta lección introdujiste mi_variable <- (180 / 6) - 15 en la línea de
| comandos. Supón que cometiste un error y que querías introducir mi_variable <- (180 /
| 60) - 15, es decir, querías escribir 60, pero escribiste 6. Puedes reescribir la
| expresión o...

...

  |===============================================================================  |  98%
| En muchos entornos de programación, presionar la tecla 'flecha hacia arriba' te mostrará
| comandos anteriores. Presiona esta tecla hasta que llegues al comando (mi_variable <-
| (180 / 6) - 15), entonces cambia el número 6 por 60 y presiona ENTER. Si la tecla
| 'flecha hacia arriba' no funciona, sólo escribe el comando correcto.

> mi_variable <- (180 / 60) - 15

| Great job!

  |================================================================================ |  99%
| Por último, puedes teclear las dos primeras letras del nombre de la variable y después
| presionar la tecla Tab (tabulador). La mayoría de los entornos de programación muestran
| una lista de las variables que has creado con el prefijo 'mi_'. Esta función se llama
| autocompletado y es muy útil para cuando tienes muchas variables en tu espacio de
| trabajo. Pruébalo, ingresa 'mi_' y autocompleta. Si autocompletar no sirve en tu caso,
| sólo ingresa mi_variable en la línea de comandos).

> mi_variable
[1] -12

| You got it right!

  |=================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has
| completado esta lección?

1: No
2: Si

Selection: 2