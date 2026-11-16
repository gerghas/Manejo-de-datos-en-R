# ---- Manual de Practicas (Parte 2)

-----------------------------------------------------------------------------------------------------------


# --- 2.1. Variables y Constantes
# --- En R base, las variables permiten almacenar estructuras de datos dinámicas 
# --- usando el operador <-, mientras que las constantes representan valores inmutables predefinidos 
# --- por el sistema.

# --- Asignación de Variables ---
edad_estudiante <- 21
nombre_curso <- "Estadística y R"
estatus_activo <- TRUE

# --- Uso de Constantes Nativas ---
valor_pi <- pi           # Constante Pi
abecedario <- LETTERS    # Vectores constantes predefinidos (letras mayúsculas)

# Inspección de variables en consola
print(edad_estudiante)
print(valor_pi)

-----------------------------------------------------------------------------------------------------------

# --- 2.2. Operadores Aritméticos
# --- R permite realizar operaciones aritméticas elementales y avanzadas de manera directa entre escalares o 
# --- vectores.

# Definición de variables operativas
num_a <- 17
num_b <- 5

# Operaciones básicas
suma          <- num_a + num_b
resta         <- num_a - num_b
multiplicacion<- num_a * num_b
division      <- num_a / num_b
potencia      <- num_a^num_b
modulo        <- num_a %% num_b   # Residuo de la división
div_entera    <- num_a %/% num_b  # Cociente entero

# Imprimir resultados
cat("Suma:", suma, "\n")
cat("Potencia:", potencia, "\n")
cat("Residuo (Módulo):", modulo, "\n")
cat("División entera:", div_entera, "\n")

-----------------------------------------------------------------------------------------------------------

# --- 2.3. Vectores
# --- El vector es la estructura unidimensional atómica sobre la cual se construye gran parte del paradigma 
# --- de programación vectorizada en R. Todos sus elementos deben ser del mismo tipo.

# Vector de datos numéricos (Calificaciones)
calificaciones <- c(85, 92, 78, 64, 89)

# Vector de tipo carácter (Nombres de alumnos)
alumnos <- c("Ana", "Alberto", "Patricia", "Gerardo", "Rafael")

# Vectorización: operación directa sobre todos los elementos
calificaciones_curvadas <- calificaciones + 3

# Indexación (Nota: En R los índices comienzan en 1)
primer_alumno <- alumnos[1]
subconjunto_notas <- calificaciones[2:4]

# Salida de resultados
print(calificaciones_curvadas)
print(primer_alumno)
print(subconjunto_notas)

-----------------------------------------------------------------------------------------------------------

# --- 2.4. Operadores Lógicos
# --- Los operadores lógicos evalúan expresiones relacionales y devuelven valores booleanos (TRUE o FALSE), 
# --- siendo fundamentales para el filtrado de datos y control de flujo.

notas <- c(70, 85, 45, 95, 58)

# Evaluaciones relacionales
aprobados <- notas >= 60  # Devuelve vector de booleanos

# Combinación con operadores lógicos AND (&) y OR (|)
notables <- (notas >= 80) & (notas < 95)
revision <- (notas < 60) | (notas == 60)

print(aprobados)
print(notables)

-----------------------------------------------------------------------------------------------------------

# --- 2.5. Funciones (Nativas y Personalizadas)
# --- Las funciones permiten modularizar el código. R incluye funciones estadísticas predefinidas y la 
# --- sintaxis function() para crear algoritmos a medida.

# 1. Uso de Funciones Nativas de R Base
datos <- c(14, 25, 38, 42, 19, 55)

media_datos <- mean(datos)
max_datos   <- max(datos)
largo_datos <- length(datos)

cat("Media:", media_datos, "| Máximo:", max_datos, "| Total de elementos:", largo_datos, "\n")

# 2. Definición de una Función Personalizada
# Función para calcular el Índice de Masa Corporal (IMC)
calcular_imc <- function(peso_kg, altura_m) {
  if (altura_m <= 0) {
    stop("La altura debe ser mayor a cero.")
  }
  imc <- peso_kg / (altura_m^2)
  return(imc)
}

# Ejecución de la función personalizada
resultado_imc <- calcular_imc(peso_kg = 68, altura_m = 1.72)
cat("IMC calculado:", round(resultado_imc, 2), "\n")

-----------------------------------------------------------------------------------------------------------

# --- 2.6. Sentencias de Repetición (Bucles)
# --- Los bucles permiten la ejecución iterativa de instrucciones. En R base se destacan las 
# --- estructuras for y while.

# --- Bucle FOR ---
# Iteración sobre los elementos de un vector de nombres
estudiantes <- c("Juan", "María", "Pedro")

for (estudiante in estudiantes) {
  cat("Procesando reporte para el alumno:", estudiante, "\n")
}

# --- Bucle WHILE ---
# Iteración condicional (contador decreciente)
control_evaluacion <- 3

while (control_evaluacion > 0) {
  cat("Intentos restantes de validación:", control_evaluacion, "\n")
  control_evaluacion <- control_evaluacion - 1
}
cat("Proceso de validación finalizado.\n")

-----------------------------------------------------------------------------------------------------------

# --- 2.7. Listas
# --- Dando continuidad a las estructuras de datos en R base, una lista (list) es la estructura más 
# --- flexible del lenguaje. A diferencia de los vectores, permite agrupar elementos de diferentes tipos y 
# --- longitudes (escalares, vectores, valores lógicos o incluso otras listas) dentro de un mismo objeto.

