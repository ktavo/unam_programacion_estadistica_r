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

Selection: 8
|                                                                                         |   0%

| En esta lección verás los parámetros del sistema de gráficos a más detalle.

...

|===                                                                                      |   3%
| Cuando creas gráficas, las opciones por defecto de R no siempre producirán exactamente lo que
| deseas. Sin embargo, puedes modificar casi cualquier aspecto de la gráfica usando los parámetros
| del sistema de gráficos.

...

|======                                                                                   |   6%
| Los parámetros del sistema de gráficos pueden establecerse de dos maneras: de forma permanente
| (que afecta a todas las funciones de gráficos) o temporal (que afecta sólo a la función llamada
                                                             | como lo viste en la lección Graficación).

...

|========                                                                                 |   9%
| La función par() es usada para acceder y modificar la lista de parámetros de forma permanente.

...

|===========                                                                              |  12%
| Para ver más detalles introduce ?par en la línea de comandos.

> ?par

| You're the best!

  |==============                                                                           |  16%
| Las nuevas configuraciones establecidas en la función par() serán los valores por defecto para
| cualquier gráfica nueva hasta que la sesión sea finalizada.

...

  |=================                                                                        |  19%
| La función par() puede ser muy útil si deseas establecer los parámetros una vez y luego graficar
| múltiples veces con ellos.

...

  |===================                                                                      |  22%
| Puedes checar o establecer los valores de los parámetros de sistema de gráficos con la función
| par().

...

  |======================                                                                   |  25%
| Para obtener una lista mostrando todos los parámetros del sistema de gráficos, simplemente llama
| a la función par() sin argumentos. ¡Inténtalo!

> par()
$xlog
[1] FALSE

$ylog
[1] FALSE

$adj
[1] 0.5

$ann
[1] TRUE

$ask
[1] TRUE

$bg
[1] "white"

$bty
[1] "o"

$cex
[1] 1

$cex.axis
[1] 1

$cex.lab
[1] 1

$cex.main
[1] 1.2

$cex.sub
[1] 1

$cin
[1] 0.15 0.20

$col
[1] "black"

$col.axis
[1] "black"

$col.lab
[1] "black"

$col.main
[1] "black"

$col.sub
[1] "black"

$cra
[1] 14.4 19.2

$crt
[1] 0

$csi
[1] 0.2

$cxy
[1] 0.1368051 0.1824068

$din
[1] 5.968750 4.208333

$err
[1] 0

$family
[1] ""

$fg
[1] "black"

$fig
[1] 0 1 0 1

$fin
[1] 5.968750 4.208333

$font
[1] 1

$font.axis
[1] 1

$font.lab
[1] 1

$font.main
[1] 2

$font.sub
[1] 1

$lab
[1] 5 5 7

$las
[1] 0

$lend
[1] "round"

$lheight
[1] 1

$ljoin
[1] "round"

$lmitre
[1] 10

$lty
[1] "solid"

$lwd
[1] 1

$mai
[1] 1.02 0.82 0.82 0.42

$mar
[1] 5.1 4.1 4.1 2.1

$mex
[1] 1

$mfcol
[1] 1 1

$mfg
[1] 1 1 1 1

$mfrow
[1] 1 1

$mgp
[1] 3 1 0

$mkh
[1] 0.001

$new
[1] FALSE

$oma
[1] 0 0 0 0

$omd
[1] 0 1 0 1

$omi
[1] 0 0 0 0

$page
[1] TRUE

$pch
[1] 1

$pin
[1] 4.728750 2.368333

$plt
[1] 0.1373822 0.9296335 0.2423762 0.8051485

$ps
[1] 12

$pty
[1] "m"

$smo
[1] 1

$srt
[1] 0

$tck
[1] NA

$tcl
[1] -0.5

$usr
[1] -2.15639  2.15639 -1.08000  1.08000

$xaxp
[1] -2  2  4

$xaxs
[1] "r"

$xaxt
[1] "s"

$xpd
[1] FALSE

$yaxp
[1] -1  1  4

$yaxs
[1] "r"

$yaxt
[1] "s"

$ylbias
[1] 0.2


| You're the best!
  
  |=========================                                                                |  28%
| Puedes guardar todos los valores de par() en un objeto. Ingresa par_orig <- par() en la línea de
| comandos para guardar los valores en la variable par_orig.

> par_orig <- par()

| That's a job well done!

  |============================                                                             |  31%
| Esto puede ser útil, ya que puedes volver a utilizar estos valores después de haberlos
| modificado.

...

  |===============================                                                          |  34%
| Si deseas checar el valor de un parámetro con la función par(), usa el nombre del parámetro como
| argumento (en cadena). Por ejemplo, ingresa par("col") en la línea de comandos para conocer el
| valor por defecto del parámetro col (color).

> par("col")
[1] "black"

| Your dedication is inspiring!

  |=================================                                                        |  38%
| Para establecer el valor de un parámetro, basta con usar el nombre del parámetro como argumento
| de la función par(). Por ejemplo, puedes usar la función par() para cambiar el valor del
| parámetro col. Ingresa par(col="blue") en la línea de comandos.

> par(col = "blue")

| Keep up the great work!

  |====================================                                                     |  41%
| Para probar que los cambios se han efectuado, en esta lección volverás a trabajar con el
| conjunto de datos iris. Carga el conjunto de datos iris.

> data("iris")

| Keep up the great work!

  |=======================================                                                  |  44%
| Ahora prueba que el color por defecto ha sido cambiado a azul. Ingresa plot(iris) en la línea de
| comandos para verificar esto.

