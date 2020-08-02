| Please choose a lesson, or type 0 to return to course menu.

1: Obtener Ayuda                                  2: Objetos Tipos de Datos y Operaciones Basicas
3: Subconjuntos de Datos                          4: Leer y escribir Datos                       
5: Funciones                                      6: Funciones apply                             
7: Graficacion                                    8: Parametros en el Sistema de Graficos        
9: Colores en el Sistema de Graficos             10: Graficacion con texto y notacion matematica 
11: Creacion de Graficas en 3D                    12: Expresiones regulares                       
13: Graficacion con ggplot2                       14: Simulacion                                  


Selection: 11

| Attempting to load lesson dependencies...

| This lesson requires the ‘rgl’ package. Would you like me to install it for you now?
  
  1: Yes
2: No

Selection: 1

| Trying to install package ‘rgl’ now...

| Package ‘rgl’ loaded correctly!
  
  |                                                                                                                 |   0%

| En esta lección verás cómo crear gráficas en 3D.

...

|=====                                                                                                            |   4%
| Este tipo de gráficas no están implementadas en el sistema de base, por lo que usarás rgl.

...

|=========                                                                                                        |   8%
| Para ejemplificar esta práctica continuarás usando el conjunto de datos iris. Carga el conjunto de datos iris.

> data("iris")

| Excellent job!
  
  |==============                                                                                                   |  12%
| Usa head(iris) para ver las primeras seis líneas de contenido de iris.

> head(iris)
Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa

| That's a job well done!

  |===================                                                                                              |  17%
| Con esto recordarás que el conjunto de datos de iris contiene las medidas de longitud y anchura del sépalo y pétalo,
| respectivamente, por 50 flores de cada una de las tres especies de iris. Las especies de iris son: setosa, versicolor y
| virginica.

...

  |========================                                                                                         |  21%
| Ingresa x <- iris$Sepal.Length en la línea de comandos para guardar la columna que contiene las longitudes de sépalo de
| las muestras en la variable x.

> x <-iris$Sepal.Length

| Excellent job!

  |============================                                                                                     |  25%
| Repite el proceso anterior, pero guarda en la variable y, la columna que contiene las longitudes de pétalo.

> y <- iris$Petal.Length

| Great job!

  |=================================                                                                                |  29%
| Nuevamente repite el proceso, pero ahora guarda en la variable z la columna que contiene las anchuras de sépalo.

> z <- iris$Sepal.Width

| You are amazing!

  |======================================                                                                           |  33%
| Bien; ahora puedes continuar...

...

  |==========================================                                                                       |  38%
| rgl es un paquete de gráficos 3D que produce gráficas interactivas en 3D en tiempo real. Permite rotar de forma
| interactiva, ampliar los gráficos, etc. Ingresa ?rgl en la línea de comandos para conocer un poco más del paquete rgl.

> ?rgl

| Keep up the great work!

  |===============================================                                                                  |  42%
| rgl incluye una interfaz de nivel superior llamada r3d. Esta interfaz está diseñada para actuar como los gráficos
| clásicos 2D de R.

...

  |====================================================                                                             |  46%
| Para inicializar la interfaz 3D usa la función open3d(). La función open3d() intenta abrir una nueva ventana RGL,
| utilizando los valores predeterminados especificados por el usuario. Ingresa open3d() en la línea de comandos.

> open3d()
glX 
  1 
Warning message:
In par3d(userMatrix = c(1, 0, 0, 0, 0, 0.342020143325668, -0.939692620785909,  :
  font family "sans" not found, using "bitmap"

| You're the best!
  
  |========================================================                                                         |  50%
| Ahora puedes utilizar la función plot3d(); ésta funciona de manera similar a la función plot() del sistema base de R. En
| este caso, como es en tres dimensiones, recibe una tripleta de valores, 'x', 'y', 'z', y una vez recibida esta tripleta
| dibuja el punto que deseas visualizar.

...

|=============================================================                                                    |  54%
| Ingresa plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width) en la línea de comandos.

> plot3d((iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width))
Error: unexpected ',' in "plot3d((iris$Sepal.Length,"
> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width)

