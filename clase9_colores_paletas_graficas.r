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

Selection: 9
|                                                                                         |   0%

| En esta lección verás cómo se manejan los colores en el sistema de gráficos de R.

...

|==                                                                                       |   3%
| Anteriormente viste que puedes usar el parámetro col para especificar colores.

...

|=====                                                                                    |   5%
| Hasta ahora, la mayoría de las veces has usado cadenas refiriéndose a un simple conjunto de
| colores.

...

|=======                                                                                  |   8%
| En R puedes especificar colores de tres maneras: como una cadena, usando los componentes RGB
| (rojo, verde, azul) o haciendo referencia a un índice de la paleta de colores mediante un
| entero.

...

|==========                                                                               |  11%
| Para obtener la lista de los nombres de colores válidos, usa la función colors(). Ingresa
| colors() en la línea de comandos.

> colors()
[1] "white"                "aliceblue"            "antiquewhite"         "antiquewhite1"       
[5] "antiquewhite2"        "antiquewhite3"        "antiquewhite4"        "aquamarine"          
[9] "aquamarine1"          "aquamarine2"          "aquamarine3"          "aquamarine4"         
[13] "azure"                "azure1"               "azure2"               "azure3"              
[17] "azure4"               "beige"                "bisque"               "bisque1"             
[21] "bisque2"              "bisque3"              "bisque4"              "black"               
[25] "blanchedalmond"       "blue"                 "blue1"                "blue2"               
[29] "blue3"                "blue4"                "blueviolet"           "brown"               
[33] "brown1"               "brown2"               "brown3"               "brown4"              
[37] "burlywood"            "burlywood1"           "burlywood2"           "burlywood3"          
[41] "burlywood4"           "cadetblue"            "cadetblue1"           "cadetblue2"          
[45] "cadetblue3"           "cadetblue4"           "chartreuse"           "chartreuse1"         
[49] "chartreuse2"          "chartreuse3"          "chartreuse4"          "chocolate"           
[53] "chocolate1"           "chocolate2"           "chocolate3"           "chocolate4"          
[57] "coral"                "coral1"               "coral2"               "coral3"              
[61] "coral4"               "cornflowerblue"       "cornsilk"             "cornsilk1"           
[65] "cornsilk2"            "cornsilk3"            "cornsilk4"            "cyan"                
[69] "cyan1"                "cyan2"                "cyan3"                "cyan4"               
[73] "darkblue"             "darkcyan"             "darkgoldenrod"        "darkgoldenrod1"      
[77] "darkgoldenrod2"       "darkgoldenrod3"       "darkgoldenrod4"       "darkgray"            
[81] "darkgreen"            "darkgrey"             "darkkhaki"            "darkmagenta"         
[85] "darkolivegreen"       "darkolivegreen1"      "darkolivegreen2"      "darkolivegreen3"     
[89] "darkolivegreen4"      "darkorange"           "darkorange1"          "darkorange2"         
[93] "darkorange3"          "darkorange4"          "darkorchid"           "darkorchid1"         
[97] "darkorchid2"          "darkorchid3"          "darkorchid4"          "darkred"             
[101] "darksalmon"           "darkseagreen"         "darkseagreen1"        "darkseagreen2"       
[105] "darkseagreen3"        "darkseagreen4"        "darkslateblue"        "darkslategray"       
[109] "darkslategray1"       "darkslategray2"       "darkslategray3"       "darkslategray4"      
[113] "darkslategrey"        "darkturquoise"        "darkviolet"           "deeppink"            
[117] "deeppink1"            "deeppink2"            "deeppink3"            "deeppink4"           
[121] "deepskyblue"          "deepskyblue1"         "deepskyblue2"         "deepskyblue3"        
[125] "deepskyblue4"         "dimgray"              "dimgrey"              "dodgerblue"          
[129] "dodgerblue1"          "dodgerblue2"          "dodgerblue3"          "dodgerblue4"         
[133] "firebrick"            "firebrick1"           "firebrick2"           "firebrick3"          
[137] "firebrick4"           "floralwhite"          "forestgreen"          "gainsboro"           
[141] "ghostwhite"           "gold"                 "gold1"                "gold2"               
[145] "gold3"                "gold4"                "goldenrod"            "goldenrod1"          
[149] "goldenrod2"           "goldenrod3"           "goldenrod4"           "gray"                
[153] "gray0"                "gray1"                "gray2"                "gray3"               
[157] "gray4"                "gray5"                "gray6"                "gray7"               
[161] "gray8"                "gray9"                "gray10"               "gray11"              
[165] "gray12"               "gray13"               "gray14"               "gray15"              
[169] "gray16"               "gray17"               "gray18"               "gray19"              
[173] "gray20"               "gray21"               "gray22"               "gray23"              
[177] "gray24"               "gray25"               "gray26"               "gray27"              
[181] "gray28"               "gray29"               "gray30"               "gray31"              
[185] "gray32"               "gray33"               "gray34"               "gray35"              
[189] "gray36"               "gray37"               "gray38"               "gray39"              
[193] "gray40"               "gray41"               "gray42"               "gray43"              
[197] "gray44"               "gray45"               "gray46"               "gray47"              
[201] "gray48"               "gray49"               "gray50"               "gray51"              
[205] "gray52"               "gray53"               "gray54"               "gray55"              
[209] "gray56"               "gray57"               "gray58"               "gray59"              
[213] "gray60"               "gray61"               "gray62"               "gray63"              
[217] "gray64"               "gray65"               "gray66"               "gray67"              
[221] "gray68"               "gray69"               "gray70"               "gray71"              
[225] "gray72"               "gray73"               "gray74"               "gray75"              
[229] "gray76"               "gray77"               "gray78"               "gray79"              
[233] "gray80"               "gray81"               "gray82"               "gray83"              
[237] "gray84"               "gray85"               "gray86"               "gray87"              
[241] "gray88"               "gray89"               "gray90"               "gray91"              
[245] "gray92"               "gray93"               "gray94"               "gray95"              
[249] "gray96"               "gray97"               "gray98"               "gray99"              
[253] "gray100"              "green"                "green1"               "green2"              
[257] "green3"               "green4"               "greenyellow"          "grey"                
[261] "grey0"                "grey1"                "grey2"                "grey3"               
[265] "grey4"                "grey5"                "grey6"                "grey7"               
[269] "grey8"                "grey9"                "grey10"               "grey11"              
[273] "grey12"               "grey13"               "grey14"               "grey15"              
[277] "grey16"               "grey17"               "grey18"               "grey19"              
[281] "grey20"               "grey21"               "grey22"               "grey23"              
[285] "grey24"               "grey25"               "grey26"               "grey27"              
[289] "grey28"               "grey29"               "grey30"               "grey31"              
[293] "grey32"               "grey33"               "grey34"               "grey35"              
[297] "grey36"               "grey37"               "grey38"               "grey39"              
[301] "grey40"               "grey41"               "grey42"               "grey43"              
[305] "grey44"               "grey45"               "grey46"               "grey47"              
[309] "grey48"               "grey49"               "grey50"               "grey51"              
[313] "grey52"               "grey53"               "grey54"               "grey55"              
[317] "grey56"               "grey57"               "grey58"               "grey59"              
[321] "grey60"               "grey61"               "grey62"               "grey63"              
[325] "grey64"               "grey65"               "grey66"               "grey67"              
[329] "grey68"               "grey69"               "grey70"               "grey71"              
[333] "grey72"               "grey73"               "grey74"               "grey75"              
[337] "grey76"               "grey77"               "grey78"               "grey79"              
[341] "grey80"               "grey81"               "grey82"               "grey83"              
[345] "grey84"               "grey85"               "grey86"               "grey87"              
[349] "grey88"               "grey89"               "grey90"               "grey91"              
[353] "grey92"               "grey93"               "grey94"               "grey95"              
[357] "grey96"               "grey97"               "grey98"               "grey99"              
[361] "grey100"              "honeydew"             "honeydew1"            "honeydew2"           
[365] "honeydew3"            "honeydew4"            "hotpink"              "hotpink1"            
[369] "hotpink2"             "hotpink3"             "hotpink4"             "indianred"           
[373] "indianred1"           "indianred2"           "indianred3"           "indianred4"          
[377] "ivory"                "ivory1"               "ivory2"               "ivory3"              
[381] "ivory4"               "khaki"                "khaki1"               "khaki2"              
[385] "khaki3"               "khaki4"               "lavender"             "lavenderblush"       
[389] "lavenderblush1"       "lavenderblush2"       "lavenderblush3"       "lavenderblush4"      
[393] "lawngreen"            "lemonchiffon"         "lemonchiffon1"        "lemonchiffon2"       
[397] "lemonchiffon3"        "lemonchiffon4"        "lightblue"            "lightblue1"          
[401] "lightblue2"           "lightblue3"           "lightblue4"           "lightcoral"          
[405] "lightcyan"            "lightcyan1"           "lightcyan2"           "lightcyan3"          
[409] "lightcyan4"           "lightgoldenrod"       "lightgoldenrod1"      "lightgoldenrod2"     
[413] "lightgoldenrod3"      "lightgoldenrod4"      "lightgoldenrodyellow" "lightgray"           
[417] "lightgreen"           "lightgrey"            "lightpink"            "lightpink1"          
[421] "lightpink2"           "lightpink3"           "lightpink4"           "lightsalmon"         
[425] "lightsalmon1"         "lightsalmon2"         "lightsalmon3"         "lightsalmon4"        
[429] "lightseagreen"        "lightskyblue"         "lightskyblue1"        "lightskyblue2"       
[433] "lightskyblue3"        "lightskyblue4"        "lightslateblue"       "lightslategray"      
[437] "lightslategrey"       "lightsteelblue"       "lightsteelblue1"      "lightsteelblue2"     
[441] "lightsteelblue3"      "lightsteelblue4"      "lightyellow"          "lightyellow1"        
[445] "lightyellow2"         "lightyellow3"         "lightyellow4"         "limegreen"           
[449] "linen"                "magenta"              "magenta1"             "magenta2"            
[453] "magenta3"             "magenta4"             "maroon"               "maroon1"             
[457] "maroon2"              "maroon3"              "maroon4"              "mediumaquamarine"    
[461] "mediumblue"           "mediumorchid"         "mediumorchid1"        "mediumorchid2"       
[465] "mediumorchid3"        "mediumorchid4"        "mediumpurple"         "mediumpurple1"       
[469] "mediumpurple2"        "mediumpurple3"        "mediumpurple4"        "mediumseagreen"      
[473] "mediumslateblue"      "mediumspringgreen"    "mediumturquoise"      "mediumvioletred"     
[477] "midnightblue"         "mintcream"            "mistyrose"            "mistyrose1"          
[481] "mistyrose2"           "mistyrose3"           "mistyrose4"           "moccasin"            
[485] "navajowhite"          "navajowhite1"         "navajowhite2"         "navajowhite3"        
[489] "navajowhite4"         "navy"                 "navyblue"             "oldlace"             
[493] "olivedrab"            "olivedrab1"           "olivedrab2"           "olivedrab3"          
[497] "olivedrab4"           "orange"               "orange1"              "orange2"             
[501] "orange3"              "orange4"              "orangered"            "orangered1"          
[505] "orangered2"           "orangered3"           "orangered4"           "orchid"              
[509] "orchid1"              "orchid2"              "orchid3"              "orchid4"             
[513] "palegoldenrod"        "palegreen"            "palegreen1"           "palegreen2"          
[517] "palegreen3"           "palegreen4"           "paleturquoise"        "paleturquoise1"      
[521] "paleturquoise2"       "paleturquoise3"       "paleturquoise4"       "palevioletred"       
[525] "palevioletred1"       "palevioletred2"       "palevioletred3"       "palevioletred4"      
[529] "papayawhip"           "peachpuff"            "peachpuff1"           "peachpuff2"          
[533] "peachpuff3"           "peachpuff4"           "peru"                 "pink"                
[537] "pink1"                "pink2"                "pink3"                "pink4"               
[541] "plum"                 "plum1"                "plum2"                "plum3"               
[545] "plum4"                "powderblue"           "purple"               "purple1"             
[549] "purple2"              "purple3"              "purple4"              "red"                 
[553] "red1"                 "red2"                 "red3"                 "red4"                
[557] "rosybrown"            "rosybrown1"           "rosybrown2"           "rosybrown3"          
[561] "rosybrown4"           "royalblue"            "royalblue1"           "royalblue2"          
[565] "royalblue3"           "royalblue4"           "saddlebrown"          "salmon"              
[569] "salmon1"              "salmon2"              "salmon3"              "salmon4"             
[573] "sandybrown"           "seagreen"             "seagreen1"            "seagreen2"           
[577] "seagreen3"            "seagreen4"            "seashell"             "seashell1"           
[581] "seashell2"            "seashell3"            "seashell4"            "sienna"              
[585] "sienna1"              "sienna2"              "sienna3"              "sienna4"             
[589] "skyblue"              "skyblue1"             "skyblue2"             "skyblue3"            
[593] "skyblue4"             "slateblue"            "slateblue1"           "slateblue2"          
[597] "slateblue3"           "slateblue4"           "slategray"            "slategray1"          
[601] "slategray2"           "slategray3"           "slategray4"           "slategrey"           
[605] "snow"                 "snow1"                "snow2"                "snow3"               
[609] "snow4"                "springgreen"          "springgreen1"         "springgreen2"        
[613] "springgreen3"         "springgreen4"         "steelblue"            "steelblue1"          
[617] "steelblue2"           "steelblue3"           "steelblue4"           "tan"                 
[621] "tan1"                 "tan2"                 "tan3"                 "tan4"                
[625] "thistle"              "thistle1"             "thistle2"             "thistle3"            
[629] "thistle4"             "tomato"               "tomato1"              "tomato2"             
[633] "tomato3"              "tomato4"              "turquoise"            "turquoise1"          
[637] "turquoise2"           "turquoise3"           "turquoise4"           "violet"              
[641] "violetred"            "violetred1"           "violetred2"           "violetred3"          
[645] "violetred4"           "wheat"                "wheat1"               "wheat2"              
[649] "wheat3"               "wheat4"               "whitesmoke"           "yellow"              
[653] "yellow1"              "yellow2"              "yellow3"              "yellow4"             
[657] "yellowgreen"         

