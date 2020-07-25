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

Selection: 4
|                                                                                |   0%

| En esta lección conocerás cómo cargar conjuntos de datos en R y guardar estos conjuntos
| desde R.

...

|==                                                                              |   2%
| Una de las mejores cosas acerca de R es lo fácil que es añadir información desde otros
| programas.

...

|===                                                                             |   4%
| R puede importar conjuntos de datos desde archivos de texto, otros softwares de
| estadística y hasta hojas de cálculo. No es necesario tener una copia local del
| archivo. Tú puedes especificar la ubicación del archivo desde una url y R buscará el
| archivo en Internet.

...

|=====                                                                           |   7%
| La mayoría de los archivos que contienen información tienen un formato similar.
| Generalmente cada línea del archivo representa una observación o registro, por lo que
| cada línea contiene un conjunto de diferentes variables asociadas con la observación.

...

|=======                                                                         |   9%
| Algunas veces, diferentes variables son separadas por un carácter especial, llamado
| delimitador. Otra veces las variables son diferenciadas por su ubicación en cada línea.

...

|=========                                                                       |  11%
| En esta lección trabajarás con el archivo inmigintnalpry.csv el cual contiene la
| estimación de personas provenientes de otros países que llegan a cada uno de los
| estados de México. Si tienes suerte, el archivo se mostrará en algún editor; de lo
| contrario búscalo en el subdirectorio swirl_temp de tu directorio de trabajo y velo en
| una aplicación separada.

(Se ha copiado el archivo inmigintnalpry.csv a la ruta /home/ktavo/swirl_temp/inmigintnalpry.csv ).
...

|==========                                                                      |  13%
| Como podrás notar el primer renglón del archivo contiene los nombres de las columnas,
| en este caso los nombres de cada una de las variables de la observación; además, el
| archivo tiene delimitada cada variable de la observación por una coma.

...

|============                                                                    |  15%
| Para cargar este archivo a R, debes especificar que el primer renglón contiene los
| nombres de las columnas y que el delimitador es una coma.

...

|==============                                                                  |  17%
| Para hacer esto necesitarás especificar los argumentos header y sep en la función
| read.table. Header para especificar que el primer renglón contiene los nombres de la
| columnas (header=TRUE) y sep para especificar el delimitador (sep=",").

...

|================                                                                |  20%
| ¡Importa el archivo inmigintnalpry.csv! Ingresa datos <-
  | read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",", fileEncoding =
                 | "latin1") en la línea de comandos.

