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

Selection: 5
|                                                                                |   0%

| En esta lección conocerás las funciones del lenguaje R.

...

|==                                                                              |   3%
| En R las operaciones que hacen todo el trabajo son llamadas funciones.

...

|=====                                                                           |   6%
| Una función es un objeto en R, que puede tomar como entrada algunos objetos (llamados
                                                                               | argumentos de función) y puede regresar un objeto de salida.

...

|========                                                                        |   9%
| Las mayoría de las funciones son de la siguiente forma: f(argumento_1, argumento_2,
                                                            | ...). Donde f es el nombre de la función y argumento_1, argumento_2, ... son argumentos
| para la función.

...

|==========                                                                      |  12%
| Has usado alguna función anteriormente, ya que no se puede hacer nada interesante sin
| ellas. Todo el trabajo en R es hecho por funciones.

...

|============                                                                    |  16%
| Una función que has estado usando a lo largo del curso es la función c(), la cual crea
| un vector de los elementos que le sean pasados como argumentos. Por ejemplo introduce
| c(1, 03, 2016) en la línea de comandos.

> c(1, 03, 2016)
[1]    1    3 2016

| You got it right!
  
  |===============                                                                 |  19%
| La mayoría de las funciones en R regresan un valor; este valor puede ser calculado con
| base en el ambiente de la computadora o con base en la entrada (argumentos), como en
| este caso, en donde el valor regresado es el vector que contiene a 1, 3 y 2016.

...

|==================                                                              |  22%
| Cada inicialización de variables en R, operaciones aritméticas, hasta repetir código en
| un loop, puede ser escrita como una función.

...

|====================                                                            |  25%
| Las funciones son creadas usando la función especial function() y una vez creadas son
| guardadas como objetos de R de clase tipo function.

...

|======================                                                          |  28%
| En la siguiente pregunta se te pedirá que modifiques un script. Las instrucciones de lo
| que debes hacer se encontrarán en el script. Una vez que hayas acabado de modificar el
| script, guarda tus cambios e ingresa submit() en la línea de comandos y así el script
| será evaluado. Si después de hacer esto la línea de comandos te dice que lo vuelvas a
| intentar y el script nuevamente aparece, esto se debe a que debes corregir tu script,
| siéntete libre de hacerlo, solo no olvides ingresar submit() cada vez que guardes tus
| cambios.

...

|=========================                                                       |  31%
| Generalmente el cuerpo de la función es encerrado entre llaves {}, pero no es necesario
| si el cuerpo es una simple expresión. Por ejemplo, la expresión sucesor <- function(x)
  | x+1 es equivalente a la que se encuentra en el script.

> submit()

| Sourcing your script...


| Your dedication is inspiring!
  
  |============================                                                    |  34%
| ¡Ahora que has creado tu primera función ¡pruébala! Ingresa sucesor(5) en la línea de comandos. Si tu función funciona, debería de regresar
| únicamente el valor 6.

> sucesor(5)
[1] 6

| You got it!
  
  |==============================                                                  |  38%
| ¡Felicidades!, has escrito tu primera función.

...

|================================                                                |  41%
| Es importante que sepas que si deseas ver el código fuente de cualquier función, solo debes de teclear el nombre de la función sin
| argumentos ni paréntesis. Ahora ve el código fuente de la función que acabas de crear. Ingresa sucesor en la línea de comandos.

> sucesor
function(x) {
  x + 1
}
<bytecode: 0x562e6f07ec00>
  
  | All that practice is paying off!
  
  |===================================                                             |  44%
| La definición de una función en R incluye los nombres de los argumentos, como en el caso anterior que nombraste a 'x'.Si especificas un
| valor por defecto para un argumento, entonces el argumento será considerado opcional.

...

|======================================                                          |  47%
| Ahora harás un función ligeramente más complicada, donde usarás argumentos por defecto. Crearás una función llamada diferencia_cuadrada().
| Recuerda que para elevar un número a cierta potencia se usa el operador binario `^`. Asegúrate de guardar tus cambios antes de ingresar
| submit() en la línea de comandos.

> submit()

| Sourcing your script...


| Keep working like that and you'll get there!

  |========================================                                        |  50%
| Ahora prueba tu función diferencia_cuadrada(). Ingresa diferencia_cuadrada(3) en la línea de comandos.

> diferencia_cuadrada(3)
[1] 5

| Excellent job!

  |==========================================                                      |  53%
| ¿Qué ha pasado? Como proveíste un solo argumento a la función, R cazó ese argumento a 'x', debido a que 'x' es el primer argumento. Por lo
| que 'y' usó el valor por defecto que definiste (2).

...

  |=============================================                                   |  56%