| Nice work!
  
  |============                                                                             |  14%
| Notarás que al final de la lista varios colores contienen la subcadena "yellow". Una manera de
| buscar todos los colores que contengan la subcadena "yellow", es usando la función grep().

...

|==============                                                                           |  16%
| Ve el uso de grep() usando la función help().

> ?grep()

| Not quite right, but keep trying. Or, type info() for more options.

> grep("yellow", colors())
[1] 259 415 443 444 445 446 447 652 653 654 655 656 657

| You're close...I can feel it! Try it again. Or, type info() for more options.

> grep("yellow", colors
+ 
+ )
Error in as.character(x) : 
  cannot coerce type 'closure' to vector of type 'character'
> grep("yellow", colors)
Error in as.character(x) : 
  cannot coerce type 'closure' to vector of type 'character'
> skip()

| Entering the following correct answer for you...

> help("grep")

| All that hard work is paying off!

  |=================                                                                        |  19%
| La función grep() toma al argumento pattern (una expresión regular), lee el argumento x (un
| vector de caracteres, o un objeto que puede ser convertido por la función as.character() a un
| vector de caracteres), y regresa las coincidencias de pattern dentro de x.

...

  |===================                                                                      |  22%
| Para buscar todos los colores que contengan la subcadena "yellow" ingresa grep("yellow",
| colors(), value=TRUE) en la línea de comandos.

