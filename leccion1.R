1: Continue.
2: Proceed.
3: Let's get going!

Selection: 
Enter an item from the menu, or 0 to exit
Selection: 3

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key. If you
| are already at the prompt, type bye() to exit and save your progress. When you exit properly,
| you'll see a short message letting you know you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!
  
  ...

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

Selection: 1
|                                                                                       |   0%

| En esta lección conocerás las principales herramientas que R tiene para obtener ayuda.

...

|=====                                                                                  |   6%
| La primera herramienta que puedes usar para obtener ayuda es help.start(). En ella encontrarás
| un menú de recursos, entre los cuales se encuentran manuales, referencias y demás material
| para comenzar a aprender R.

...

|==========                                                                             |  12%
| Para usar help.start() escribe en la línea de comandos help.start(). Pruébalo ahora:
  
  > help.start()

| Nice work!
  
  |===============                                                                        |  18%
| R incluye un sistema de ayuda que te facilita obtener información acerca de las funciones de
| los paquetes instalados. Para obtener información acerca de una función, por ejemplo de la
| función print(), debes escribir ?print en la línea de comandos.

...

|====================                                                                   |  24%
| Ahora es tu turno, introduce ?print en la línea de comandos.

> ?print()

| One more time. You can do it! Or, type info() for more options.

> info()

| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> nxt()

| Resuming lesson...


| Ahora es tu turno, introduce ?print en la línea de comandos.

> ?print()

| Give it another try. Or, type info() for more options.

> info()

| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> info()

| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> ?print()

| Not quite, but you're learning! Try again. Or, type info() for more options.

> ?print

| Excellent job!

  |==========================                                                             |  29%
| Como puedes observar ? te muestra en la ventana Help una breve descripción de la
| función, de cómo usarla, así como sus argumentos, etcétera.

...

  |===============================                                                        |  35%
| Asimismo, puedes usar la función help(), la cual es un equivalente de ?. Al utilizar
| help(), usarás como argumento el nombre de la función entre comillas, por ejemplo,
| help("print").

...

  |====================================                                                   |  41%
| Para buscar ayuda sobre un operador, éste tiene que encontrarse entre comillas inversas.
| Por ejemplo, si buscas información del operador +, deberás escribir help(`+`) o ?`+` en
| la línea de comandos.

...

  |=========================================                                              |  47%
| Otra herramienta disponible es la función apropos(), la cual recibe una cadena entre
| comillas como argumento y te muestra una lista de todas las funciones que contengan esa
| cadena. Inténtalo: escribe apropos("class") en la línea de comandos.

> info()

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> play()

| Entering play mode. Experiment as you please, then type nxt() when you are ready to
| resume the lesson.

> help('+')
> ?'-'
> nxt()

| Resuming lesson...


| Otra herramienta disponible es la función apropos(), la cual recibe una cadena entre
| comillas como argumento y te muestra una lista de todas las funciones que contengan esa
| cadena. Inténtalo: escribe apropos("class") en la línea de comandos.

> agropos("class")
Error in agropos("class") : could not find function "agropos"
> apropos("class")
 [1] ".checkMFClasses"                ".class2"                       
 [3] ".classEnv"                      ".MFclass"                      
 [5] ".OldClassesList"                ".rs.getR6ClassGeneratorMethod" 
 [7] ".rs.getR6ClassSymbols"          ".rs.getSetRefClassSymbols"     
 [9] ".rs.getSingleClass"             ".rs.objectClass"               
[11] ".rs.rnb.engineToCodeClass"      ".rs.rpc.get_set_class_slots"   
[13] ".rs.rpc.get_set_ref_class_call" ".selectSuperClasses"           
[15] ".valueClassTest"                "all.equal.envRefClass"         
[17] "assignClassDef"                 "class"                         
[19] "class<-"                        "classesToAM"                   
[21] "classLabel"                     "classMetaName"                 
[23] "className"                      "completeClassDefinition"       
[25] "completeSubclasses"             "data.class"                    
[27] "findClass"                      "getAllSuperClasses"            
[29] "getClass"                       "getClassDef"                   
[31] "getClasses"                     "getRefClass"                   
[33] "insertClassMethods"             "isClass"                       
[35] "isClassDef"                     "isClassUnion"                  
[37] "isSealedClass"                  "isVirtualClass"                
[39] "isXS3Class"                     "makeClassRepresentation"       
[41] "makePrototypeFromClassDef"      "multipleClasses"               
[43] "namespaceImportClasses"         "nclass.FD"                     
[45] "nclass.scott"                   "nclass.Sturges"                
[47] "newClassRepresentation"         "oldClass"                      
[49] "oldClass<-"                     "promptClass"                   
[51] "removeClass"                    "resetClass"                    
[53] "S3Class"                        "S3Class<-"                     
[55] "sealClass"                      "selectSuperClasses"            
[57] "setClass"                       "setClassUnion"                 
[59] "setOldClass"                    "setRefClass"                   
[61] "showClass"                      "superClassDepth"               
[63] "unclass"                       