| Recordarás que en un llamada a función puedes sobrescribir los valores por defecto. Así que ahora prueba diferencia_cuadrada() con dos
| argumentos. Ingresa diferencia_cuadrada(10, 5) en la línea de comandos.

> diferencia_cuadrada(4,5)
[1] -9

| Give it another try. Or, type info() for more options.

| Ingresa diferencia_cuadrada(10, 5) en la línea de comandos.

> diferencia_cuadrada(10,5)
[1] 75

| Excellent job!

  |================================================                                |  59%
| En R puedes explícitamente nombrar a los argumentos. Por ejemplo ingresa diferencia_cuadrada(y = 10, x = 5) en la línea de comandos.

> diferencia_cuadrada(y = 10, x = 5)
[1] -75

| You are really on a roll!

  |==================================================                              |  62%
| Como podrás notar es diferente ingresar diferencia_cuadrada(10, 5) a diferencia_cuadrada(y = 10, x = 5).

...

  |====================================================                            |  66%
| R también caza parcialmente los argumentos; es decir, ingresar diferencia_cuadrada(10, y = 5) resulta en lo mismo que ingresar
| diferencia_cuadrada(x = 10, y = 5) o diferencia_cuadrada(10, 5).

...

  |=======================================================                         |  69%
| Si no especificas un valor por defecto para un argumento, y si no especificas el valor de ese argumento cuando llamas a la función,
| obtendrás un error si la función intenta usar ese argumento.

...

  |==========================================================                      |  72%
| Si deseas escribir una función que acepte un número variable de argumentos, en R puedes usar '...'; para hacer esto se especifica '...' en
| los argumentos de la función.

...

  |============================================================                    |  75%
| Ahora escribirás una función usando '...'. Cerciórate de guardar tus cambios en el script antes de que introduzcas submit().

> submit()

| Sourcing your script...


| You are quite good my friend!

  |==============================================================                  |  78%
| Ahora prueba tu función numeros_por_vocales. Usa la función numeros_por_vocales pasándole como argumentos las cadenas que desees.

> numeros_por_vocales(verdolaga, campeon, de, america)
Error in paste(...) : object 'verdolaga' not found
> numeros_por_vocales("verdolaga", "campeon", "de", "america")
[1] "v3rd0l4g4 c4mp30n d3 4m3r1c4"

| You got it right!

  |=================================================================               |  81%
| Muchas funciones en R pueden recibir otras funciones como argumentos. Por ejemplo, si deseas saber los argumentos de una función puedes
| hacer uso de las funciones args() o formals(), las cuales reciben como argumento el nombre de la función de la que deseas conocer los
| argumentos.

...

  |====================================================================            |  84%
| Ahora muestra los argumentos de la función mean(), la cual regresa el promedio de los elementos que recibe como argumentos. Usa cualquiera
| de la funciones antes mencionadas.

> args(mean)
function (x, ...) 
NULL

| You are amazing!

  |======================================================================          |  88%
| Es importante que sepas que la función args() es usada principalmente de modo interactivo para imprimir los argumentos de una función. Para
| uso en programación considera mejor usar formals().

...

  |========================================================================        |  91%
| El concepto de pasar funciones como argumentos es muy poderoso. Completa la función operador_binario() para ver cómo funciona. Recuerda
| guardar tus cambios en el script antes de que introduzcas submit().

> submit()

| Sourcing your script...


| Perseverance, that's the answer.

|===========================================================================     |  94%
| Ahora prueba tu función operador_binario(). Ingresa operador_binario(`%/%`, 7, 3) en la línea de
| comandos. Recuerda que el operador `%/%` no es más que la división entera en R.

> operador_binario('%/%', 7, 3)
Error in fun(a, b) : could not find function "fun"
> operador_binario(´%/%´, 7, 3)
Error: unexpected input in "operador_binario(´"
> operador_binario('%/%', 7, 3)
Error in fun(a, b) : could not find function "fun"
> operador_binario(fun = '%/%', 7, 3)
Error in fun(a, b) : could not find function "fun"
> operador_binario(sum, 7, 3)
[1] 10

| One more time. You can do it! Or, type info() for more options.

| Ingresa operador_binario(`%/%`, 7, 3) en la línea de comandos.

> operador_binario(fun = '%/%', 7, 3)
Error in fun(a, b) : could not find function "fun"
> skip()

| Entering the following correct answer for you...

> operador_binario(`%/%`, 7, 3)
[1] 2

| All that practice is paying off!
  
  |==============================================================================  |  97%
| Por último, recuerda que todas las funciones en R regresan un valor. Algunas funciones en R
| además hacen otras cosas, como cambiar el estado de las variables, graficar, cargar o guardar
| archivos, o hasta acceder a la red.

...

|================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta
| lección?
  
  1: No
2: Si

Selection: 2