> grep("yellow", colors(), values = TRUE)
Error in grep("yellow", colors(), values = TRUE) : 
  unused argument (values = TRUE)
> grep("yellow", colors(), value = TRUE)
 [1] "greenyellow"          "lightgoldenrodyellow" "lightyellow"          "lightyellow1"        
 [5] "lightyellow2"         "lightyellow3"         "lightyellow4"         "yellow"              
 [9] "yellow1"              "yellow2"              "yellow3"              "yellow4"             
[13] "yellowgreen"         

| You are amazing!

  |======================                                                                   |  24%
| Ahora sabes que R contiene 13 tipos de amarillos (yellow). Notarás que usaste el argumento value
| de la función grep(); esto se debe a que de no haberlo usado, grep() te hubiera regresado las
| posiciones en donde se encontraron coincidencias, en vez de las cadenas en donde las encontró.

...

  |========================                                                                 |  27%
| La lista de colores válidos es muy extensa. Obten su longitud.

> 
> length(colors())
[1] 657

| Nice work!

  |==========================                                                               |  30%
| Entonces ahora ya sabes que R tiene una gran lista de más de 650 colores que puedes usar por
| nombre.

...

  |=============================                                                            |  32%
| Para especificar un color usando componentes RGB, usa una cadena de la forma "#RRGGBB", donde
| RR, GG y BB son valores hexadecimales que especifican la cantidad de rojo, verde y azul,
| respectivamente.