| You are doing so well!
  
  |==================================================================                                               |  58%
| Al igual que con la función plot(), la gráfica fue construida tomando un elemento de cada vector; es decir, para
| construir cada punto plot3d() tomo un elemento del primer vector (posición x), un elemento del segundo vector (posición
                                                                                                                 | y) y un elemento del tercer vector (posición z).

...

|=======================================================================                                          |  62%
| Notarás que algunos valores por defecto son el tipo de gráfica (puntos) y el color negro.

...

|===========================================================================                                      |  67%
| Al igual que con plot() puedes especificar el tipo de gráfica usando el parámetro type. Ingresa
| plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s") en la línea de comandos.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s")

| You're the best!

  |================================================================================                                 |  71%
| Los tipos soportados son 'p' para puntos, 's' para esferas, 'l' para líneas, 'h' para segmentos de línea con z = 0, y
| 'n' para nada.

...

  |=====================================================================================                            |  75%
| Asimismo, puedes especificar el color usado para graficar a los elementos usando el parámetro col. Ingresa
| plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s", col=rainbow(150)) en la línea de comandos.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = rainbow(150))

| All that practice is paying off!

  |=========================================================================================                        |  79%
| Algo que debes saber es que si deseas graficar elemento por especie no podrás enviarle al parámetro col iris$Species
| como lo habías estado haciendo con la función plot(). Esta vez tendrás que tratar a iris$Species como enteros. Para
| hacer esto ingresa plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="s",
| col=as.integer(iris$Species)) en la línea de comandos.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = as-integer(iris$Species))
Error in integer(iris$Species) : invalid 'length' argument
> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = as.integer(iris$Species))

| You got it right!

  |==============================================================================================                   |  83%
| A diferencia de la función plot() donde si querías cambiar el tamaño del elemento graficado usabas el parámetro cex, en
| plot3d() si deseas cambiar el tamaño de las esferas debes usar el parámetro radius. Ingresa plot3d(iris$Sepal.Length,
| iris$Petal.Length, iris$Sepal.Width, type="s", col=as.integer(iris$Species), radius=1.5) en la linea de comandos.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = as.integer(iris$Species), radius = 1.5)

| Great job!

  |===================================================================================================              |  88%
| Si graficas líneas o puntos y deseas cambiar su tamaño, el parámetro radius no te servirá. Para cambiar el tamaño de las
| líneas plot3d() usa el parámetro lwd y size para cambiar el de los puntos.

...

  |========================================================================================================         |  92%
| Al igual que con la función plot(), usando plot3d() puedes cambiar el título de los ejes usando xlab, ylab y zlab.
| Ingresa plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type="l", col=as.integer(iris$Species), xlab
| ="Sepal.Length", ylab = "Petal.Length", zlab = "Sepal.Width") en la línea de comandos.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = as.integer(iris$Species), radius = 0.5)

| One more time. You can do it! Or, type info() for more options.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "s", col = as.integer(iris$Species), xlab = "Sepal.Length", ylab = "Petal.Length", zlab = "Sepal.Width")

| Try again. Getting it right on the first try is boring anyway! Or, type info() for more options.

> plot3d(iris$Sepal.Length, iris$Petal.Length, iris$Sepal.Width, type = "l", col = as.integer(iris$Species), xlab = "Sepal.Length", ylab = "Petal.Length", zlab = "Sepal.Width")

| Keep up the great work!

  |============================================================================================================     |  96%
| Para conocer más opciones de la función plot3d(), ve su página de ayuda.

> help(rgl)

| Not quite right, but keep trying. Or, type info() for more options.

> help("plot3d")

| Great job!

  |=================================================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta lección?

1: Si
2: No

Selection: 1