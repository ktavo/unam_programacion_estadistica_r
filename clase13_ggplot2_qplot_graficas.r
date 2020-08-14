| Please choose a lesson, or type 0 to return to course menu.

1: Obtener Ayuda                                  2: Objetos Tipos de Datos y Operaciones Basicas   3: Subconjuntos de Datos                       
4: Leer y escribir Datos                          5: Funciones                                      6: Funciones apply                             
7: Graficacion                                    8: Parametros en el Sistema de Graficos           9: Colores en el Sistema de Graficos           
10: Graficacion con texto y notacion matematica   11: Creacion de Graficas en 3D                    12: Expresiones regulares                       
13: Graficacion con ggplot2                       14: Simulacion                                    

Selection: 13

| Attempting to load lesson dependencies...

| Package ‘ggplot2’ loaded correctly!
  
  |                                                                                                                                               |   0%

| ggplot2 es un sistema de graficación muy poderoso en R que te provee con gráficos de alto nivel.

...

|====                                                                                                                                           |   3%
| Este modelo de gráficos hace fácil la producción de gráficos complejos.

...

|========                                                                                                                                       |   6%
| No tendrás que preocuparte por las leyendas, los tipos de fuentes y demás detalles a diferencia de usar el paquete base, ya que ggplot2 trae valores
| por omisión.

...

|============                                                                                                                                   |   9%
| Ya que estos valores por omisión fueron cuidadosamente escogidos, lo que significa que la mayor parte del tiempo tú puedes producir gráficas de tan
| buena calidad que pueden utilizarse inmediatamente en publicaciones.

...

|================                                                                                                                               |  11%
| En esta práctica trabajarás con el conjunto de datos diamonds del paquete ggplot2, el cual contiene las medidas, información de calidad y precios de
| casi 54 000 diamantes.

...

|====================                                                                                                                           |  14%
| Para cargar el conjunto de datos diamonds ingresa data(diamonds) en la línea de comandos.

> data("diamonds")

| Excellent work!
  
  |=========================                                                                                                                      |  17%
| Ahora ve lo que contiene diamonds. Para hacer esto usarás la función View(). Si te encuentras en Rstudio simplemente puedes presionar el nombre de tu
| variable diamonds en el apartado Entorno ("Environment") y se mostrará su contenido. Presiona la variable diamonds en Rstudio o ingresa en la línea de
| comando: View(diamonds).

> force(diamonds)
# A tibble: 53,940 x 10
carat cut       color clarity depth table price     x     y     z
<dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
  1 0.23  Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
2 0.21  Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
3 0.23  Good      E     VS1      56.9    65   327  4.05  4.07  2.31
4 0.290 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
5 0.31  Good      J     SI2      63.3    58   335  4.34  4.35  2.75
6 0.24  Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
7 0.24  Very Good I     VVS1     62.3    57   336  3.95  3.98  2.47
8 0.26  Very Good H     SI1      61.9    55   337  4.07  4.11  2.53
9 0.22  Fair      E     VS2      65.1    61   337  3.87  3.78  2.49
10 0.23  Very Good H     VS1      59.4    61   338  4     4.05  2.39
# … with 53,930 more rows

| You're close...I can feel it! Try it again. Or, type info() for more options.

> View(diamonds)

| That's a job well done!
  
  |=============================                                                                                                                  |  20%
| carat representa el peso del diamante, cut representa la calidad del corte (Fair, Good, Very Good, Premium, Ideal), color representa el color
| del diamante, desde J (el peor) a D (el mejor), clarity es una medida de qué tan claro es el diamante (I1 (el peor), SI1, SI2, VS1, VS2, VVS1,
                                                                                                         | VVS2, IF (el mejor)).

...

|=================================                                                                                                              |  23%
| table indica la anchura de la parte superior del diamante con relación al punto más ancho, price representa el precio del diamante en dólares, x la
| longitud en milímetros, y la anchura en milímetros, z la profundidad en milímetros y depth el porcentaje de profundidad total, es decir, z / mean(x,
                                                                                                                                                    | y) = 2 * z / (x + y).

...