...

  |===============================                                                          |  35%
| Si deseas hacer referencia a un índice de la paleta de colores mediante un entero, debes saber
| que existen ocho colores en la paleta por defecto.

...

  |==================================                                                       |  38%
| La función palette() es usada para ver o manipular la paleta de colores. La paleta de colores es
| usada cuando el parámetro col es usado con un valor numérico.

...

  |====================================                                                     |  41%
| Ingresa palette() para conocer la paleta por defecto.

> palette()
[1] "black"   "#DF536B" "#61D04F" "#2297E6" "#28E2E5" "#CD0BBC" "#F5C710" "gray62" 

| That's a job well done!
  
  |======================================                                                   |  43%
| Cada color es representado por un número entero; es decir, el número 1 representa al color
| negro, el 2 al rojo… y el 8 al gris. Ingresa plot(1:8, col=1:8, main="Colores por índice",
                                                    | pch=17, cex=3) en la línea de comandos.

> plot(1:8, col =1:8, main = "Colores por índice", pch = 17, cex = 3)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Great job!
  
  |=========================================                                                |  46%
| Como recordarás, el argumento main es usado para establecer el título de la gráfica, el
| argumento pch para establecer el símbolo con el que se graficará y el argumento cex para indicar
| el tamaño del símbolo usado para graficar.

