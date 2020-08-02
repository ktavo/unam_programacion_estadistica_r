> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then.
| If you are new, call yourself something unique.

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

Selection: 6
  |                                                                                         |   0%

| En esta lección aprenderás a utilizar a la familia de funciones *apply().

...

  |=                                                                                        |   2%
| Cuando te encuentras procesando información, una operación común es la de aplicar una función a
| un conjunto de elementos y regresar un nuevo conjunto de elementos.

...

  |===                                                                                      |   3%
| La funciones *apply() que se encuentran en el paquete base de R, actúan de esta manera sobre
| diferentes estructuras de datos, aplican una función con uno o varios argumentos y regresan otra
| estructura de datos.

...

  |====                                                                                     |   5%
| La primera función que conocerás es la función apply(), la cual opera sobre arreglos.

...

  |======                                                                                   |   7%
| Para conocer el uso de esta función ingresa help("apply") en la línea de comandos.

> help("apply")

| You're the best!
  
  |=======                                                                                  |   8%
  | X es un arreglo (puede ser una matriz si la dimensión del arreglo es 2). MARGIN es una variable
  | que define cómo la función es aplicada, cuando MARGIN=1 se aplica sobre los renglones, cuando
  | MARGIN=2 trabaja sobre las columnas. FUN es la función que deseas aplicar y puede ser cualquier
  | función de R, incluyendo funciones definidas por ti.
  
  ...
  
  |=========                                                                                |  10%
  | Opcionalmente puedes especificar argumentos a FUN como argumentos adicionales (...).
  
  ...
  
  |==========                                                                               |  11%
  | Para ejemplificar cómo funciona crea un arreglo bidimensional (matriz) y guárdalo en la variable
  | 'mi_matriz'. Ingresa mi_matriz <- matrix(data=1:16,nrow=4, ncol=4) en la línea de comandos.
  
  > mi_matriz <- matrix(data = 1:16, nrow = 4, ncol = 4)
  
  | Keep up the great work!
    
    |============                                                                             |  13%
  | Ahora ve su contenido.
  
  > mi_matriz
  [,1] [,2] [,3] [,4]
  [1,]    1    5    9   13
  [2,]    2    6   10   14
  [3,]    3    7   11   15
  [4,]    4    8   12   16
  
  | You are really on a roll!
    
    |=============                                                                            |  15%
  | Ahora imagina que deseas saber el mínimo valor presente en cada columna de 'mi_matriz'. Puedes
  | usar la funcion min(), la cual regresa el mínimo de los valores que recibe como entrada; y así,
  | al ingresar apply(X=mi_matriz, MARGIN=2, FUN=min) en la línea de comandos obtendrás los mínimos
  | valores por columna. ¡Inténtalo!
    
    > apply(X=mi_matrix, 2, FUN = min)
  Error in apply(X = mi_matrix, 2, FUN = min) : 
    object 'mi_matrix' not found
  > apply(X = mi_matriz, 2, FUN = min)
  [1]  1  5  9 13
  
  | You nailed it! Good job!
    
    |===============                                                                          |  16%
  | Es importante notar que es necesario que MARGIN=2 para que la función min() sea aplicada sobre
  | las columnas.
  
  ...
  
  |================                                                                         |  18%
  | Ahora haz la misma operación, solo que sobre los renglones.
  
  > apply(X = mi_matriz, 1, FUN = min)
  [1] 1 2 3 4
  
  | You got it!
    
    |==================                                                                       |  20%
  | Te preguntarás qué puedes hacer si deseas aplicar una función a una lista o un vector, ya que
  | apply() solo opera sobre arreglos.
  
  ...
  
  |===================                                                                      |  21%
  | Pues bien, para aplicar una función a cada elemento de un vector o una lista y regresar una
  | lista, puedes usar la función lapply().
  
  ...
  
  |====================                                                                     |  23%
  | Para ejemplificar esto crea una lista, la cual contenga a las cadenas "Introducción", "a", "la",
  | "Programación", "Estadística", "con", "R", en ese orden, y guarda la lista en la variable
  | ‘mi_lista’.
  
  > mi_lista = ("Introducción", "a", "la", "Programación", "Estadística", "con", "R")
  Error: unexpected ',' in "mi_lista = ("Introducción","
  > mi_lista <- list("Introducción", "a", "la", "Programación", "Estadística", "con", "R")
  
  | Excellent job!
    
    |======================                                                                   |  25%
  | Ahora ve el contenido de la variable 'mi_lista'.
  
  > mi_lista
  [[1]]
  [1] "Introducción"
  
  [[2]]
  [1] "a"
  
  [[3]]
  [1] "la"
  
  [[4]]
  [1] "Programación"
  
  [[5]]
  [1] "Estadística"
  
  [[6]]
  [1] "con"
  
  [[7]]
  [1] "R"
  
  
  | Your dedication is inspiring!
    
    |=======================                                                                  |  26%
  | Aunque la función lapply() es muy parecida a la función apply(), es importante conocer la manera
  | de usarla; esto lo puedes hacer conociendo sus argumentos. Ahora ve los argumentos de la función
  | lapply().
  
  > skip(9)
  Error in skip(9) : unused argument (9)
  > skip()
  
  | Entering the following correct answer for you...
  
  > formals(lapply)
  $X
  
  
  $FUN
  
  
  $...
  
  
  
  | All that hard work is paying off!
    
    |=========================                                                                |  28%
  | Como podrás notar el uso de lapply() es más simple que el de apply, puesto que no hace uso del
  | argumento MARGIN.
  
  ...
  
  |==========================                                                               |  30%
  | Ahora ve un simple ejemplo de cómo usar lapply. Ingresa mayusculas <- lapply(mi_lista, toupper)
  | en la línea de comandos.
  
  > mayusculas <- lapply(mi_lista, toupper)
  
  | You got it right!
    
    |============================                                                             |  31%
  | Ahora ve el contenido de 'mayusculas'.
  
  > mayusculas
  [[1]]
  [1] "INTRODUCCIÓN"
  
  [[2]]
  [1] "A"
  
  [[3]]
  [1] "LA"
  
  [[4]]
  [1] "PROGRAMACIÓN"
  
  [[5]]
  [1] "ESTADÍSTICA"
  
  [[6]]
  [1] "CON"
  
  [[7]]
  [1] "R"
  
  
  | You are doing so well!
    
    |=============================                                                            |  33%
  | Como recordarás, toupper() regresa la cadena que reciba como entrada en mayúsculas. Así que
  | lapply simplemente regresa una lista que contiene el resultado de aplicar la función toupper() a
  | cada elemento de 'mi_lista'.
  
  ...
  
  |===============================                                                          |  34%
  | Para verificar que lapply efectivamente regresa una lista ingresa class(mayusculas).
  
  > class(mayusculas)
  [1] "list"
  
  | You got it!
    
    |================================                                                         |  36%
  | Si ahora ingresas lapply(c("Introduccion", "a", "la", "Programacion", "Estadistica", "con",
                               | "R"), toupper) en la línea de comandos, ¿qué crees que ocurra?
    
    1: Que te mande error
  2: Que te regrese un vector que contenga las cadenas "INTRODUCCION", "A", "LA", "PROGRAMACION", "ESTADISTICA", "CON", "R"
  3: Que te regrese una lista que contenga las cadenas "INTRODUCCION", "A", "LA", "PROGRAMACION", "ESTADISTICA", "CON", "R"
  
  Selection: 3
  
  | You're the best!

  |==================================                                                       |  38%