# Creación de una lista heterogénea integrando variables y vectores previos
expediente_grupo <- list(
  materia = nombre_curso,
  posgrado = "Maestría en Inteligencia Artificial",
  alumnos_inscritos = alumnos,
  calificaciones_base = calificaciones,
  activo = estatus_activo
)

# Acceso a los elementos de la lista (mediante $ o dobles corchetes [[]])
print(expediente_grupo$materia)
print(expediente_grupo[["alumnos_inscritos"]][4]) # Accede a "Gerardo"

# Agregar dinámicamente un nuevo elemento a la lista
expediente_grupo$promedio_grupo <- mean(calificaciones)
cat("Promedio general registrado en lista:", expediente_grupo$promedio_grupo, "\n")

-----------------------------------------------------------------------------------------------------------

# --- 2.8. Matrices
# --- Una matriz (matrix) es una estructura bidimensional (organizada en filas y columnas) en la que 
# --- todos los elementos deben ser del mismo tipo (generalmente numérico). Se construyen mediante la 
# --- función nativa matrix() y permiten realizar cálculos algebraicos y estadísticos por dimensión.

# Calificaciones de 3 unidades evaluadas para los 5 alumnos (15 datos en total)
notas_unidades <- c(85, 88, 90,   # Ana
                    92, 90, 94,   # Alberto
                    78, 80, 82,   # Patricia
                    64, 70, 68,   # Gerardo
                    89, 91, 93)   # Rafael

# Creación de la matriz (5 filas x 3 columnas, llenado por fila)
matriz_calificaciones <- matrix(notas_unidades, nrow = 5, ncol = 3, byrow = TRUE)

# Asignación de nombres a filas (usando el vector 'alumnos') y columnas
rownames(matriz_calificaciones) <- alumnos
colnames(matriz_calificaciones) <- c("Unidad_1", "Unidad_2", "Unidad_3")

# Inspección y operaciones matriciales en R base
print(matriz_calificaciones)

# Calcular el promedio por alumno (filas) y por unidad (columnas)
promedio_alumno <- rowMeans(matriz_calificaciones)
promedio_unidad <- colMeans(matriz_calificaciones)

print(promedio_alumno)
print(promedio_unidad)

-----------------------------------------------------------------------------------------------------------

# --- 2.9. Data Frames
# --- El data.frame es la estructura tabular fundamental para el análisis de datos y el aprendizaje 
# --- automático en R. Internamente opera como una lista de vectores de igual longitud, lo que permite 
# --- que cada columna almacene un tipo de dato distinto (texto, numérico, lógico).

# Creación del Data Frame integrando vectores y promedios calculados
df_alumnos <- data.frame(
  Matricula = 202601:202605,
  Alumno = alumnos,
  Edad = c(24, 26, 23, 27, 25),
  Promedio_Final = round(promedio_alumno, 1),
  Aprobado = promedio_alumno >= 70,
  stringsAsFactors = FALSE
)

# Exploración de la estructura y resumen estadístico con R base
str(df_alumnos)
summary(df_alumnos)

# Filtrado y subconjuntos (Subsetting) usando operadores lógicos
alumnos_destacados <- df_alumnos[df_alumnos$Promedio_Final >= 85, c("Alumno", "Promedio_Final")]
print(alumnos_destacados)

-----------------------------------------------------------------------------------------------------------

# --- 2.10. Markdown
# --- R Markdown (extensión .Rmd) integra texto narrativo formateado en Markdown con bloques de 
# --- código R (chunks) delimitados por ```{r}. Al compilar el documento (proceso conocido como Knit), 
# --- R ejecuta las instrucciones e incrusta los resultados directamente en un reporte 
# --- final (HTML, PDF o Word), garantizando reproducibilidad científica.

# --- Ubicación y activación del botón Knit en RStudio:
# --- El botón Knit (que tiene el icono de un ovillo de lana azul) se encuentra en la barra de 
# --- herramientas superior del panel de edición de código (arriba a la izquierda, justo encima de donde 
# --- escribes tu texto). Si a veces no aparece o está deshabilitado, se debe a una de estas razones comunes:

# --- Cómo encontrarlo o habilitarlo: Verifica que el archivo esté guardado con la extensión correcta. 
# --- Si tu pestaña dice algo como Untitled1 o el archivo tiene extensión .R (en lugar de .Rmd), RStudio 
# --- no mostrará el botón Knit.

# --- Solución: Ve a File > Save As... y asegúrate de guardarlo exactamente con el nombre reporte.Rmd.

# --- A continuación se documenta el ejemplo funcional de un bloque en .Rmd utilizando exclusivamente 
# --- código nativo de R base:

## Resumen de Desempeño Académico

En el siguiente bloque se procesan los registros de los alumnos mediante R base:

```{r resumen_grupo, echo=TRUE}
# Definición de datos en R base
alumnos <- c("Ana", "Alberto", "Patricia", "Gerardo", "Rafael")
promedios <- c(87.7, 92.0, 80.0, 67.3, 91.0)
tabla_resultados <- data.frame(Alumno = alumnos, Promedio = promedios)

# Mostrar tabla en el reporte
print(tabla_resultados)
```
-----------------------------------------------------------------------------------------------------------