> read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep="," fileEncoding = "latin1")
Error: unexpected symbol in "read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep="," fileEncoding"
> read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep=",", fileEncoding = "latin1")
renglon  año            ent id_ent cvegeo    sexo edad inmigintnal
1         1 1990 Aguascalientes      1      1 Hombres    0           6
2         2 1990 Aguascalientes      1      1 Hombres    1          10
3         3 1990 Aguascalientes      1      1 Hombres    2          13
4         4 1990 Aguascalientes      1      1 Hombres    3          12
5         5 1990 Aguascalientes      1      1 Hombres    4          10
6         6 1990 Aguascalientes      1      1 Hombres    5           8
7         7 1990 Aguascalientes      1      1 Hombres    6           8
8         8 1990 Aguascalientes      1      1 Hombres    7           7
9         9 1990 Aguascalientes      1      1 Hombres    8           6
10       10 1990 Aguascalientes      1      1 Hombres    9           4
11       11 1990 Aguascalientes      1      1 Hombres   10           3
12       12 1990 Aguascalientes      1      1 Hombres   11           3
13       13 1990 Aguascalientes      1      1 Hombres   12           3
14       14 1990 Aguascalientes      1      1 Hombres   13           2
15       15 1990 Aguascalientes      1      1 Hombres   14           2
16       16 1990 Aguascalientes      1      1 Hombres   15           2
17       17 1990 Aguascalientes      1      1 Hombres   16           2
18       18 1990 Aguascalientes      1      1 Hombres   17           2
19       19 1990 Aguascalientes      1      1 Hombres   18           2
20       20 1990 Aguascalientes      1      1 Hombres   19           3
21       21 1990 Aguascalientes      1      1 Hombres   20           4
22       22 1990 Aguascalientes      1      1 Hombres   21           5
23       23 1990 Aguascalientes      1      1 Hombres   22           6
24       24 1990 Aguascalientes      1      1 Hombres   23           6
25       25 1990 Aguascalientes      1      1 Hombres   24           7
26       26 1990 Aguascalientes      1      1 Hombres   25           8
27       27 1990 Aguascalientes      1      1 Hombres   26           8
28       28 1990 Aguascalientes      1      1 Hombres   27           9
29       29 1990 Aguascalientes      1      1 Hombres   28           9
30       30 1990 Aguascalientes      1      1 Hombres   29           9
31       31 1990 Aguascalientes      1      1 Hombres   30           9
32       32 1990 Aguascalientes      1      1 Hombres   31           8
33       33 1990 Aguascalientes      1      1 Hombres   32           7
34       34 1990 Aguascalientes      1      1 Hombres   33           7
35       35 1990 Aguascalientes      1      1 Hombres   34           6
36       36 1990 Aguascalientes      1      1 Hombres   35           6
37       37 1990 Aguascalientes      1      1 Hombres   36           5
38       38 1990 Aguascalientes      1      1 Hombres   37           5
39       39 1990 Aguascalientes      1      1 Hombres   38           4
40       40 1990 Aguascalientes      1      1 Hombres   39           4
41       41 1990 Aguascalientes      1      1 Hombres   40           3
42       42 1990 Aguascalientes      1      1 Hombres   41           3
43       43 1990 Aguascalientes      1      1 Hombres   42           3
44       44 1990 Aguascalientes      1      1 Hombres   43           3
45       45 1990 Aguascalientes      1      1 Hombres   44           3
46       46 1990 Aguascalientes      1      1 Hombres   45           2
47       47 1990 Aguascalientes      1      1 Hombres   46           2
48       48 1990 Aguascalientes      1      1 Hombres   47           2
49       49 1990 Aguascalientes      1      1 Hombres   48           2
50       50 1990 Aguascalientes      1      1 Hombres   49           2
51       51 1990 Aguascalientes      1      1 Hombres   50           1
52       52 1990 Aguascalientes      1      1 Hombres   51           1
53       53 1990 Aguascalientes      1      1 Hombres   52           1
54       54 1990 Aguascalientes      1      1 Hombres   53           1
55       55 1990 Aguascalientes      1      1 Hombres   54           1
56       56 1990 Aguascalientes      1      1 Hombres   55           1
57       57 1990 Aguascalientes      1      1 Hombres   56           1
58       58 1990 Aguascalientes      1      1 Hombres   57           1
59       59 1990 Aguascalientes      1      1 Hombres   58           1
60       60 1990 Aguascalientes      1      1 Hombres   59           1
61       61 1990 Aguascalientes      1      1 Hombres   60           1
62       62 1990 Aguascalientes      1      1 Hombres   61           1
63       63 1990 Aguascalientes      1      1 Hombres   62           1
64       64 1990 Aguascalientes      1      1 Hombres   63           1
65       65 1990 Aguascalientes      1      1 Hombres   64           0
66       66 1990 Aguascalientes      1      1 Hombres   65           0
67       67 1990 Aguascalientes      1      1 Hombres   66           0
68       68 1990 Aguascalientes      1      1 Hombres   67           0
69       69 1990 Aguascalientes      1      1 Hombres   68           0
70       70 1990 Aguascalientes      1      1 Hombres   69           0
71       71 1990 Aguascalientes      1      1 Hombres   70           0
72       72 1990 Aguascalientes      1      1 Hombres   71           0
73       73 1990 Aguascalientes      1      1 Hombres   72           0
74       74 1990 Aguascalientes      1      1 Hombres   73           0
75       75 1990 Aguascalientes      1      1 Hombres   74           0
76       76 1990 Aguascalientes      1      1 Hombres   75           0
77       77 1990 Aguascalientes      1      1 Hombres   76           0
78       78 1990 Aguascalientes      1      1 Hombres   77           0
79       79 1990 Aguascalientes      1      1 Hombres   78           0
80       80 1990 Aguascalientes      1      1 Hombres   79           0
81       81 1990 Aguascalientes      1      1 Hombres   80           0
82       82 1990 Aguascalientes      1      1 Hombres   81           0
83       83 1990 Aguascalientes      1      1 Hombres   82           0
84       84 1990 Aguascalientes      1      1 Hombres   83           0
85       85 1990 Aguascalientes      1      1 Hombres   84           0
86       86 1990 Aguascalientes      1      1 Hombres   85           0
87       87 1990 Aguascalientes      1      1 Hombres   86           0
88       88 1990 Aguascalientes      1      1 Hombres   87           0
89       89 1990 Aguascalientes      1      1 Hombres   88           0
90       90 1990 Aguascalientes      1      1 Hombres   89           0
91       91 1990 Aguascalientes      1      1 Hombres   90           0
92       92 1990 Aguascalientes      1      1 Hombres   91           0
93       93 1990 Aguascalientes      1      1 Hombres   92           0
94       94 1990 Aguascalientes      1      1 Hombres   93           0
95       95 1990 Aguascalientes      1      1 Hombres   94           0
96       96 1990 Aguascalientes      1      1 Hombres   95           0
97       97 1990 Aguascalientes      1      1 Hombres   96           0
98       98 1990 Aguascalientes      1      1 Hombres   97           0
99       99 1990 Aguascalientes      1      1 Hombres   98           0
100     100 1990 Aguascalientes      1      1 Hombres   99           0
101     101 1990 Aguascalientes      1      1 Hombres  100           0
102     102 1990 Aguascalientes      1      1 Hombres  101           0
103     103 1990 Aguascalientes      1      1 Hombres  102           0
104     104 1990 Aguascalientes      1      1 Hombres  103           0
105     105 1990 Aguascalientes      1      1 Hombres  104           0
106     106 1990 Aguascalientes      1      1 Hombres  105           0
107     107 1990 Aguascalientes      1      1 Hombres  106           0
108     108 1990 Aguascalientes      1      1 Hombres  107           0
109     109 1990 Aguascalientes      1      1 Hombres  108           0
110     110 1990 Aguascalientes      1      1 Hombres  109           0
111     111 1990 Aguascalientes      1      1 Mujeres    0           6
112     112 1990 Aguascalientes      1      1 Mujeres    1           8
113     113 1990 Aguascalientes      1      1 Mujeres    2          10
114     114 1990 Aguascalientes      1      1 Mujeres    3           9
115     115 1990 Aguascalientes      1      1 Mujeres    4           7
116     116 1990 Aguascalientes      1      1 Mujeres    5           7
117     117 1990 Aguascalientes      1      1 Mujeres    6           6
118     118 1990 Aguascalientes      1      1 Mujeres    7           5
119     119 1990 Aguascalientes      1      1 Mujeres    8           4
120     120 1990 Aguascalientes      1      1 Mujeres    9           3
121     121 1990 Aguascalientes      1      1 Mujeres   10           3
122     122 1990 Aguascalientes      1      1 Mujeres   11           2
123     123 1990 Aguascalientes      1      1 Mujeres   12           2
124     124 1990 Aguascalientes      1      1 Mujeres   13           2
125     125 1990 Aguascalientes      1      1 Mujeres   14           2
[ reached 'max' / getOption("max.print") -- omitted 301935 rows ]

