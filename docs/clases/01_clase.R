# Lección 1. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Ejecutar y guardar instrucciones
precio_cafe <- 1500
precio_cafe * 2

# 2. Distinguir números, texto y valores lógicos
precio <- 1500
unidades <- 3L
producto <- "Café"
disponible <- TRUE
typeof(precio)
typeof(unidades)
typeof(producto)
typeof(disponible)
as.numeric("1500")
# Al mezclar texto y números, el vector se convierte a texto.
mezcla <- c(1, "dos")
typeof(mezcla)
precio * unidades

# 3. Calcular con un vector y reconocer NA
# <- asigna el resultado de la derecha al nombre de la izquierda.
consumo <- c(2, 3, 1, 4, NA)
consumo
length(consumo)
is.na(consumo)
# Sin na.rm el resultado es NA: falta una observación.
mean(consumo)
mean(consumo, na.rm = TRUE)
sum(!is.na(consumo))
