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

Selection: 7
|                                                                                         |   0%

| En esta lección conocerás el sistema base de graficación en R.

...

|=                                                                                        |   1%
| Si estás familiarizado con Microsoft Excel, encontrarás que R puede generar todas las gráficas
| con las que estás familiarizado: gráficas de pastel, gráficas de barras, etc. Además, hay muchos
| más tipos de gráficas disponibles en R.

...

|===                                                                                      |   3%
| Para empezar ve las gráficas básicas que se pueden producir. Ingresa demo(graphics) en la línea
| de comandos, y después presiona Enter para comenzar y para cambiar de gráfica. SI PRESENTAS
| ALGÚN ERROR ingresa ok() en la línea de comandos.

> demo(graphics)


demo(graphics)
---- ~~~~~~~~
  
  Type  <Return>	 to start : 
  
  > #  Copyright (C) 1997-2009 The R Core Team
  > 
  > require(datasets)

> require(grDevices); require(graphics)

> ## Here is some code which illustrates some of the differences between
  > ## R and S graphics capabilities.  Note that colors are generally specified
  > ## by a character string name (taken from the X11 rgb.txt file) and that line
  > ## textures are given similarly.  The parameter "bg" sets the background
  > ## parameter for the plot and there is also an "fg" parameter which sets
  > ## the foreground color.
  > 
  > 
  > x <- stats::rnorm(50)

> opar <- par(bg = "white")

> plot(x, ann = FALSE, type = "n")
Hit <Return> to see next plot: 
  
  > abline(h = 0, col = gray(.90))

> lines(x, col = "green4", lty = "dotted")

> points(x, bg = "limegreen", pch = 21)

> title(main = "Simple Use of Color In a Plot",
        +       xlab = "Just a Whisper of a Label",
        +       col.main = "blue", col.lab = gray(.8),
        +       cex.main = 1.2, cex.lab = 1.0, font.main = 4, font.lab = 3)

> ## A little color wheel.	 This code just plots equally spaced hues in
  > ## a pie chart.	If you have a cheap SVGA monitor (like me) you will
  > ## probably find that numerically equispaced does not mean visually
  > ## equispaced.  On my display at home, these colors tend to cluster at
  > ## the RGB primaries.  On the other hand on the SGI Indy at work the
  > ## effect is near perfect.
  > 
  > par(bg = "gray")

> pie(rep(1,24), col = rainbow(24), radius = 0.9)
Hit <Return> to see next plot: 
  
  > title(main = "A Sample Color Wheel", cex.main = 1.4, font.main = 3)

> title(xlab = "(Use this as a test of monitor linearity)",
        +       cex.lab = 0.8, font.lab = 3)

> ## We have already confessed to having these.  This is just showing off X11
  > ## color names (and the example (from the postscript manual) is pretty "cute".
  > 
  > pie.sales <- c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12)

> names(pie.sales) <- c("Blueberry", "Cherry",
                        + 		      "Apple", "Boston Cream", "Other", "Vanilla Cream")

> pie(pie.sales,
      +     col = c("purple","violetred1","green3","cornsilk","cyan","white"))
Hit <Return> to see next plot: 
  
  > title(main = "January Pie Sales", cex.main = 1.8, font.main = 1)

> title(xlab = "(Don't try this at home kids)", cex.lab = 0.8, font.lab = 3)

> ## Boxplots:  I couldn't resist the capability for filling the "box".
  > ## The use of color seems like a useful addition, it focuses attention
  > ## on the central bulk of the data.
  > 
  > par(bg="cornsilk")

> n <- 10

> g <- gl(n, 100, n*100)

> x <- rnorm(n*100) + sqrt(as.numeric(g))

> boxplot(split(x,g), col="lavender", notch=TRUE)
Hit <Return> to see next plot: 
  
  > title(main="Notched Boxplots", xlab="Group", font.main=4, font.lab=1)

> ## An example showing how to fill between curves.
  > 
  > par(bg="white")