| Not exactly. Give it another go. Or, type info() for more options.

> read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",", fileEncoding ="latin1") 
renglon  año            ent id_ent cvegeo    sexo edad inmigintnal
1         1 1990 Aguascalientes      1      1 Hombres    0           6
2         2 1990 Aguascalientes      1      1 Hombres    1          10
3         3 1990 Aguascalientes      1      1 Hombres    2          13
4         4 1990 Aguascalientes      1      1 Hombres    3          12
5         5 1990 Aguascalientes      1      1 Hombres    4          10
6         6 1990 Aguascalientes      1      1 Hombres    5           8
7         7 1990 Aguascalientes      1      1 Hombres    6           8
8         8 1990 Aguascalientes      1      1 Hombres    7           7
9         9 1990 Aguascalientes      1      1 Hombres    8           6
10       10 1990 Aguascalientes      1      1 Hombres    9           4
11       11 1990 Aguascalientes      1      1 Hombres   10           3
12       12 1990 Aguascalientes      1      1 Hombres   11           3
13       13 1990 Aguascalientes      1      1 Hombres   12           3
14       14 1990 Aguascalientes      1      1 Hombres   13           2
15       15 1990 Aguascalientes      1      1 Hombres   14           2
16       16 1990 Aguascalientes      1      1 Hombres   15           2
17       17 1990 Aguascalientes      1      1 Hombres   16           2
18       18 1990 Aguascalientes      1      1 Hombres   17           2
19       19 1990 Aguascalientes      1      1 Hombres   18           2
20       20 1990 Aguascalientes      1      1 Hombres   19           3
21       21 1990 Aguascalientes      1      1 Hombres   20           4
22       22 1990 Aguascalientes      1      1 Hombres   21           5
23       23 1990 Aguascalientes      1      1 Hombres   22           6
24       24 1990 Aguascalientes      1      1 Hombres   23           6
25       25 1990 Aguascalientes      1      1 Hombres   24           7
26       26 1990 Aguascalientes      1      1 Hombres   25           8
27       27 1990 Aguascalientes      1      1 Hombres   26           8
28       28 1990 Aguascalientes      1      1 Hombres   27           9
29       29 1990 Aguascalientes      1      1 Hombres   28           9
30       30 1990 Aguascalientes      1      1 Hombres   29           9
31       31 1990 Aguascalientes      1      1 Hombres   30           9
32       32 1990 Aguascalientes      1      1 Hombres   31           8
33       33 1990 Aguascalientes      1      1 Hombres   32           7
34       34 1990 Aguascalientes      1      1 Hombres   33           7
35       35 1990 Aguascalientes      1      1 Hombres   34           6
36       36 1990 Aguascalientes      1      1 Hombres   35           6
37       37 1990 Aguascalientes      1      1 Hombres   36           5
38       38 1990 Aguascalientes      1      1 Hombres   37           5
39       39 1990 Aguascalientes      1      1 Hombres   38           4
40       40 1990 Aguascalientes      1      1 Hombres   39           4
41       41 1990 Aguascalientes      1      1 Hombres   40           3
42       42 1990 Aguascalientes      1      1 Hombres   41           3
43       43 1990 Aguascalientes      1      1 Hombres   42           3
44       44 1990 Aguascalientes      1      1 Hombres   43           3
45       45 1990 Aguascalientes      1      1 Hombres   44           3
46       46 1990 Aguascalientes      1      1 Hombres   45           2
47       47 1990 Aguascalientes      1      1 Hombres   46           2
48       48 1990 Aguascalientes      1      1 Hombres   47           2
49       49 1990 Aguascalientes      1      1 Hombres   48           2
50       50 1990 Aguascalientes      1      1 Hombres   49           2
51       51 1990 Aguascalientes      1      1 Hombres   50           1
52       52 1990 Aguascalientes      1      1 Hombres   51           1
53       53 1990 Aguascalientes      1      1 Hombres   52           1
54       54 1990 Aguascalientes      1      1 Hombres   53           1
55       55 1990 Aguascalientes      1      1 Hombres   54           1
56       56 1990 Aguascalientes      1      1 Hombres   55           1
57       57 1990 Aguascalientes      1      1 Hombres   56           1
58       58 1990 Aguascalientes      1      1 Hombres   57           1
59       59 1990 Aguascalientes      1      1 Hombres   58           1
60       60 1990 Aguascalientes      1      1 Hombres   59           1
61       61 1990 Aguascalientes      1      1 Hombres   60           1
62       62 1990 Aguascalientes      1      1 Hombres   61           1
63       63 1990 Aguascalientes      1      1 Hombres   62           1
64       64 1990 Aguascalientes      1      1 Hombres   63           1
65       65 1990 Aguascalientes      1      1 Hombres   64           0
66       66 1990 Aguascalientes      1      1 Hombres   65           0
67       67 1990 Aguascalientes      1      1 Hombres   66           0
68       68 1990 Aguascalientes      1      1 Hombres   67           0
69       69 1990 Aguascalientes      1      1 Hombres   68           0
70       70 1990 Aguascalientes      1      1 Hombres   69           0
71       71 1990 Aguascalientes      1      1 Hombres   70           0
72       72 1990 Aguascalientes      1      1 Hombres   71           0
73       73 1990 Aguascalientes      1      1 Hombres   72           0
74       74 1990 Aguascalientes      1      1 Hombres   73           0
75       75 1990 Aguascalientes      1      1 Hombres   74           0
76       76 1990 Aguascalientes      1      1 Hombres   75           0
77       77 1990 Aguascalientes      1      1 Hombres   76           0
78       78 1990 Aguascalientes      1      1 Hombres   77           0
79       79 1990 Aguascalientes      1      1 Hombres   78           0
80       80 1990 Aguascalientes      1      1 Hombres   79           0
81       81 1990 Aguascalientes      1      1 Hombres   80           0
82       82 1990 Aguascalientes      1      1 Hombres   81           0
83       83 1990 Aguascalientes      1      1 Hombres   82           0
84       84 1990 Aguascalientes      1      1 Hombres   83           0
85       85 1990 Aguascalientes      1      1 Hombres   84           0
86       86 1990 Aguascalientes      1      1 Hombres   85           0
87       87 1990 Aguascalientes      1      1 Hombres   86           0
88       88 1990 Aguascalientes      1      1 Hombres   87           0
89       89 1990 Aguascalientes      1      1 Hombres   88           0
90       90 1990 Aguascalientes      1      1 Hombres   89           0
91       91 1990 Aguascalientes      1      1 Hombres   90           0
92       92 1990 Aguascalientes      1      1 Hombres   91           0
93       93 1990 Aguascalientes      1      1 Hombres   92           0
94       94 1990 Aguascalientes      1      1 Hombres   93           0
95       95 1990 Aguascalientes      1      1 Hombres   94           0
96       96 1990 Aguascalientes      1      1 Hombres   95           0
97       97 1990 Aguascalientes      1      1 Hombres   96           0
98       98 1990 Aguascalientes      1      1 Hombres   97           0
99       99 1990 Aguascalientes      1      1 Hombres   98           0
100     100 1990 Aguascalientes      1      1 Hombres   99           0
101     101 1990 Aguascalientes      1      1 Hombres  100           0
102     102 1990 Aguascalientes      1      1 Hombres  101           0
103     103 1990 Aguascalientes      1      1 Hombres  102           0
104     104 1990 Aguascalientes      1      1 Hombres  103           0
105     105 1990 Aguascalientes      1      1 Hombres  104           0
106     106 1990 Aguascalientes      1      1 Hombres  105           0
107     107 1990 Aguascalientes      1      1 Hombres  106           0
108     108 1990 Aguascalientes      1      1 Hombres  107           0
109     109 1990 Aguascalientes      1      1 Hombres  108           0
110     110 1990 Aguascalientes      1      1 Hombres  109           0
111     111 1990 Aguascalientes      1      1 Mujeres    0           6
112     112 1990 Aguascalientes      1      1 Mujeres    1           8
113     113 1990 Aguascalientes      1      1 Mujeres    2          10
114     114 1990 Aguascalientes      1      1 Mujeres    3           9
115     115 1990 Aguascalientes      1      1 Mujeres    4           7
116     116 1990 Aguascalientes      1      1 Mujeres    5           7
117     117 1990 Aguascalientes      1      1 Mujeres    6           6
118     118 1990 Aguascalientes      1      1 Mujeres    7           5
119     119 1990 Aguascalientes      1      1 Mujeres    8           4
120     120 1990 Aguascalientes      1      1 Mujeres    9           3
121     121 1990 Aguascalientes      1      1 Mujeres   10           3
122     122 1990 Aguascalientes      1      1 Mujeres   11           2
123     123 1990 Aguascalientes      1      1 Mujeres   12           2
124     124 1990 Aguascalientes      1      1 Mujeres   13           2
125     125 1990 Aguascalientes      1      1 Mujeres   14           2
[ reached 'max' / getOption("max.print") -- omitted 301935 rows ]