|=====================================                                                                                                          |  26%
| Dominar el paquete ggplot2 puede ser un reto, por lo que en este curso sólo verás la función qplot() (quick plot), la cual es una función auxiliar, ya
| que esconde mucha de su complejidad cuando crea gráficos estándares.

...

|=========================================                                                                                                      |  29%
| La función qplot() puede ser usada para crear los tipos de gráficas más comunes. Mientras que no expone las grandes capacidades de ggplot2, puede
| crear un gran rango de gráficas útiles.

...

|=============================================                                                                                                  |  31%
| Ingresa ?qplot para conocer más acerca de ella.

> ?qplot

| All that practice is paying off!
  
  |=================================================                                                                                              |  34%
| Puedes hacer desde histogramas. Ingresa qplot(color, data=diamonds) para crear un histograma de los colores.

> qplot(color, data = diamonds)

| You got it right!
  
  |=====================================================                                                                                          |  37%
| Hasta gráficas de dispersión. Ingresa qplot(carat, price, data=diamonds) en la línea de comandos.

> qplot(carat, price, data = diamonds)

| You are amazing!
  
  |=========================================================                                                                                      |  40%
| Puedes ver que hay mucha saturación por la gran cantidad de datos que hay al usar el dataset completo.

...

|=============================================================                                                                                  |  43%
| Existe cierta correlación para ser exponencial y hay ciertos lugares donde parecen hacerse estrías. Esto puedes tratar de compensarlo haciendo una transformación
| de las variables; es decir, en lugar de usar los valores lineales, podrías aplicar una transformación logarítmica y entonces estarías graficando los valores
| logarítmicos contra los valores logarítmicos de 'x' y 'y'. Ingresa qplot(log(carat), log(price), data=diamonds) en la línea de comandos para lograr esto.

> qplot(log(carat), log(price), data = diamonds)

| Your dedication is inspiring!
  
  |=================================================================                                                                              |  46%
| También puedes utilizar los argumentos como combinaciones de otros. Ingresa qplot(carat, x*y*z, data=diamonds) en la línea de comandos.

> qplot(carat, x*y*z, data = diamonds)

| That's correct!

  |=====================================================================                                                                          |  49%
| En ggplot2() puedes mapear alguna categoría que tenga una variable a un atributo estético, en este caso el atributo color de qplot(); por ejemplo, si utilizas
| diamonds puedes mapear la columna color que te indica el color del diamante a un color distinto en la gráfica. Ingresa qplot(carat, price, data=diamonds,
| color=color) en la línea de comandos.

> 
> qplot(carat, price, data = diamonds, color = color)

| You got it!

  |==========================================================================                                                                     |  51%
| Además del color otro atributo estético que tiene qplot() es shape; shape se refiere a la forma con la que va a pintar los puntos qplot(); en la gráfica por
| ejemplo shape también es muy bueno para poder mapear características categóricas a una característica gráfica.

...

  |==============================================================================                                                                 |  54%
| Puedes mapear cada uno de los cortes distintos de los diamantes que tienes a una figura distinta. Ingresa qplot(carat, price, data=diamonds, shape=cut) en la línea
| de comandos.

> qplot(carat, price, data = diamonds, chapse = cut)
Warning message:
Ignoring unknown parameters: chapse 

| Almost! Try again. Or, type info() for more options.

> qplot(carat, price, data = diamonds, shape = cut)
Warning message:
Using shapes for an ordinal variable is not advised 

| Keep working like that and you'll get there!
  
  |==================================================================================                                                             |  57%
| El atributo alpha de qplot() indica cuántos puntos se necesitan pintar o aparecer en un mismo lugar para que puedas pintar un punto completamente opaco. Ingresa
| qplot(carat, price, data=diamonds, alpha=I(1/10)) en la línea de comandos.

warning messages from top-level task callback 'mini'
Warning message:
  Using shapes for an ordinal variable is not advised 
> qplot(carat, price, data = diamonds, alpha = I(1/10))

| You got it right!
  
  |======================================================================================                                                         |  60%
| Con esto necesitarías 10 puntos en un mismo lugar para que se pinte un primer punto.