> n <- 100

> x <- c(0,cumsum(rnorm(n)))

> y <- c(0,cumsum(rnorm(n)))

> xx <- c(0:n, n:0)

> yy <- c(x, rev(y))

> plot(xx, yy, type="n", xlab="Time", ylab="Distance")
Hit <Return> to see next plot: 
  
  > polygon(xx, yy, col="gray")

> title("Distance Between Brownian Motions")

> ## Colored plot margins, axis labels and titles.	 You do need to be
  > ## careful with these kinds of effects.	It's easy to go completely
  > ## over the top and you can end up with your lunch all over the keyboard.
  > ## On the other hand, my market research clients love it.
  > 
  > x <- c(0.00, 0.40, 0.86, 0.85, 0.69, 0.48, 0.54, 1.09, 1.11, 1.73, 2.05, 2.02)

> par(bg="lightgray")

> plot(x, type="n", axes=FALSE, ann=FALSE)
Hit <Return> to see next plot: 
  
  > usr <- par("usr")

> rect(usr[1], usr[3], usr[2], usr[4], col="cornsilk", border="black")

> lines(x, col="blue")

> points(x, pch=21, bg="lightcyan", cex=1.25)

> axis(2, col.axis="blue", las=1)

> axis(1, at=1:12, lab=month.abb, col.axis="blue")

> box()

> title(main= "The Level of Interest in R", font.main=4, col.main="red")

> title(xlab= "1996", col.lab="red")

> ## A filled histogram, showing how to change the font used for the
  > ## main title without changing the other annotation.
  > 
  > par(bg="cornsilk")

> x <- rnorm(1000)

> hist(x, xlim=range(-4, 4, x), col="lavender", main="")
Hit <Return> to see next plot: 
  
  > title(main="1000 Normal Random Variates", font.main=3)

> ## A scatterplot matrix
  > ## The good old Iris data (yet again)
  > 
  > pairs(iris[1:4], main="Edgar Anderson's Iris Data", font.main=4, pch=19)
Hit <Return> to see next plot: 
  
  > pairs(iris[1:4], main="Edgar Anderson's Iris Data", pch=21,
          +       bg = c("red", "green3", "blue")[unclass(iris$Species)])
Hit <Return> to see next plot: 
  
  > ## Contour plotting
  > ## This produces a topographic map of one of Auckland's many volcanic "peaks".
  > 
  > x <- 10*1:nrow(volcano)

> y <- 10*1:ncol(volcano)

> lev <- pretty(range(volcano), 10)

> par(bg = "lightcyan")

> pin <- par("pin")

> xdelta <- diff(range(x))

> ydelta <- diff(range(y))

> xscale <- pin[1]/xdelta

> yscale <- pin[2]/ydelta

> scale <- min(xscale, yscale)

> xadd <- 0.5*(pin[1]/scale - xdelta)

> yadd <- 0.5*(pin[2]/scale - ydelta)

> plot(numeric(0), numeric(0),
       +      xlim = range(x)+c(-1,1)*xadd, ylim = range(y)+c(-1,1)*yadd,
       +      type = "n", ann = FALSE)
Hit <Return> to see next plot: 
  
  > usr <- par("usr")

> rect(usr[1], usr[3], usr[2], usr[4], col="green3")

> contour(x, y, volcano, levels = lev, col="yellow", lty="solid", add=TRUE)

> box()

> title("A Topographic Map of Maunga Whau", font= 4)

> title(xlab = "Meters North", ylab = "Meters West", font= 3)

> mtext("10 Meter Contour Spacing", side=3, line=0.35, outer=FALSE,
        +       at = mean(par("usr")[1:2]), cex=0.7, font=3)

> ## Conditioning plots
  > 
  > par(bg="cornsilk")

> coplot(lat ~ long | depth, data = quakes, pch = 21, bg = "green3")
Hit <Return> to see next plot: 
  
  > par(opar)