| You're close...I can feel it! Try it again. Or, type info() for more options.

> 
> read.table("swirl_temp/inmigintnalpry.csv",header=TRUE,sep=",",fileEncoding ="latin1") 
    renglon  año            ent id_ent cvegeo    sexo edad inmigintnal
1         1 1990 Aguascalientes      1      1 Hombres    0           6
2         2 1990 Aguascalientes      1      1 Hombres    1          10
3         3 1990 Aguascalientes      1      1 Hombres    2          13
4         4 1990 Aguascalientes      1      1 Hombres    3          12
5         5 1990 Aguascalientes      1      1 Hombres    4          10
6         6 1990 Aguascalientes      1      1 Hombres    5           8
7         7 1990 Aguascalientes      1      1 Hombres    6           8
8         8 1990 Aguascalientes      1      1 Hombres    7           7
9         9 1990 Aguascalientes      1      1 Hombres    8           6
10       10 1990 Aguascalientes      1      1 Hombres    9           4
11       11 1990 Aguascalientes      1      1 Hombres   10           3
12       12 1990 Aguascalientes      1      1 Hombres   11           3
13       13 1990 Aguascalientes      1      1 Hombres   12           3
14       14 1990 Aguascalientes      1      1 Hombres   13           2
15       15 1990 Aguascalientes      1      1 Hombres   14           2
16       16 1990 Aguascalientes      1      1 Hombres   15           2
17       17 1990 Aguascalientes      1      1 Hombres   16           2
18       18 1990 Aguascalientes      1      1 Hombres   17           2
19       19 1990 Aguascalientes      1      1 Hombres   18           2
20       20 1990 Aguascalientes      1      1 Hombres   19           3
21       21 1990 Aguascalientes      1      1 Hombres   20           4
22       22 1990 Aguascalientes      1      1 Hombres   21           5
23       23 1990 Aguascalientes      1      1 Hombres   22           6
24       24 1990 Aguascalientes      1      1 Hombres   23           6
25       25 1990 Aguascalientes      1      1 Hombres   24           7
26       26 1990 Aguascalientes      1      1 Hombres   25           8
27       27 1990 Aguascalientes      1      1 Hombres   26           8
28       28 1990 Aguascalientes      1      1 Hombres   27           9
29       29 1990 Aguascalientes      1      1 Hombres   28           9
30       30 1990 Aguascalientes      1      1 Hombres   29           9
31       31 1990 Aguascalientes      1      1 Hombres   30           9
32       32 1990 Aguascalientes      1      1 Hombres   31           8
33       33 1990 Aguascalientes      1      1 Hombres   32           7
34       34 1990 Aguascalientes      1      1 Hombres   33           7
35       35 1990 Aguascalientes      1      1 Hombres   34           6
36       36 1990 Aguascalientes      1      1 Hombres   35           6
37       37 1990 Aguascalientes      1      1 Hombres   36           5
38       38 1990 Aguascalientes      1      1 Hombres   37           5
39       39 1990 Aguascalientes      1      1 Hombres   38           4
40       40 1990 Aguascalientes      1      1 Hombres   39           4
41       41 1990 Aguascalientes      1      1 Hombres   40           3
42       42 1990 Aguascalientes      1      1 Hombres   41           3
43       43 1990 Aguascalientes      1      1 Hombres   42           3
44       44 1990 Aguascalientes      1      1 Hombres   43           3
45       45 1990 Aguascalientes      1      1 Hombres   44           3
46       46 1990 Aguascalientes      1      1 Hombres   45           2
47       47 1990 Aguascalientes      1      1 Hombres   46           2
48       48 1990 Aguascalientes      1      1 Hombres   47           2
49       49 1990 Aguascalientes      1      1 Hombres   48           2
50       50 1990 Aguascalientes      1      1 Hombres   49           2
51       51 1990 Aguascalientes      1      1 Hombres   50           1
52       52 1990 Aguascalientes      1      1 Hombres   51           1
53       53 1990 Aguascalientes      1      1 Hombres   52           1
54       54 1990 Aguascalientes      1      1 Hombres   53           1
55       55 1990 Aguascalientes      1      1 Hombres   54           1
56       56 1990 Aguascalientes      1      1 Hombres   55           1
57       57 1990 Aguascalientes      1      1 Hombres   56           1
58       58 1990 Aguascalientes      1      1 Hombres   57           1
59       59 1990 Aguascalientes      1      1 Hombres   58           1
60       60 1990 Aguascalientes      1      1 Hombres   59           1
61       61 1990 Aguascalientes      1      1 Hombres   60           1
62       62 1990 Aguascalientes      1      1 Hombres   61           1
63       63 1990 Aguascalientes      1      1 Hombres   62           1
64       64 1990 Aguascalientes      1      1 Hombres   63           1
65       65 1990 Aguascalientes      1      1 Hombres   64           0
66       66 1990 Aguascalientes      1      1 Hombres   65           0
67       67 1990 Aguascalientes      1      1 Hombres   66           0
68       68 1990 Aguascalientes      1      1 Hombres   67           0
69       69 1990 Aguascalientes      1      1 Hombres   68           0
70       70 1990 Aguascalientes      1      1 Hombres   69           0
71       71 1990 Aguascalientes      1      1 Hombres   70           0
72       72 1990 Aguascalientes      1      1 Hombres   71           0
73       73 1990 Aguascalientes      1      1 Hombres   72           0
74       74 1990 Aguascalientes      1      1 Hombres   73           0
75       75 1990 Aguascalientes      1      1 Hombres   74           0
76       76 1990 Aguascalientes      1      1 Hombres   75           0
77       77 1990 Aguascalientes      1      1 Hombres   76           0
78       78 1990 Aguascalientes      1      1 Hombres   77           0
79       79 1990 Aguascalientes      1      1 Hombres   78           0
80       80 1990 Aguascalientes      1      1 Hombres   79           0
81       81 1990 Aguascalientes      1      1 Hombres   80           0
82       82 1990 Aguascalientes      1      1 Hombres   81           0
83       83 1990 Aguascalientes      1      1 Hombres   82           0
84       84 1990 Aguascalientes      1      1 Hombres   83           0
85       85 1990 Aguascalientes      1      1 Hombres   84           0
86       86 1990 Aguascalientes      1      1 Hombres   85           0
87       87 1990 Aguascalientes      1      1 Hombres   86           0
88       88 1990 Aguascalientes      1      1 Hombres   87           0
89       89 1990 Aguascalientes      1      1 Hombres   88           0
90       90 1990 Aguascalientes      1      1 Hombres   89           0
91       91 1990 Aguascalientes      1      1 Hombres   90           0
92       92 1990 Aguascalientes      1      1 Hombres   91           0
93       93 1990 Aguascalientes      1      1 Hombres   92           0
94       94 1990 Aguascalientes      1      1 Hombres   93           0
95       95 1990 Aguascalientes      1      1 Hombres   94           0
96       96 1990 Aguascalientes      1      1 Hombres   95           0
97       97 1990 Aguascalientes      1      1 Hombres   96           0
98       98 1990 Aguascalientes      1      1 Hombres   97           0
99       99 1990 Aguascalientes      1      1 Hombres   98           0
100     100 1990 Aguascalientes      1      1 Hombres   99           0
101     101 1990 Aguascalientes      1      1 Hombres  100           0
102     102 1990 Aguascalientes      1      1 Hombres  101           0
103     103 1990 Aguascalientes      1      1 Hombres  102           0
104     104 1990 Aguascalientes      1      1 Hombres  103           0
105     105 1990 Aguascalientes      1      1 Hombres  104           0
106     106 1990 Aguascalientes      1      1 Hombres  105           0
107     107 1990 Aguascalientes      1      1 Hombres  106           0
108     108 1990 Aguascalientes      1      1 Hombres  107           0
109     109 1990 Aguascalientes      1      1 Hombres  108           0
110     110 1990 Aguascalientes      1      1 Hombres  109           0
111     111 1990 Aguascalientes      1      1 Mujeres    0           6
112     112 1990 Aguascalientes      1      1 Mujeres    1           8
113     113 1990 Aguascalientes      1      1 Mujeres    2          10
114     114 1990 Aguascalientes      1      1 Mujeres    3           9
115     115 1990 Aguascalientes      1      1 Mujeres    4           7
116     116 1990 Aguascalientes      1      1 Mujeres    5           7
117     117 1990 Aguascalientes      1      1 Mujeres    6           6
118     118 1990 Aguascalientes      1      1 Mujeres    7           5
119     119 1990 Aguascalientes      1      1 Mujeres    8           4
120     120 1990 Aguascalientes      1      1 Mujeres    9           3
121     121 1990 Aguascalientes      1      1 Mujeres   10           3
122     122 1990 Aguascalientes      1      1 Mujeres   11           2
123     123 1990 Aguascalientes      1      1 Mujeres   12           2
124     124 1990 Aguascalientes      1      1 Mujeres   13           2
125     125 1990 Aguascalientes      1      1 Mujeres   14           2
 [ reached 'max' / getOption("max.print") -- omitted 301935 rows ]

