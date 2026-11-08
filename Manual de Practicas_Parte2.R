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