Type  <Return>	 to start : 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Keep working like that and you'll get there!

  |====                                                                                     |   4%
| Como pudiste observar, R es muy bueno a la hora de graficar.

...

  |=====                                                                                    |   6%
| El sistema base de gráficos de R cuenta con tres tipos básicos de funciones: funciones de alto
| nivel, funciones de bajo nivel y funciones interactivas.

...

  |=======                                                                                  |   7%
| Las funciones de alto nivel generan gráficas preestablecidas.

...

  |========                                                                                 |   9%
| Las funciones de bajo nivel añaden información a un gráfico existente.

...

  |=========                                                                                |  10%
| Y las funciones interactivas te permiten de forma interactiva añadir información o extraer
| información de gráficos. Este curso sólo cubrirá las funciones de alto nivel y bajo nivel.

...

  |===========                                                                              |  12%
| Comienza explorando las funciones de alto nivel.

...

  |============                                                                             |  13%
| Las funciones de alto nivel están diseñadas para generar un gráfico a partir de la información
| pasada como argumentos de la función.

...

  |=============                                                                            |  15%
| La función plot() es una de las funciones de alto nivel más comúnmente usada.

...

  |===============                                                                          |  16%
| Comienza a jugar con ella. Ingresa plot(1:5) en la línea de comandos.

> plot(1:5)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| You're the best!
  
  |================                                                                         |  18%
| Al ingresar plot(1:5) has graficado cada elemento del vector 1:5 (1, 2, 3, 4, 5) contra la
| posición en dicho vector de cada elemento; es decir, graficaste los puntos (1, 1), (2, 2), (3,
                                                                                              | 3), (4, 4) y (5, 5).

...

|=================                                                                        |  19%
| Es importante saber que plot() es una función genérica, por lo que graficará dependiendo del
| objeto que le sea pasado como entrada.

...

|===================                                                                      |  21%
| Ve qué pasa si ahora introduces plot(c(1, 2, 3), c(4, 5, 6)) en la línea de comandos.

> plot(c(1,2,3), c(4,5,6))
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Perseverance, that's the answer.

  |====================                                                                     |  22%
| Como notarás, esta vez introdujiste dos vectores como entrada, cada uno con tres elementos.
| Entonces la gráfica fue construida tomando un elemento del primer vector (posición x) y un
| elemento del segundo vector (posición y) para construir cada punto, los cuales son: (1, 4), (2,
| 5) y (3, 6).

...

  |=====================                                                                    |  24%
| Conoce más del uso de plot(). Ingresa ?plot en la línea de comandos.

> ?plot

| You got it right!

  |=======================                                                                  |  25%
| Como ya te habrás dado cuenta plot() recibe dos argumentos principales.

...

  |========================                                                                 |  27%
| El primero, x, representa las coordenadas en el eje X de los puntos en la gráfica, o
| alternativamente una única estructura para graficar, una función o cualquier objeto de R que
| provea un método para graficar.

...

  |=========================                                                                |  28%
| El segundo, y, representa las coordenadas en el eje Y de los puntos de la gráfica. Pero este
| argumento es OPCIONAL, pues sólo es necesario si x no es una estructura apropiada.

...

  |===========================                                                              |  30%
| Y esto explica por qué puedes graficar si le pasas uno o dos vectores como entrada. En el primer
| caso (1:5) le envías una estructura apropiada; en el segundo le envías las coordenadas de los
| puntos en 'x' y 'y' por medio de dos vectores (c(1, 2, 3) y c(4, 5, 6)).

...

  |============================                                                             |  31%
| Además, plot() recibe '...' como argumento, pues no en todos los casos recibirá los mismos
| argumentos adicionales; esto se debe a que plot() es una función genérica.

...

  |=============================                                                            |  33%
| Pero la mayoría de las veces acepta los siguientes argumentos: type, main, sub, xlab, ylab y
| asp.

...

  |===============================                                                          |  34%