| That's not the answer I was looking for, but try again. Or, type info() for more
| options.

> info()

| When you are at the R prompt (>):
  | -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you
| do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> skip()

| Entering the following correct answer for you...

> datos <- read.table("swirl_temp/inmigintnalpry.csv",header=TRUE, sep=",", fileEncoding = "latin1")

| Your dedication is inspiring!
  
  |=================                                                               |  22%
| Como podrás notar usaste el argumento fileEncoding; esto debido a que de no usarlo R no
| podría importar el archivo, puesto que la segunda cadena del archivo: año, no es una
| cadena válida para el tipo de codificación que read.table usa por defecto. Para poder
| leer el archivo basta con especificar el argumento fileEncoding. De no especificarlo R
| te indicará que hay un error.

...

|===================                                                             |  24%
| Intenta usar datos_2 <- read.table("swirl_temp/inmigintnalpry.csv", header=TRUE,
                                     | sep=","). Debido a que el archivo inmigintnalpry.csv contiene caracteres especiales
| como la ñ, R PUEDE MOSTRARTE UN ERROR. Si R te muestra el error, ingresa ok() en la
| línea de comandos para continuar.

> datos_2 <- read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep = ",")
Error in make.names(col.names, unique = TRUE) : 
  invalid multibyte string 2