| You are amazing!

  |==============================================                                         |  53%
| También puedes obtener ejemplos del uso de funciones con la función example(). Por
| ejemplo, escribe example("read.table").

> example("read.table")

rd.tbl> ## using count.fields to handle unknown maximum number of fields
rd.tbl> ## when fill = TRUE
rd.tbl> test1 <- c(1:5, "6,7", "8,9,10")

rd.tbl> tf <- tempfile()

rd.tbl> writeLines(test1, tf)

rd.tbl> read.csv(tf, fill = TRUE) # 1 column
  X1
1  2
2  3
3  4
4  5
5  6
6  7
7  8
8  9
9 10

rd.tbl> ncol <- max(count.fields(tf, sep = ","))

rd.tbl> read.csv(tf, fill = TRUE, header = FALSE,
rd.tbl+          col.names = paste0("V", seq_len(ncol)))
  V1 V2 V3
1  1 NA NA
2  2 NA NA
3  3 NA NA
4  4 NA NA
5  5 NA NA
6  6  7 NA
7  8  9 10

rd.tbl> unlink(tf)

rd.tbl> ## "Inline" data set, using text=
rd.tbl> ## Notice that leading and trailing empty lines are auto-trimmed
rd.tbl> 
rd.tbl> read.table(header = TRUE, text = "
rd.tbl+ a b
rd.tbl+ 1 2
rd.tbl+ 3 4
rd.tbl+ ")
  a b
1 1 2
2 3 4

| You got it!

  |===================================================                                    |  59%
| Con eso tendrás una idea de lo que puedes hacer con esta función.

...

  |========================================================                               |  65%
| R te permite buscar información sobre un tema usando ??. Por ejemplo, escribe
| ??regression en la línea de comandos.

> 
> ??regression

| That's correct!
  
  |=============================================================                          |  71%
| Esta herramienta es muy útil si no recuerdas el nombre de una función, ya que R te
| mostrará una lista de temas relevantes en la venta Help. Análogamente, puedes usar la
| función help.search("regression").

...??regression

|===================================================================                    |  76%
| Otra manera de obtener información de ayuda sobre un paquete es usar la opción help para
| el comando library, con lo cual tendrás información más completa. Un ejemplo es
| library(help="stats").

...play()

|========================================================================               |  82%
| Algunos paquetes incluyen viñetas. Una viñeta es un documento corto que describe cómo se
| usa un paquete. Puedes ver una viñetas usando la función vignette(). Pruébalo: escribe
| vignette("tests") en la línea de comandos.

> ??regression
> nxt()

| Resuming lesson...


| Algunos paquetes incluyen viñetas. Una viñeta es un documento corto que describe cómo se
| usa un paquete. Puedes ver una viñetas usando la función vignette(). Pruébalo: escribe
| vignette("tests") en la línea de comandos.

> library(help="stats")

| That's not the answer I was looking for, but try again. Or, type info() for more
| options.

> vignette(tests)
Error in vignette(tests) : object 'tests' not found
> vignette("tests")
Warning message:
vignette ‘tests’ not found 

| Nice work!

  |=============================================================================          |  88%
| Por último si deseas ver la lista de viñetas disponibles puedes hacerlo usando el
| comando vignette() con los paréntesis vacíos.

...vignette()

  |==================================================================================     |  94%
| Es MUY IMPORTANTE que sepas que durante todo el curso en swirl, puedes hacer uso de las
| funciones help() o ? cuando lo desees, incluso si estas en medio de una lección.

...play()

  |=======================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has
| completado esta lección?

1: Si
2: No

Selection: 1
¿Cúal es tu nombre de usuario registrado en Coursera (email)? gariosp@unal.edu.co
¿Cúal es tu token de la tarea? LLbwIVtTD4lsEVlk
¡El envío de la calificación fue satisfactorio!

| Excellent work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: programacion-estadistica-r
2: Take me to the swirl course repository!
  
  Selection: 0

| Leaving swirl now. Type swirl() to resume.