| type sirve para especificar qué tipo de gráfica debe trazar. Los valores que puede tomar son:
| "p" para puntos, "l" para líneas, "b" para ambas (líneas y punto), "c" para la parte de líneas
| que se muestra usando "b", "o" para ambas (líneas y puntos) ‘sobrepuestas’, "h" para
| ‘histograma’ como líneas verticales (o ‘alta densidad’), "s" para escalonado, "S" para otro tipo
| de escalonamiento y "n" para no graficar.

...

  |================================                                                         |  36%
| Como te habrás dado cuenta, cuando graficas plot(c(1, 2, 3), c(4, 5, 6)) el tipo de gráfica por
| defecto fue puntos. Ahora ingresa plot(c(1, 2, 3), c(4, 5, 6), type="l") en la línea de comandos
| para usar líneas.

> plot(c(1,2,3), c(4,5,6), type = "l")
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| All that practice is paying off!

  |=================================                                                        |  37%
| Ahora grafica el vector 6:10 de forma escalonada.

> plot(6:10, type = "s")
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| That's the answer I was looking for.

|===================================                                                      |  39%
| Para continuar grafica el vector 1:10 usando ambas (líneas y puntos).

> plot(1:10, type = "b")
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | You are doing so well!
  
  |====================================                                                     |  40%