...

|===========================================                                              |  49%
| Si usas un número más grande que ocho para graficar, los colores serán reciclados. Compruébalo:
  | ingresa plot(1:12, col=1:12, main="Colores reciclados", pch=18, cex=3) en la línea de comandos.

> plot(1:12, col =1:12, main = "Colores reciclados", pch = 18, cex = 3)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Excellent work!
  
  |==============================================                                           |  51%
| Si requieres un número más grande de colores para graficar, necesitarás acceder a una paleta más
| grande.

...

|================================================                                         |  54%
| Existen varias funciones incluidas en R que te regresan colores continuos (paletas de tamaño
                                                                             | variable), que le pueden dar aspectos diferentes a tus gráficas.

...

|===================================================                                      |  57%
| Algunos ejemplos de estas funciones son rainbow(), heat.colors(), topo.colors(), y
| terrain.colors().

...

|=====================================================                                    |  59%
| Para cambiar la paleta de colores por defecto por cualquiera de estas paletas, lo primero que
| debes hacer es crear una paleta. Para crear una nueva paleta basta con llamar a cualquiera de
| las funciones anteriormente mencionadas, mandando como argumento el número de colores que deseas
| que contenga la paleta. Por ejemplo, ingresa paleta_arcoiris <- rainbow(10) en la línea de
| comandos para crear una paleta con 10 colores.

> paleta_arcoiris <- rainbow(10)

| Your dedication is inspiring!
  
  |=======================================================                                  |  62%
| Ahora ve el contenido de la paleta que acabas de crear.

> paleta_arcoiris
[1] "#FF0000" "#FF9900" "#CCFF00" "#33FF00" "#00FF66" "#00FFFF" "#0066FF" "#3300FF" "#CC00FF"
[10] "#FF0099"

| You got it!
  
  |==========================================================                               |  65%
| Como verás, la nueva paleta que creaste usando rainbow(10) contiene colores que usan componentes
| RGB.

...

|============================================================                             |  68%
| Para cambiar la paleta de colores por la que creaste, ingresa palette(paleta_arcoiris) en la
| línea de comandos.

