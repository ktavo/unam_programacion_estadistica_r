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

Selection: 10
|                                                                                         |   0%

| En esta lección conocerás cómo utilizar notación matemática en R.

...

|===                                                                                      |   4%
| Antes de comenzar con notación matemática es importante que sepas que existe la función text().

...

|======                                                                                   |   7%
| La función text() dibuja cadenas sobre gráficas. Para probar la función text(), crea una gráfica
| vacía de tamaño 20x20. Ingresa plot(1:20, type="n") en la línea de comandos.

> plot(1:20, type = "n")
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Keep up the great work!
  
  |==========                                                                               |  11%
| Ahora ingresa text(5, 5, "¡Hola Mundo!") en la línea de comandos para probar la función text().

> text(5, 5, "Hola Mundo!")

| Keep trying! Or, type info() for more options.

> 
  > text(5, 5, "¡Hola Mundo!")

| Nice work!
  
  |=============                                                                            |  14%
| Con esto graficaste la cadena "¡Hola Mundo!" en las coordenadas (5, 5). Para conocer más acerca
| de text() ve su página de ayuda.

> 
  > ?tesxt()
Error in .helpForCall(topicExpr, parent.frame()) : 
  no methods for ‘tesxt’ and no documentation for it as a function
> ?tesxt
No documentation for ‘tesxt’ in specified packages and libraries:
  you could try ‘??tesxt’

| Not quite right, but keep trying. Or, type info() for more options.

| Ingresa ?text en la línea de comandos.

> ?text

| You are doing so well!
  
  |================                                                                         |  18%
| La función text() dibuja las cadenas dadas por el argumento labels en las coordenadas x y y.

...

|===================                                                                      |  21%
| Muchos parámetros controlan el aspecto en que los textos son mostrados en la gráfica.

...

|======================                                                                   |  25%
| Si deseas cambiar el tamaño de los textos producidos por la función text(), puedes usar el
| argumento cex de la función text(), el cual especifica un factor de escala por defecto para el
| texto. Pruébalo. Ingresa text(11, 11, "¡Hola Mundo! x2", cex=2) en la línea de comandos.

> text(11, 11, "¡Hola Mundo! x2", cex = 2)

| That's correct!

  |=========================                                                                |  29%
| Otro aspecto importante son los tipos de fuentes que puedes usar. Una manera simple para cambiar
| los tipos de fuentes es usando el parámetro family. Ingresa text(7, 7, "¡Hola Mundo con Serif!",
| family="serif") en la línea de comandos.

> text(7, 7, "¡Hola Mundo con Serif!", family = "serif")

| You are amazing!

  |=============================                                                            |  32%
| Los valores comunes usados para el argumento family son "serif", "sans", "mono" y "symbol".
| Ahora prueba la fuente "mono". Ingresa text(9, 9, "¡Hola Mundo con Mono!", family="mono") en la
| línea de comandos.

> text(9, 9, "¡Hola Mundo con Mono!", family = "mono")

| Keep up the great work!

  |================================                                                         |  36%
| Ahora ingresa text(13, 13, "¡Hola Mundo con Sans!", family="sans") en la línea de comandos.

> text(13, 13, "¡Hola Mundo con Sans!", family = "sans")

| That's correct!
  
  |===================================                                                      |  39%
| Notarás que la fuente por defecto es "sans".

...

|======================================                                                   |  43%
| Volviendo a la notación matemática...

...

|=========================================                                                |  46%
| Muchas veces necesitarás etiquetas o títulos donde tengas que utilizar notación matemática; es
| decir, que tengas que hacer uso de símbolos y/o expresiones matemáticas.

...

|============================================                                             |  50%
| Ingresa demo(plotmath) para ver un ejemplo de expresiones matemáticas que puedes usar en R.

> demo(plotmath)


demo(plotmath)
---- ~~~~~~~~
  
  Type  <Return>	 to start : 
  
  > #  Copyright (C) 2002-2016 The R Core Team
  > 
  > require(datasets)

> require(grDevices); require(graphics)

> ## --- "math annotation" in plots :
  > 
  > ######
> # create tables of mathematical annotation functionality
  > ######
> make.table <- function(nr, nc) {
  +     savepar <- par(mar=rep(0, 4), pty="s")
  +     plot(c(0, nc*2 + 1), c(0, -(nr + 1)),
             +          type="n", xlab="", ylab="", axes=FALSE)
  +     savepar
  + }

> get.r <- function(i, nr) {
  +     i %% nr + 1
  + }

> get.c <- function(i, nr) {
  +     i %/% nr + 1
  + }

> draw.title.cell <- function(title, i, nr) {
  +     r <- get.r(i, nr)
  +     c <- get.c(i, nr)
  +     text(2*c - .5, -r, title)
  +     rect((2*(c - 1) + .5), -(r - .5), (2*c + .5), -(r + .5))
  + }