| El argumento main establece el título de la gráfica. ¡Pruébalo! Introduce plot(1:5, main="Mi
| gráfica") en la línea de comandos.

> plot(1:5, main = "Mi gráfica")
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Great job!
  
  |=====================================                                                    |  42%
| Análogamente sub establece el subtítulo de la gráfica.

...

|=======================================                                                  |  43%
| El argumento xlab establece un título para el eje X de la gráfica. Análogamente ylab para el eje
| Y. Establece "x" como título del eje X y "y" como título del eje Y en la gráfica anterior.

> 
  > plot(1:5, main = "Mi gráfica", xlab = "x", ylab = "y")
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Keep up the great work!
  
  |========================================                                                 |  45%
| asp se refiere a la proporción x/y.

...

|=========================================                                                |  46%
| Algunas veces las funciones estándar para graficar no producirán exactamente el tipo de gráfica
| que deseas. En estos casos las funciones para graficar de bajo nivel pueden ser usadas para
| añadir información extra a la actual gráfica, como lo son puntos, líneas o texto.

...

|===========================================                                              |  48%
| Una de ellas es la función points(). Con la función points() tú puedes graficar puntos sobre una
| gráfica. Ingresa points(c(1, 5), c(4, 2), col="green") en la línea de comandos para graficar los
| puntos (1, 4) y (5, 2).

> points(c(1, 5), c(4, 2), col = "green")

| All that practice is paying off!
  
  |============================================                                             |  49%
| Como puedes notar, esto puede ser muy útil para añadir un conjunto adicional de puntos a una
| gráfica existente. Usualmente con un color diferente o un símbolo diferente.

...

|=============================================                                            |  51%
| La mayoría de los argumentos de la función plot() aplican para función points(), incluyendo 'x'
| y opcionalmente 'y'. Pero los argumentos más útiles son: col para especificar el color del borde
| para los puntos a graficar, bg para especificar el color de relleno de los puntos a graficar,
| pch para especificar el símbolo que se usará para graficar al punto.

...

|==============================================                                           |  52%
| Otra función muy útil es la función lines(). Ingresa lines(c(1, 4), c(2, 5), col="yellow") en la
| línea de comandos.

> lines(c(1, 4), c(2,5), col = "yellow")

| Nice work!
  
  |================================================                                         |  54%
| La función lines() grafica un conjunto de segmentos de línea sobre una gráfica existente. Al
| igual que la función points(), muchos argumentos de plot() aplican para lines(). Los valores de
| 'x' y 'y' especifican las intersecciones entre los segmentos de línea.

...

|=================================================                                        |  55%
| Para trazar una sola línea a través del área de la gráfica, puedes utilizar la función abline().
| Por lo general, se llama abline() para dibujar una sola línea. Por ejemplo, ingresa
| abline(h=3,col="red",lty=2) en la línea de comandos.

> abline = (h = 3, col = "red", lty = 2)
Error: unexpected ',' in "abline = (h = 3,"
In addition: Warning messages:
  1: In doTryCatch(return(expr), name, parentenv, handler) :
  display list redraw incomplete
2: In doTryCatch(return(expr), name, parentenv, handler) :
  invalid graphics state
3: In doTryCatch(return(expr), name, parentenv, handler) :
  invalid graphics state
> abline = (h=3,col="red",lty=2)
Error: unexpected ',' in "abline = (h=3,"
> abline(h=3,col="red",lty=2)

| You are doing so well!
  
  |==================================================                                       |  57%
| Como notarás, graficaste una línea horizontal en y=3. Para graficar una línea vertical en x=3,
| basta con ingresar abline(v=3,col="red",lty=2) en la línea de comandos.

...

|====================================================                                     |  58%
| También puedes especificar múltiples argumentos y abline() graficará las líneas especificadas.
| Por ejemplo, ingresa abline(h=1:5,v=1:5, col="purple") en la línea de comandos para graficar una
| cuadrícula de líneas entre 1 y 10.

> abline(h = 1:5, v = 1:5, col = "purple")

| All that practice is paying off!
  
  |=====================================================                                    |  60%
| Aunque si deseas graficar una cuadrícula en tu gráfica, es mejor que uses la función grid().

...

|======================================================                                   |  61%
| Hasta ahora sólo has trabajado con datos ficticios. Para hacer esto más interesante trabajarás
| con datos reales a partir de este momento.

...

|========================================================                                 |  63%
| Usarás el famoso conjunto de datos iris, el cual contiene las medidas en centímetros de longitud
| y ancho de ambos sépalo y pétalo de tres especies de iris (setosa, versicolor y virginica) con
| 50 ejemplares cada una.

...

|=========================================================                                |  64%
| Para cargar el conjunto de datos iris, ingresa data("iris") en la línea de comandos.

> data("iris")

| All that hard work is paying off!
  
  |==========================================================                               |  66%
| Como notarás, el objeto iris fue cargado. Averigua qué tipo de objeto es iris.

> class(iris)
[1] "data.frame"

| That's the answer I was looking for.

  |============================================================                             |  67%
| Como verás, iris es un data frame. Ingresa head(iris) en la línea de comandos para ver las
| primeras seis líneas de contenido de iris.

> head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa

| Your dedication is inspiring!

  |=============================================================                            |  69%
| Sepal.Length y Sepal.Width representan la longitud y ancho del sépalo respectivamente.
| Petal.Length y Petal.Width representan la longitud y ancho del pétalo. Species representa a la
| especie (setosa, versicolor y virginica).

...

  |==============================================================                           |  70%
| Como ya sabes, plot() es una función genérica, por lo que también puedes pedirle que te grafique
| un data frame completo. Por ejemplo, iris; ingresa plot(iris) en la línea de comandos.

> plot(iris)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| You got it right!

  |================================================================                         |  72%
| O bien, puedes tomar columnas y graficarla. Ingresa plot(iris$Petal.Length, iris$Petal.Width) en
| la línea de comandos.

> plot(iris$Petal.Length, iris$Petal.Width)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Keep up the great work!

  |=================================================================                        |  73%
| Pero no es necesario graficar pares de puntos.

...

  |==================================================================                       |  75%
| Un histograma es una representación visual de la distribución de un conjunto de datos.

...

  |====================================================================                     |  76%
| Ahora usa la función hist() para graficar un histograma de las longitudes de los pétalos.
| Ingresa hist(iris$Petal.Length, col="red") en la línea de comandos.

> hist(iris$Petal.Length, col = "red")
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Keep working like that and you'll get there!
  
  |=====================================================================                    |  78%
| La función hist() es una función de alto nivel y recibe un vector de valores numéricos y grafica
| un histograma. Un histograma consiste de un eje X y un eje Y, y varias barras de diferentes
| tamaños. La altura del eje Y te muestra la frecuencia con la que aparecen los valores del eje X
| en el conjunto de datos.

...

|======================================================================                   |  79%
| La forma de un histograma es una de sus características más importantes, pues te permite ver
| relativamente donde se encuentra sitiada la mayor y menor cantidad de información. Esto te
| permite encontrar valores atípicos.

...

|========================================================================                 |  81%
| En caso de que no quieras que te grafique frecuencias puedes usar el parámetro freq = FALSE para
| que grafique probabilidades. Ingresa hist(iris$Petal.Length, col="red", freq=FALSE) en la línea
| de comandos.

> hist(iris$Petal.Length, col = "red", freq = FALSE)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Keep up the great work!
  
  |=========================================================================                |  82%
| También es posible cambiar el número de celdas del histograma. Para eso usa el argumento breaks.
| Dependiendo del número de celdas especificadas el gráfico puede ser de una forma u otra. Ingresa
| hist(iris$Petal.Length, col="red", breaks=5) en la línea de comandos.

> hist(iris$Petal.Length, col = "red", breaks = 5)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Perseverance, that's the answer.

  |==========================================================================               |  84%
| Además de histogramas existen las gráficas de caja.

...

  |============================================================================             |  85%
| La función boxplots(), también de alto nivel, genera gráficas de caja. Una gráfica de caja es
| una forma compacta para mostrar la distribución de una variable. La caja muestra el rango
| intercuartil.

...

  |=============================================================================            |  87%
| Ahora ingresa ?boxplot en la línea de comandos para conocer el uso de la función boxplot().

> ?boxplot

| You're the best!
  
  |==============================================================================           |  88%
| Como ya habrás notado, boxplot() además recibe un argumento 'formula', el cual generalmente es
| una expresión con una tilde (~), la cual indica la relación entre las variables de entrada. Eso
| te permite dar como fórmula algo como Sepal.Width ~ Species para graficar la relación entre el
| ancho del sépalo y la especie.

...

|================================================================================         |  90%
| Ingresa boxplot(Sepal.Width ~ Species, data=iris, col=2:4) en la línea de comandos.

> boxplot(Sepal.Width ~ Species, data = iris, col = 2:4)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | You got it right!
  
  |=================================================================================        |  91%
| boxplot() te generó por cada especie (setosa, versicolor y virginica) los valores de dispersión
| de los anchos del sépalo. La gráfica te muestra que el ancho del sépalo de la especie setosa es
| mucho mayor que el de las demás especies.

...

|==================================================================================       |  93%
| boxplot() puede ser usado para crear gráficas de caja para variables individuales o para
| variables por grupo.

...

|====================================================================================     |  94%
| Al igual que con hist() puedes usar los mismos argumentos que usaste en plot() para añadir
| títulos (título, subtítulo, eje x, eje y).

...

|=====================================================================================    |  96%
| Además, existen las gráficas de pastel.

...

|======================================================================================   |  97%
| Las gŕaficas de pastel no son recomendadas ya que sus características son algo limitadas. Los
| autores recomiendan usar gráficas de barras o de puntos en vez de gráficas de pastel, debido a
| que las personas son capaces de juzgar longitudes con mayor precisión que volúmenes.

...

|======================================================================================== |  99%
| Las gráficas de pastel son creadas con la función pie(x, labels=), donde x es un vector numérico
| positivo indicando el área de las rebanadas y labels es un vector que indica el nombre de cada
| rebanada. Ingresa pie(c(50, 50, 50), labels=levels(iris$Species)) en la línea de comandos.

> pie(c(50,50,50), labels = levels(iris$Species))
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | That's the answer I was looking for.

  |=========================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta
| lección?

1: No
2: Si

Selection: 2