> ok()

| Nice work!
  
  |=====================                                                           |  26%
| Este error es muy común cuando intentas leer archivos que su contenido está en español;
| esto se debe a que usa otra codificación para poder abarcar más símbolos que no usan
| otros idiomas, como en este caso la ñ. Para poder leer archivos que contengan ñ, basta
| con especificar el argumento fileEncoding, el cual indica la codificación del archivo a
| importar; en este caso, usarás fileEncoding = "latin1".

...

|=======================                                                         |  28%
| Comúnmente las opciones más importantes son sep y header. Casi siempre debes saber el
| campo separador y si hay un campo header.

...

|========================                                                        |  30%
| Ahora ve lo que contiene 'datos'. Para hacer esto usarás la función View(). Si te
| encuentras en Rstudio simplemente puedes presionar el nombre de la variable datos en el
| apartado Entorno ('Environment') y te mostrará su contenido. Presiona la variable datos
| en Rstudio o ingresa View(datos) en la línea de comandos.

> View(datos)

| You got it!
  
  |==========================                                                      |  33%
| ¡Como podrás notar el archivo contiene 302060 observaciones!
  
  ...

|============================                                                    |  35%
| Es importante saber que no solo existe read.table(). R además incluye un conjunto de
| funciones que llaman a read.table() con diferentes opciones por defecto para valores
| como sep y header, y algunos otros. En la mayoría de los casos encontrarás que puedes
| usar read.csv() para archivos separados por comas o read.delim() para archivos
| delimitados por TAB sin especificar otras opciones.