> palette(paleta_arcoiris)

| You nailed it! Good job!
  
  |===============================================================                          |  70%
| Verifica que los cambios se efectuaron en la paleta de colores.

> plot(1:10, col =1:10, main = "Colores nueva paleta", pch = 20, cex = 3)
Hit <Return> to see next plot: 
  Hit <Return> to see next plot: 
  
  | Not quite! Try again. Or, type info() for more options.

| Ingresa palette() en la línea de comandos.

> palette()
[1] "red"     "#FF9900" "#CCFF00" "#33FF00" "#00FF66" "cyan"    "#0066FF" "#3300FF" "#CC00FF"
[10] "#FF0099"

| That's correct!

  |=================================================================                        |  73%
| Ahora grafica usando la nueva paleta; ingresa plot(1:10, col=1:10, main="Paleta
| Arcoiris",pch=17, cex=3) en la línea de comandos.

> plot(1:10, col =1:10, main = "Colores Arcoiris", pch = 17, cex = 3)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Keep trying! Or, type info() for more options.

> plot(1:10, col =1:10, main = "Paleta Arcoiris", pch = 17, cex = 3)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| That's the answer I was looking for.

|===================================================================                      |  76%
| Prueba con otra paleta; ingresa paleta_calida <- heat.colors(10) para crear una paleta con 10
| colores cálidos.

> paleta_calida <- heat.colors(10)

| Perseverance, that's the answer.

  |======================================================================                   |  78%
| Ahora cambia la paleta actual por la nueva paleta creada.

> palette(paleta_calida)

| Great job!

  |========================================================================                 |  81%
| Y ahora grafica plot(1:10, col=1:10, main="Paleta Cálida",pch=17, cex=3) para ver los cambios.

> plot(1:10, col =1:10, main = "Paleta Cálida", pch = 17, cex = 3)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Nice work!

  |===========================================================================              |  84%
| Todas las diferentes paletas son muy bonitas y útiles de diferentes maneras, pero tal vez no es
| exactamente lo que estás buscando, o tal vez tú quieres tener más control sobre los colores.
| Para especificar los colores que quieras puedes crear un vector que contenga dichos colores. Por
| ejemplo, crea el vector ‘mi_paleta’ que contenga los colores "red", "green" y "#0019FFFF".

> mi_paleta <- c("red", "green", "0019FFFF")

| Not quite! Try again. Or, type info() for more options.

| Ingresa mi_paleta <- c("red", "green", "#0019FFFF") en la línea de comandos.

> mi_paleta <- c("red", "green", "#0019FFFF")

| You got it right!

  |=============================================================================            |  86%
| Y ahora puedes usar el vector directamente para graficar. Por ejemplo, ingresa plot(1:10,
| col=mi_paleta, main="Mi Paleta",pch=17, cex=3) en la línea de comandos.

> plot(1:10, col = mi_paleta, main = "Mi Paleta", pch = 17, cex = 3)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| All that practice is paying off!

  |===============================================================================          |  89%
| O establecerlo como tu nueva paleta. Ingresa palette(mi_paleta) en la línea de comandos.

> palette(mi_paleta)

| You are amazing!

  |==================================================================================       |  92%
| Y graficar haciendo referencia por índice. Ingresa plot(1:10, col=1:10, main="Mi Paleta",pch=17,
| cex=3) en la línea de comandos.

> plot(1:10, col = 1:10, main = "Mi Paleta", pch = 17, cex = 3)
Hit <Return> to see next plot: 
Hit <Return> to see next plot: 

| Excellent job!

  |====================================================================================     |  95%
| Si deseas regresar a la paleta de colores por defecto, debes de ingresar palette("default") en
| la línea de comandos. ¡Ahora hazlo!

> palette("default")

| Nice work!

  |=======================================================================================  |  97%
| Otras funciones que están disponibles para especificar colores son rgb(), hsv(), hcl() y gray(),
| pero su uso es diferente a las que usaste anteriormente. Si deseas usarlas consulta su página de
| ayuda.

...

  |=========================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has completado esta
| lección?

1: Si
2: No

Selection: 1