| Te regresará una lista que contenga a las cadenas "INTRODUCCION", "A", "LA", "PROGRAMACION",
| "ESTADISTICA", "CON", "R" pues si recuerdas la función lapply() opera sobre listas y vectores y
| SIEMPRE regresa una lista; es fácil que recuerdes esto si piensas que lista + apply = lapply.

...

  |===================================                                                      |  39%
| A partir de ahora trabajarás con el archivo ASA_estadisticasPasajeros(3).csv, el cual contiene
| datos estadísticos del año 2015 de pasajeros en servicio nacional e internacional de la Red
| Aeropuertos y Servicios Auxiliares de México. Con suerte, el archivo se mostrará en algún
| editor. De lo contrario, búscalo en el subdirectorio swirl_temp, de tu directorio de trabajo y
| velo en una aplicación separada.

(Se ha copiado el archivo ASA_estadisticasPasajeros(3).csv a la ruta /home/ktavo/swirl_temp/ASA_estadisticasPasajeros(3).csv ).
...

  |====================================                                                     |  41%
| Como podrás notar el primer renglón del archivo contiene los nombres de las columnas. Anio mes
| son representados por una cadena que contiene año y mes pegados sin espacios; Código IATA se
| refiere a la sigla utilizada por IATA(International Air Transport Association) para identificar
| al aeropuerto; Descripción contiene la ciudad donde se encuentra dicho aeropuerto; Estado, como
| su nombre lo indica, contiene el nombre del estado donde se encuentra dicho aeropuerto;
| Pasajeros nacionales se refiere al número de pasajeros mexicanos que hicieron uso del
| aeropuerto; y Pasajeros internacionales se refiere al número de pasajeros extranjeros que
| hicieron uso del aeropuerto.