...

|==========================================================================================                                                     |  63%
| Nota cómo si cambias el alpha de un 1/10 a un 1/100 puedes encontrar nuevos patrones que no eran claros cuando usabas un alpha más grande. ¡Inténtalo!
  
  > qplot(carat, price, data = diamonds, alpha = I(1/100))

| You got it right!
  
  |==============================================================================================                                                 |  66%
| size, es un atributo que indica el tamaño, por lo que si usas size=table te pintará los puntos de diferente tamaño. Ingresa qplot(carat, price, data=diamonds,
                                                                                                                                    | size=table) en la línea de comandos.

> qplot(carat, price, data = diamonds, size = table)

| That's correct!

  |==================================================================================================                                             |  69%
| Debes de saber que algunas variables se mapean mejor a ciertos atributos estéticos; por ejemplo, color y shape se mapean mejor a variables categóricas, mientras
| que size se mapea mejor a variables de tipo continuo.

...

  |======================================================================================================                                         |  71%
| A veces la cantidad de datos puede hacer una gran diferencia y ya viste que puede usar alpha para cambiar la saturación mayor o menor dependiendo del número de
| puntos que tengas. Si esto no te ayuda entonces puedes tratar de subdividir los grupos de las variables que se forman en una sola variable con una técnica especial
| conocida como faceting.

...

  |==========================================================================================================                                     |  74%
| El atributo facets te permite crear una tabla donde puedes subdividir en grupos. Si quisieras ver cómo se comporta la variable carat contra la variable price y le
| pides que te haga el faceting por color, entonces por cada color de diamante te va graficando el carat contra el price (peso vs precio). Ingresa qplot(carat,
| price, data=diamonds, facets = color ~ .) en la línea de comandos.

> qplot(carat, price, data = diamonds, facets = color ~ .)

| Keep up the great work!

  |==============================================================================================================                                 |  77%
| Entonces puedes observar cómo se va comportando para cada uno de los colores de diamante. Esto te permite la comparación visual inmediata.

...

  |==================================================================================================================                             |  80%
| Por último, el atributo geom de qplot() especifica el tipo de objeto que utilizará para graficar. El valor por defecto es "point" (punto); esto sólo si ’x’ y ‘y’
| se encuentran especificados. Si sólo x se encuentra especificado el valor es "histogram" (histograma).

...

  |======================================================================================================================                         |  83%
| Un posible valor para geom es "smooth", el cual ajusta una curva a los puntos que estas especificando, además de que te dibuja el error estándar de esa curva.
| Ingresa qplot(carat, price, data=diamonds, geom = c("point", "smooth")) en la línea de comandos.

> qplot(carat, price, data = diamonds, geom = c("point", "smooth"))
`geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'
`geom_smooth()` using method = 'gam' and formula 'y ~ s(x, bs = "cs")'

| You're the best!
  
  |===========================================================================================================================                    |  86%
| Una característica de "smooth" es que puedes especificar el tipo de ajuste que quieres para la curva.

...

|===============================================================================================================================                |  89%
| Otro valor posible es "jitter", el cual permite analizar en cajas cómo se están dispersando los puntos, dependiendo de las variables que quieras observar. Ingresa
| qplot(color, price/carat, data=diamonds, geom = "jitter") en la línea de comandos.

> qplot(color, price/carat, data = diamonds, geom = "jitter")

| Your dedication is inspiring!
  
  |===================================================================================================================================            |  91%
| Si usas geom="boxplot" te graficará una gráfica de caja, donde puedes observar la distribución de tus datos por la categoría que quieras observar. Ingresa
| qplot(color, price/carat, data=diamonds, geom = "boxplot") en la línea de comandos.

> qplot(color, price/carat, data = diamonds, geom = "boxplot")

| You got it right!
  
  |=======================================================================================================================================        |  94%
| Otros dos valores importantes que puede tomar geom son "line" y "path".

...

|===========================================================================================================================================    |  97%
| Actualmente, ggplot2 no puede ser usado para crear gráficas 3D.

...

|===============================================================================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta lección?
  
  1: Si
2: No

Selection: 1