> plot(ris)
Error in plot(ris) : object 'ris' not found
> plot(iris)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Excellent work!

  |==========================================                                               |  47%
| Y si revisas nuevamente el valor de col usando par() encontrarás que ha sido establecido a azul
| ("blue"). Revisa el valor de col.

> par("col")
[1] "blue"

| You are really on a roll!

  |============================================                                             |  50%
| Cuando graficas el data frame iris usando plot(iris), los colores mostrados no dicen mucho
| acerca de las diferentes especies. Así que le puedes decir a R que grafique usando un color
| diferente por cada una de la especies usando col=iris$Species. Ingresa plot(iris,
| col=iris$Species) en la línea de comandos.

> plot(iris, col = iris$Species)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| That's correct!
  
  |===============================================                                          |  53%
| Para continuar es importante recordar los nombres de las columnas de iris. ¡Inténtalo!
  
  > colnames(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     

| Keep trying! Or, type info() for more options.

> info()

| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> skip()

| Entering the following correct answer for you...

> names(iris)
[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     

| You got it right!
  
  |==================================================                                       |  56%
| Comienza viendo las columnas Sepal.Length y Petal.Length. Otra vez especifica un color por
| especie. Ingresa plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species) en la línea de
| comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | That's correct!

  |=====================================================                                    |  59%
| Los puntos usados para graficar son difíciles de ver. Escoge otros diferentes.

...

  |========================================================                                 |  62%
| Un parámetro importante es el símbolo que se usa para graficar puntos; éstos se cambian usando
| el parámetro pch. Este parámetro puede recibir valores de dos maneras.

...

  |==========================================================                               |  66%
| Una manera es usando un código numérico, donde cada código numérico corresponde a un símbolo.
| Pruébalo usando pch=15. Ingresa par(pch=15) en la línea de comandos.

> par(pch=15)

| Your dedication is inspiring!

  |=============================================================                            |  69%
| El código numérico 15 representa cuadrados. Verifica el nuevo valor que estableciste. Ingresa
| plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species) en la línea de comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| You are really on a roll!

  |================================================================                         |  72%
| La otra manera es utilizando una cadena. Ingresa plot(iris$Sepal.Length, iris$Petal.Length, col
| = iris$Species, pch="A") en la línea de comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch="A")
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Great job!

  |===================================================================                      |  75%
| Como te podrás imaginar, cambiaste el valor del parámetro pch temporalmente, al haberlo
| modificado en la función de plot() y no por medio de la función par(). Si nuevamente graficas
| sin especificar pch, verás que el símbolo graficado nuevamente es un cuadrado. ¡Verifica esto!
| Ingresa plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species) en la línea de comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Keep working like that and you'll get there!
  
  |======================================================================                   |  78%
| Los códigos numéricos que puedes usar son los números del 0 al 25. Para conocer los símbolos
| disponibles ingresa plot(1:26, pch=0:25) en la línea de comandos.

> plot (1:26, pch=0:25)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | You got it!
  
  |========================================================================                 |  81%
| En particular a los símbolos del 21 al 25 les puedes cambiar el color de la orilla y el de
| relleno. Esto se hace usando los parámetros col y bg. Ingresa plot(iris$Sepal.Length,
                                                                     | iris$Petal.Length, col = iris$Species, pch = 21, bg = "blue") en la línea de comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, pch = 21, bg = "blue")
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Keep up the great work!
  
  |===========================================================================              |  84%
| También puedes cambiar el tamaño de los símbolos usando el argumento cex. Ingresa
| plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, cex = 2) en la línea de comandos.

> plot(iris$Sepal.Length, iris$Petal.Length, col = iris$Species, cex = 2)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Perseverance, that's the answer.

  |==============================================================================           |  88%
| Es difícil distinguir qué color pertenece a qué especie. Lo mejor sería hacer una leyenda. La
| función legend() puede ser usada para añadir leyendas a las gráficas. Ingresa legend(x = 4.5, y
| = 7, legend = levels(iris$Species), col = c(1:3), pch = 16) para añadir una leyenda.

> legend(x = 4.5, y = 7, legend = levels(iris$Species), col = c(1:3), pch =16)

| That's a job well done!
  
  |=================================================================================        |  91%
| Los parámetros ‘x’ y ‘y’ representan las coordenadas que serán usadas para la leyenda; legend
| representa a las cadenas que aparecerán en la leyenda; col indica el color de las líneas o
| símbolos que aparecerán en la leyenda; y pch indica los caracteres o símbolos que aparecerán en
| la leyenda.

...

|===================================================================================      |  94%
| Recuerda que todos los parámetros a los que modificaste su valor también los puedes cambiar
| directamente desde las funciones para graficar de alto nivel.

...

|======================================================================================   |  97%
| Por último, si deseas regresar a los valores de los parámetros por omisión que tenías en el
| sistema base, basta con llamar a la función par() pasándole como argumento el objeto donde
| guardaste los valores originales. Regresa a los valores originales usando la función par().

> par(par_orig)
Warning messages:
  1: In par(par_orig) : graphical parameter "cin" cannot be set
2: In par(par_orig) : graphical parameter "cra" cannot be set
3: In par(par_orig) : graphical parameter "csi" cannot be set
4: In par(par_orig) : graphical parameter "cxy" cannot be set
5: In par(par_orig) : graphical parameter "din" cannot be set
6: In par(par_orig) : graphical parameter "page" cannot be set

| You got it right!
  
  |=========================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta
| lección?
  
  1: Si
2: No

Selection: 1