...

|==============================                                                  |  37%
| La mayoría de las veces deberías ser capaz de cargar archivos de texto en R con la
| función read.table(). Pero algunas veces serás proveído con un archivo de texto que no
| pueda ser leído correctamente con esta función.

...

|===============================                                                 |  39%
| Si estás en Europa y usas comas para indicar punto decimal en los números, entonces
| puedes usar read.cvs2() y read.delim2().

...

|=================================                                               |  41%
| Una manera de agilizar la lectura de datos es usando el parámetro colClasses de la
| función read.table().

...

|===================================                                             |  43%
| Este parámetro recibe un vector, el cual describe cada uno de los tipos por columna que
| va a leer. Esto agiliza la lectura debido a que read.table() normalmente lee toda la
| información y después revisa cada una de las columnas, y decide conforme a lo que vio
| de qué tipo es cada columna, y al indicar el parámetro colClasses le dices a la función
| read.table() de qué tipo son los datos que va a ver, con lo que te evitas el chequeo
| para saber el tipo de cada columna.

...

|=====================================                                           |  46%
| Puedes averiguar la clase de las columnas de manera fácil cuando tienes archivos
| grandes.

...

|======================================                                          |  48%
| Lo que puedes hacer es indicarle a read.table() que solo lea los primeros 100 renglones
| del archivo; esto lo haces indicando el parámetro nrow. Cabe recordar que debes
| especificar la codificación del archivo, debido a que usa caracteres especiales,
| también que el primer renglón son los nombres de la columnas y que el delimitador es
| una coma. Ingresa inicial <- read.table("swirl_temp/inmigintnalpry.csv", header=TRUE,
                                          | sep=",", fileEncoding = "latin1", nrow = 100) en la línea de comandos.

> inicial <- read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep = ",", fileEncoding = "latin1", nrow = 100)

| You are amazing!
  
  |========================================                                        |  50%
| Con esto has conseguido leer las primeras 100 observaciones.

...

|==========================================                                      |  52%
| Después usa la función sapply mandándole como parámetros el objeto inicial (el cual
                                                                              | contiene las 100 observaciones) y la función class(). Ingresa clases <- sapply(inicial,
                                                                                                                                                               | class) en la línea de comandos.

> clases <- sapply(inicial, class)

| All that hard work is paying off!
  
  |===========================================                                     |  54%
| Con esto lo que conseguiste fue aplicar la función class() a cada una de las columnas
| del objeto inicial. La función class() es una función que determina la clase o tipo de
| un objeto. Entonces los tipos de cada una de las columnas fueron guardados en el objeto
| clases.

...

|=============================================                                   |  57%
| Para ver el contenido del objeto 'clases', basta con escribir clases en la línea de
| comandos.

> classes
Error: object 'classes' not found
> clases
renglon         año         ent      id_ent      cvegeo        sexo        edad 
"integer"   "integer" "character"   "integer"   "integer" "character"   "integer" 
inmigintnal 
"numeric" 

| That's a job well done!

  |===============================================                                 |  59%
| Por último, con este vector de clases, leerás todo el archivo usando la función
| read.table, pero pasándole el argumento colClasses. Ingresa datos <-
| read.table("swirl_temp/inmigintnalpry.csv", header=TRUE, sep=",", fileEncoding =
| "latin1", colClasses=clases) en la línea de comandos.

> datos <- read.table("swirl_temp/inmigintnalpry.csv", header = TRUE, sep = ",", fileEncoding = "latin1", colClasses = clases)

| Keep working like that and you'll get there!
  
  |=================================================                               |  61%
| Como podrás notar el tiempo de lectura mejoró significativamente usando este truco.

...

|==================================================                              |  63%
| Si deseas guardar objetos, la manera más simple es usando la función save(). Por
| ejemplo, puedes usar el siguiente comando para salvar el objeto ‘datos’ y el objeto
| ‘clases’ en el archivo swirl_temp/datos_inmigrates.RData. Ingresa save(datos, clases,
                                                                         | file="swirl_temp/datos_inmigrates.RData") en la línea de comandos.

> save(datos, clases, file="swirl_temp/datos_inmigrantes.RData")

| One more time. You can do it! Or, type info() for more options.

> save(datos, clases, file="swirl_temp/datos_inmigrates.RData")

| Keep working like that and you'll get there!

  |====================================================                            |  65%
| La función save() escribe una representación externa de los objetos especificados a un
| archivo señalado. Además, como ya te habrás dado cuenta, tú puedes guardar múltiples
| objetos en el mismo archivo, tan solo al listarlos en la función save().

...

  |======================================================                          |  67%