...

  |======================================                                                   |  43%
| Ahora importa el archivo ASA_estadisticasPasajeros(3).csv usando alguna función read.*() y
| guárdalo en la variable ‘asa_datos’. Recuerda que se encuentra en tu directorio de trabajo, en
| la carpeta swirl_temp, por lo que la ruta del archivo es
| "swirl_temp/ASA_estadisticasPasajeros(3).csv"

> help("read.csv")
> asa_datos <- read.csv(ASA_estadisticasPasajeros(3).csv, HEADER = TRUE, sep = ",")
Error: unexpected symbol in "asa_datos <- read.csv(ASA_estadisticasPasajeros(3).csv"
> asa_datos <- read.csv(file = "ASA_estadisticasPasajeros(3).csv", HEADER = TRUE, sep = ",")
Error in read.table(file = file, header = header, sep = sep, quote = quote,  : 
  unused argument (HEADER = TRUE)
> asa_datos <- read.csv(file = "ASA_estadisticasPasajeros(3).csv", header = TRUE, sep = ",")
Error in file(file, "rt") : cannot open the connection
In addition: Warning message:
In file(file, "rt") :
  cannot open file 'ASA_estadisticasPasajeros(3).csv': No such file or directory
> asa_datos <- read.csv(file = "swirl_temp/ASA_estadisticasPasajeros(3).csv", header = TRUE, sep = ",")

| That's a job well done!
    
    |=======================================                                                  |  44%
  | Ahora ve lo que contiene ‘asa_datos’. Para hacer esto usarás la función View(). Si te encuentras
  | en Rstudio simplemente puedes presionar el nombre de tu variable asa_datos en el apartado
  | Entorno ("Environment") y se mostrará su contenido. Presiona la variable asa_datos en Rstudio o
  | ingresa en la línea de comando: View(asa_datos).
  
  > View(asa_datos)
  
  | Nice work!
    
    |=========================================                                                |  46%
  | Como recordarás la familia de funciones read.*() te regresan un data frame.
  
  ...
  
  |==========================================                                               |  48%
  | Los data frames no son más que una lista de vectores, así que puedes usar la función lapply()
  | con ellos.
  
  ...
  
  |============================================                                             |  49%
  | Es importante que cuando trabajes con datos sepas un poco más de ellos.
  
  ...
  
  |=============================================                                            |  51%
  | Si deseas saber el tipo de variables que contiene cada columna del data frame 'asa_datos' basta
  | con escribir lapply(asa_datos, class). Ingresa lapply(asa_datos, class) en la línea de comandos.
  
  > lapply(asa_da, class)
  Error in lapply(asa_da, class) : object 'asa_da' not found
  > lapply(asa_datos, class)
  $Anio.mes
  [1] "integer"
  
  $Codigo.IATA
  [1] "character"
  
  $Descripcion
  [1] "character"
  
  $Estado
  [1] "character"
  
  $Pasajeros.nacionales
  [1] "integer"
  
  $Pasajeros.internacionales
  [1] "integer"
  
  
  | Excellent job!
    
    |===============================================                                          |  52%
  | Como podrás notar, el data frame contiene dos tipos de datos: enteros (Anio.mes,
                                                                           | Pasajeros.nacionales y Pasajeros.internacionales) y factores (Codigo.IATA, Descripcion y
                                                                                                                                           | Estado).
  
  ...
  
  |================================================                                         |  54%
  | Como recordarás los factores son una colección ordenada de elementos. Son usados en R para
  | representar valores categóricos. Si haces un poco de memoria recordarás que los valores que un
  | factor puede tomar se llaman niveles ("levels").
  
  ...
  
  |==================================================                                       |  56%
  | A la hora de trabajar con factores es importante que conozcas los niveles que los datos pueden
  | tomar.
  
  ...
  
  |===================================================                                      |  57%
  | Si deseas conocer los niveles que las columnas del data frame pueden tomar, los puedes conocer
  | al imprimir dicha columna. Por ejemplo, ingresa asa_datos$Descripcion en la línea de comandos
  | para conocer las ciudades que contienen aeropuertos pertenecientes a la Red Aeropuertos y
  | Servicios Auxiliares de México.
  
  > asa_datos$Descripcion
  [1] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [5] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [9] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [13] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [17] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [21] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [25] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [29] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [33] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  [37] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [41] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [45] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [49] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [53] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [57] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [61] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [65] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [69] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  [73] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [77] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [81] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [85] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [89] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [93] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [97] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [101] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [105] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  [109] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [113] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [117] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [121] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [125] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [129] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [133] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [137] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [141] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  [145] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [149] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [153] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [157] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [161] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [165] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [169] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [173] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [177] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  [181] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [185] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [189] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [193] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [197] "Tamuin"            "Uruapan"           "Ciudad Obregon"    "Colima"           
  [201] "Ciudad del Carmen" "Campeche"          "Chetumal"          "Ciudad Victoria"  
  [205] "Guaymas"           "Loreto"            "Matamoros"         "Nuevo Laredo"     
  [209] "Nogales"           "Poza Rica"         "Puebla"            "Puerto Escondido" 
  [213] "Tehuacan"          "Tepic"             "Tamuin"            "Uruapan"          
  
  | All that hard work is paying off!
    
    |=====================================================                                    |  59%
  | Como podrás notar esto presentó todos los valores de la columna Descripcion aun estando
  | repetidos. Al final se muestran todos los niveles en donde dice "Levels:" pero al ser muchos R
  | mostró algunos y los demás los omitió usando "...".
  
  ...
  
  |======================================================                                   |  61%
  | Una manera de poder ver todos los niveles aun cuando sean muchos es usando la función unique().
  | La función unique() elimina duplicados. Ingresa unique(asa_datos$Descripcion) en la línea de
  | comandos.
  
  > unique(asa_datos$Descripcion)
  [1] "Ciudad Obregon"    "Colima"            "Ciudad del Carmen" "Campeche"         
  [5] "Chetumal"          "Ciudad Victoria"   "Guaymas"           "Loreto"           
  [9] "Matamoros"         "Nuevo Laredo"      "Nogales"           "Poza Rica"        
  [13] "Puebla"            "Puerto Escondido"  "Tehuacan"          "Tepic"            
  [17] "Tamuin"            "Uruapan"          
  
  | Your dedication is inspiring!
    
    |=======================================================                                  |  62%
  | Ahora ya conoces las ciudades con aeropuertos pertenecientes a la red ASA.
  
  ...
  
  |=========================================================                                |  64%
  | Repite el proceso pero ahora para conocer los valores de la columna Estado.
  
  > unique(asa_datos$Estado)
  [1] "Sonora"               "Colima"               "Campeche"             "Quintana Roo"        
  [5] "Tamaulipas"           "Baja California  Sur" "Veracruz"             "Puebla"              
  [9] "Oaxaca"               "Nayarit"              "San Luis Potosi"      "Michoacan"           
  
  | That's a job well done!

  |==========================================================                               |  66%
| Ahora deseas saber el número total de pasajeros nacionales que viajaron en alguno de los
| aeropuertos pertenecientes a la red ASA. Para hacer esto simplemente puedes sumar todos los
| elementos de la columna de Pasajeros.nacionales. Ingresa sum(asa_datos$Pasajeros.nacionales) en
| la línea de comandos.

> sum(asa_datos$Pasajeros.nacionales)
[1] 2291419

| All that hard work is paying off!

  |============================================================                             |  67%
| La función sum() regresa la suma de todos los elementos que recibe como argumentos.

...

  |=============================================================                            |  69%
| Ahora deseas obtener el número total de pasajeros internacionales.

...

  |===============================================================                          |  70%
| Podrías repetir la operación que hiciste para obtener el número total de pasajeros nacionales...

...

  |================================================================                         |  72%
| O podrías usar la función lapply() y automatizar la operación para obtener el número total de
| ambos pasajeros.

...

  |==================================================================                       |  74%
| Primero crea un subconjunto de asas_datos, ingresa asa_pasajeros <-
| asa_datos[,c("Pasajeros.nacionales", "Pasajeros.internacionales")] en la línea de comandos. Con
| esto obtendrás las columnas de pasajeros.

> asa_pasajeros <- asa_datos[,c("Pasajeros.nAcionales", "Pasajeros.internacionales")]
Error in `[.data.frame`(asa_datos, , c("Pasajeros.nAcionales", "Pasajeros.internacionales")) : 
  undefined columns selected
> asa_pasajeros <- asa_datos[,c("Pasajeros.nacionales", "Pasajeros.internacionales")]

| You're the best!
    
    |===================================================================                      |  75%
  | Ahora ve lo que contiene ‘asa_pasajeros’. Para hacer esto usarás la función View(). Si te
  | encuentras en Rstudio simplemente puedes presionar el nombre de la variable asa_pasajeros en el
  | apartado Entorno ("Environment") y se mostrará su contenido. Presiona la variable asa_pasajeros
  | en Rstudio o ingresa View(asa_pasajeros) en la línea de comandos.
  
  > View(asa_pasajeros)
  
  | Keep working like that and you'll get there!

  |=====================================================================                    |  77%
| Y ahora usa la función lapply() para obtener el número total de pasajeros de ambas columna.
| Ingresa lapply(asa_pasajeros, sum) en la línea de comandos.

> lapply(asa_pasajeros, sum)
$Pasajeros.nacionales
[1] 2291419

$Pasajeros.internacionales
[1] 176741


| Keep up the great work!

  |======================================================================                   |  79%
| Esto te dice que se registraron un total de 2 291 419 pasajeros nacionales y 176 741 pasajeros
| internacionales.

...

  |=======================================================================                  |  80%
| Como recordarás, las listas son útiles para guardar objetos de múltiples clases. Pero en este
| caso el resultado de aplicar sum() fue un entero por columna; podrías guardar el resultado en
| alguna otra estructura.

...

  |=========================================================================                |  82%
| sapply() te permite simplificar este proceso; sapply funciona como lapply(), pero intenta
| simplificar la salida a la estructura de datos más elemental que sea posible. De ahí su nombre
| simple + apply = sapply.

...

  |==========================================================================               |  84%
| Ahora usa sapply() para obtener el número total de pasajeros nacionales e internacionales de la
| misma manera que lo hiciste con lapply() y guarda el resultado en la variable 'total_pasajeros'.

> total_pasajeros <- sapply(asa_pasajeros, sum)

| Great job!

  |============================================================================             |  85%
| Ahora ve el contenido de 'total_pasajeros'.

> total_pasajeros
     Pasajeros.nacionales Pasajeros.internacionales 
                  2291419                    176741 

| You're the best!
    
    |=============================================================================            |  87%
  | Como notarás 'total_pasajeros' no es una lista; esto se debe a que a sapply() simplificó el
  | resultado a un vector de enteros.
  
  ...
  
  |===============================================================================          |  89%
  | En general, si el resultado de lapply() es una lista donde cada elemento es de longitud 1,
  | sapply() regresará un vector. Si el resultado es una lista donde cada elemento es un vector de
  | la misma longitud (> 1), sapply() regresará una matriz. Si sapply() no puede arreglárselas,
  | entonces regresará una lista, lo cual no sería diferente al resultado de usar lapply().
  
  ...
  
  |================================================================================         |  90%
  | Algunas veces encontrarás que los datos proporcionados tienen una granularidad muy fina para el
  | tipo de análisis que estás realizando. Por ejemplo supón que deseas saber el número total de
  | pasajeros nacionales por estado. Para encontrar ese número, tendrás que agrupar los aeropuertos
  | por estado e ir sumando los números de pasajeros nacionales. Esta tarea puede volverse un poco
  | conflictiva debido a que la información la tienes dividida por meses.
  
  ...
  
  |==================================================================================       |  92%
  | Como recordarás, la columna Estados solo puede tomar los valores Sonora, Colima, Campeche,
  | Quintana Roo, Tamaulipas, Baja California Sur, Veracruz, Puebla, Oaxaca, Nayarit, San Luis
  | Potosí y Michoacán. Para ver cuántos registros tiene cada estado ingresa table(asa_datos$Estado)
  | en la línea de comandos.
  
  > table(asa_datos$Estado)
  
  Baja California  Sur             Campeche               Colima            Michoacan 
  12                   24                   12                   12 
  Nayarit               Oaxaca               Puebla         Quintana Roo 
  12                   12                   24                   12 
  San Luis Potosi               Sonora           Tamaulipas             Veracruz 
  12                   36                   36                   12 
  
  | Nice work!
    
    |===================================================================================      |  93%
  | Como te podrás dar cuenta cada estado tiene un número múltiplo de 12 registros; esto se debe a
  | que los registros por aeropuerto están divididos por mes.
  
  ...
  
  |=====================================================================================    |  95%
  | Pensando en que algunas veces tendrás la información con una granularidad muy fina para el tipo
  | de análisis que deseas realizar, R proporciona la función tapply(), la cual divide datos en
  | grupos, basados en valor de alguna variable y luego aplica la función especificada a los
  | miembros de cada grupo.
  
  ...
  
  |======================================================================================   |  97%
  | Ingresa tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, sum) para obtener el número de
  | pasajeros nacionales por estado.
  
  > tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, sum)
  Baja California  Sur             Campeche               Colima            Michoacan 
  12602               769864               112656                95635 
  Nayarit               Oaxaca               Puebla         Quintana Roo 
  113043               181706               267567               179259 
  San Luis Potosi               Sonora           Tamaulipas             Veracruz 
  1598               253788               243126                60575 
  
  | Excellent job!
    
    |======================================================================================== |  98%
  | Ahora obtén el promedio o media de pasajeros nacionales que viajaron por mes en cada aeropuerto.
  | Recuerda que para calcular la media puedes usar la función mean().
  
  > tapply(asa_datos$Pasajeros.nacionales, asa_datos$Estado, mean)
  Baja California  Sur             Campeche               Colima            Michoacan 
  1050.1667           32077.6667            9388.0000            7969.5833 
  Nayarit               Oaxaca               Puebla         Quintana Roo 
  9420.2500           15142.1667           11148.6250           14938.2500 
  San Luis Potosi               Sonora           Tamaulipas             Veracruz 
  133.1667            7049.6667            6753.5000            5047.9167 
  
  | You're close...I can feel it! Try it again. Or, type info() for more options.

| Ingresa tapply(asa_datos$Pasajeros.nacionales, asa_datos$Codigo.IATA, mean) en la línea de
| comandos para conocer la media de pasajeros nacionales que viajaron por mes en cada aeropuerto.

> tapply(asa_datos$Pasajeros.nacionales, asa_datos$Codigo.IATA, mean)
       CEN        CLQ        CME        CPE        CTM        CVM        GYM        LTO        MAM 
19867.4167  9388.0000 49262.8333 14892.5000 14938.2500  6124.2500  1063.0833  1050.1667  8078.9167 
       NLD        NOG        PAZ        PBC        PXM        TCN        TPQ        TSL        UPN 
 6057.3333   218.5000  5047.9167 22062.9167 15142.1667   234.3333  9420.2500   133.1667  7969.5833 

| All that hard work is paying off!

  |=========================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta
| lección?

1: Si
2: No

Selection: 1