> draw.plotmath.cell <- function(expr, i, nr, string = NULL) {
  +     r <- get.r(i, nr)
  +     c <- get.c(i, nr)
  +     if (is.null(string)) {
    +         string <- deparse(expr)
    +         string <- substr(string, 12, nchar(string) - 1)
    +     }
  +     text((2*(c - 1) + 1), -r, string, col="grey50")
  +     text((2*c), -r, expr, adj=c(.5,.5))
  +     rect((2*(c - 1) + .5), -(r - .5), (2*c + .5), -(r + .5), border="grey")
  + }

> nr <- 20

> nc <- 2

> oldpar <- make.table(nr, nc)
Hit <Return> to see next plot: 
  
  > i <- 0

> draw.title.cell("Arithmetic Operators", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x + y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x - y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x * y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x / y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %+-% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %/% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %*% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %.% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(-x), i, nr); i <- i + 1

> draw.plotmath.cell(expression(+x), i, nr); i <- i + 1

> draw.title.cell("Sub/Superscripts", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x[i]), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x^2), i, nr); i <- i + 1

> draw.title.cell("Juxtaposition", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x * y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(paste(x, y, z)), i, nr); i <- i + 1

> draw.title.cell("Radicals", i, nr); i <- i + 1

> draw.plotmath.cell(expression(sqrt(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(sqrt(x, y)), i, nr); i <- i + 1

> draw.title.cell("Lists", i, nr); i <- i + 1

> draw.plotmath.cell(expression(list(x, y, z)), i, nr); i <- i + 1

> draw.title.cell("Relations", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x == y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x != y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x < y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x <= y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x > y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x >= y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %~~% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %=~% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %==% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %prop% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %~% y), i, nr); i <- i + 1

> draw.title.cell("Typeface", i, nr); i <- i + 1

> draw.plotmath.cell(expression(plain(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(italic(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(bold(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(bolditalic(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(underline(x)), i, nr); i <- i + 1

> # Need fewer, wider columns for ellipsis ...
  > nr <- 20

> nc <- 2

> make.table(nr, nc)
Hit <Return> to see next plot: 
  $mar
[1] 0 0 0 0

$pty
[1] "s"


> i <- 0

> draw.title.cell("Ellipsis", i, nr); i <- i + 1

> draw.plotmath.cell(expression(list(x[1], ..., x[n])), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x[1] + ... + x[n]), i, nr); i <- i + 1

> draw.plotmath.cell(expression(list(x[1], cdots, x[n])), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x[1] + ldots + x[n]), i, nr); i <- i + 1

> draw.title.cell("Set Relations", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %subset% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %subseteq% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %supset% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %supseteq% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %notsubset% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %in% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %notin% y), i, nr); i <- i + 1

> draw.title.cell("Accents", i, nr); i <- i + 1

> draw.plotmath.cell(expression(hat(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(tilde(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(ring(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(bar(xy)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(widehat(xy)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(widetilde(xy)), i, nr); i <- i + 1

> draw.title.cell("Arrows", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %<->% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %->% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %<-% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %up% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %down% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %<=>% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %=>% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %<=% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %dblup% y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x %dbldown% y), i, nr); i <- i + 1

> draw.title.cell("Symbolic Names", i, nr); i <- i + 1

> draw.plotmath.cell(expression(Alpha - Omega), i, nr); i <- i + 1

> draw.plotmath.cell(expression(alpha - omega), i, nr); i <- i + 1

> draw.plotmath.cell(expression(phi1 + sigma1), i, nr); i <- i + 1

> draw.plotmath.cell(expression(Upsilon1), i, nr); i <- i + 1

> draw.plotmath.cell(expression(infinity), i, nr); i <- i + 1

> draw.plotmath.cell(expression(32 * degree), i, nr); i <- i + 1

> draw.plotmath.cell(expression(60 * minute), i, nr); i <- i + 1

> draw.plotmath.cell(expression(30 * second), i, nr); i <- i + 1

> # Need even fewer, wider columns for typeface and style ...
  > nr <- 20

> nc <- 1

> make.table(nr, nc)
Hit <Return> to see next plot: 
  $mar
[1] 0 0 0 0

$pty
[1] "s"


> i <- 0

> draw.title.cell("Style", i, nr); i <- i + 1

> draw.plotmath.cell(expression(displaystyle(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(textstyle(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(scriptstyle(x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(scriptscriptstyle(x)), i, nr); i <- i + 1

> draw.title.cell("Spacing", i, nr); i <- i + 1

> draw.plotmath.cell(expression(x ~~ y), i, nr); i <- i + 1

> # Need fewer, taller rows for fractions ...
  > # cheat a bit to save pages
  > par(new = TRUE)

> nr <- 10

> nc <- 1

> make.table(nr, nc)
$mar
[1] 0 0 0 0

$pty
[1] "s"


> i <- 4

> draw.plotmath.cell(expression(x + phantom(0) + y), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x + over(1, phantom(0))), i, nr); i <- i + 1

> draw.title.cell("Fractions", i, nr); i <- i + 1

> draw.plotmath.cell(expression(frac(x, y)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(over(x, y)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(atop(x, y)), i, nr); i <- i + 1

> # Need fewer, taller rows and fewer, wider columns for big operators ...
  > nr <- 10

> nc <- 1

> make.table(nr, nc)
Hit <Return> to see next plot: 
  $mar
[1] 0 0 0 0

$pty
[1] "s"


> i <- 0

> draw.title.cell("Big Operators", i, nr); i <- i + 1

> draw.plotmath.cell(expression(sum(x[i], i=1, n)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(prod(plain(P)(X == x), x)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(integral(f(x) * dx, a, b)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(union(A[i], i==1, n)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(intersect(A[i], i==1, n)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(lim(f(x), x %->% 0)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(min(g(x), x >= 0)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(inf(S)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(sup(S)), i, nr); i <- i + 1

> nr <- 11

> make.table(nr, nc)
Hit <Return> to see next plot: 
  $mar
[1] 0 0 0 0

$pty
[1] "s"


> i <- 0

> draw.title.cell("Grouping", i, nr); i <- i + 1

> # Those involving '{ . }' have to be done "by hand"
  > draw.plotmath.cell(expression({}(x , y)), i, nr, string="{}(x, y)"); i <- i + 1

> draw.plotmath.cell(expression((x + y)*z), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x^y + z),   i, nr); i <- i + 1

> draw.plotmath.cell(expression(x^(y + z)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(x^{y + z}), i, nr, string="x^{y + z}"); i <- i + 1

> draw.plotmath.cell(expression(group("(", list(a, b), "]")), i, nr); i <- i + 1

> draw.plotmath.cell(expression(bgroup("(", atop(x, y), ")")), i, nr); i <- i + 1

> draw.plotmath.cell(expression(group(lceil, x, rceil)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(group(lfloor, x, rfloor)), i, nr); i <- i + 1

> draw.plotmath.cell(expression(group("|", x, "|")), i, nr); i <- i + 1

> par(oldpar)

Type  <Return>	 to start : 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | All that practice is paying off!
  
  |================================================                                         |  54%
| Las columnas de texto gris muestran las expresiones en R, y la columna de texto negra
| muestra cómo se verán.

...

|===================================================                                      |  57%
| Para generar estos símbolos matemáticos, en R puedes utilizar la función expression(). La
| función expression() recibe como argumento una expresión como las que viste en color
| gris. Pruébalo. Ingresa plot(1:10, type="n", main=expression(alpha + beta)) en la línea
| de comandos.

> plot(1:10 type = "n", main = expression(alpha + beta))
Error: unexpected symbol in "plot(1:10 type"
> plot(1:10, type = "n", main = expression(alpha + beta))
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | That's a job well done!

  |======================================================                                   |  61%
| Además, puedes combinar expression() con la función paste() para poder tener texto y
| símbolos en una misma sentencia. Ingresa plot(1:10, type="n", xlab =
| expression(paste("Valores de ", x^phi1))) en la línea de comandos.

> plot(1:10, type = "n", xlab = expression(paste("Valores de ", x^phi1)))
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| You're the best!
  
  |=========================================================                                |  64%
| Si deseas revisar la lista de expresiones disponibles, ingresa ?plotmath en la línea de
| comandos.

> ?plotmath

| That's a job well done!

  |============================================================                             |  68%
| Además, puedes utilizar la función substitute() que te permitirá obtener el valor de una
| variable u objeto en R; esto lo podrás usar dentro de una función paste() para generar
| una expresión.

...

  |================================================================                         |  71%
| Para mostrar su uso, ingresa t <- 10 en la línea de comandos.

> t <- 10

| Nice work!

  |===================================================================                      |  75%
| Y ahora ingresa plot(1:t, main=substitute(paste("La gráfica del vector 1:", x),
| list(x=t))) en la línea de comandos.

> plot(1:t, main = substitute(paste("La gráfica del vector 1:", x), list(x = t)))
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| You got it!

  |======================================================================                   |  79%
| Observa el título de la gráfica: "La gráfica del vector 1:10".

...

  |=========================================================================                |  82%
| Si ahora cambias el valor de t, ingresa t <- 20 en la línea de comandos.

> t <- 20

| You got it right!

  |============================================================================             |  86%
| Y nuevamente grafica plot(1:t, main=substitute(paste("La gráfica del vector 1:", x),
| list(x=t))); cambiará el título de la gráfica. ¡Pruébalo!

> plot(1:t, main = substitute(paste("La gráfica del vector 1:", x), list(x = t)))
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| All that practice is paying off!

  |===============================================================================          |  89%
| Notaras que el título cambio.

...

  |===================================================================================      |  93%
| Esto es muy útil si quieres obtener gráficas donde alguno de los parámetros es diferente;
| así puedes generar múltiples gráficas con distintos parámetros y las etiquetas de éstos
| pueden ir cambiando de acuerdo a los parámetros.

...

  |======================================================================================   |  96%
| Para conocer más acerca de la función substitute() ingresa ?substitute en la línea de
| comandos.

> ?substitute

| You are doing so well!

  |=========================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado
| esta lección?

1: No
2: Si

Selection: 2