| Es importante notar que en R, las rutas de archivo siempre son especificadas con
| diagonales ("/"), aun estando en Microsoft Windows. Así que para salvar este archivo al
| directorio "C:\Documents and Settings\Mi Usuario\Mis Documentos\datos_inmigrates.RData,
| solo usarías el siguiente comando: save(datos,file="C:/Documents and Settings/Mi
| Usuario/Mis Documentos/datos_inmigrates.RData").

...

  |========================================================                        |  70%
| También es importante notar que el argumento file debe ser explícitamente nombrado.

...

  |=========================================================                       |  72%
| Ahora que has guardado los objetos 'datos' y 'clases' en un archivo, puedes borrarlos.
| Introduce rm(datos,clases) en la línea de comandos.

> rm(datos, clases)

| That's correct!
  
  |===========================================================                     |  74%
| Y si ahora usas la función ls(), la cual como recordarás muestra qué conjuntos de datos
| y funciones un usuario ha definido, verás que no están presentes los objetos datos y
| clases. Ingresa ls() en la línea de comandos.

> ls
function (name, pos = -1L, envir = as.environment(pos), all.names = FALSE, 
          pattern, sorted = TRUE) 
{
  if (!missing(name)) {
    pos <- tryCatch(name, error = function(e) e)
    if (inherits(pos, "error")) {
      name <- substitute(name)
      if (!is.character(name)) 
        name <- deparse(name)
      warning(gettextf("%s converted to character string", 
                       sQuote(name)), domain = NA)
      pos <- name
    }
  }
  all.names <- .Internal(ls(envir, all.names, sorted))
  if (!missing(pattern)) {
    if ((ll <- length(grep("[", pattern, fixed = TRUE))) && 
        ll != length(grep("]", pattern, fixed = TRUE))) {
      if (pattern == "[") {
        pattern <- "\\["
        warning("replaced regular expression pattern '[' by  '\\\\['")
      }
      else if (length(grep("[^\\\\]\\[<-", pattern))) {
        pattern <- sub("\\[<-", "\\\\\\[<-", pattern)
        warning("replaced '[<-' by '\\\\[<-' in regular expression pattern")
      }
    }
    grep(pattern, all.names, value = TRUE)
  }
  else all.names
}
<bytecode: 0x5611fd370df8>
  <environment: namespace:base>
  
  | Not quite right, but keep trying. Or, type info() for more options.

> ls()
[1] "camioneta"          "carro"              "clases"             "cochera"           
[5] "datos"              "display_swirl_file" "find_course"        "inicial"           
[9] "mi_arreglo"         "mi_matriz"          "mi_vector"          "ok"                

| All that practice is paying off!
  
  |=============================================================                   |  76%
| Ahora, puedes fácilmente cargar los objetos ‘datos’ y ‘clases’ devuelta a R con la
| función load(). Solo debes especificar el nombre del archivo donde los guardaste.
| Ingresa load("swirl_temp/datos_inmigrates.RData") en la línea de comandos.

> load("swirl_temp/datos_inmigrates.RData")

| Perseverance, that's the answer.

  |===============================================================                 |  78%
| Y si ahora usas la función ls(), verás que están presentes los objetos 'datos' y
| 'clases'. Ingresa ls() en la línea de comandos.

> ls()
 [1] "camioneta"          "carro"              "clases"             "cochera"           
 [5] "datos"              "display_swirl_file" "find_course"        "inicial"           
 [9] "mi_arreglo"         "mi_matriz"          "mi_vector"          "ok"                

| Keep working like that and you'll get there!
  
  |================================================================                |  80%
| Es importante saber que los archivos guardados en R funcionarán en todas las
| plataformas; es decir, archivos guardados en Linux funcionarán si son cargados desde
| Windows o Mac OS X.

...

|==================================================================              |  83%
| Si deseas guardar cada uno de los objetos de tu espacio de trabajo (workspace), puedes
| hacerlo usando la función save.image(). De hecho, cuando salgas de la session de R, se
| te preguntará si deseas salvar tu actual espacio de trabajo (workspace). Si señalas que
| sí lo deseas, tu espacio de trabajo será guardado de la misma manera que usar esta
| función.

...

|====================================================================            |  85%
| Por último, al igual que para importar datos existe la función read.table(), para
| exportar datos a un archivo de texto existe la función write.table().

...

|======================================================================          |  87%
| Normalmente los datos a exportar son data frames y matrices.

...

|=======================================================================         |  89%
| Para exportar un objeto a un archivo basta con escribir la función write.table() y como
| argumento el nombre del objeto, además del nombre del archivo donde se guardará.
| Ingresa write.table(datos, file="swirl_temp/datos.txt") en la línea de comandos.

> write.table(datos, file="swirl_temp//datos.txt")

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

> write.table(datos, file="swirl_temp/datos.txt")

| All that hard work is paying off!
  
  |=========================================================================       |  91%
| Si tienes suerte, te mostraré el archivo datos.txt en algún editor; de lo contrario,
| búscalo en el subdirectorio swirl_temp de tu directorio de trabajo y velo en una
| aplicación separada.

...

|===========================================================================     |  93%
| Como podrás notar el archivo datos.txt no es igual al archivo inmigintnalpry.csv que al
| inicio de esta lección te mostré. Una de las principales razones es que para escribir
| el objeto datos no especificaste un delimitador (sep) y por defecto R delimitó con
| espacios.

...

|=============================================================================   |  96%
| Al igual que con la función read.table(), R incluye un conjunto de funciones que llaman
| a write.table() con diferentes opciones por defecto, como lo son write.csv() y
| write.csv2().

...

|==============================================================================  |  98%
| Si deseas, puedes jugar con las funciones write.*() para lograr que datos.txt sea
| identico a inmigintnalpry.csv. Recuerda que para ver los parámetros de write.*() puedes
| usar help(); por ejemplo, help(write.csv).

...

|================================================================================| 100%
| Has concluido la lección. ¿Te gustaría que se le notificará a Coursera que has
| completado esta lección?
  
  1: No
2: Si

Selection: 2