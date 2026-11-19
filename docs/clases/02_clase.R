# Lección 2. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Guardar información relacionada en una lista
ficha <- list(
  fuente = "Registro simulado de cafeterías",
  unidad_observacion = "Transacción",
  moneda = "CRC",
  precios = c(1500, 1200, 900)
)
names(ficha)
ficha["precios"]
ficha[["precios"]]
mean(ficha[["precios"]])
str(ficha)

# 2. Organizar números en una matriz
unidades <- matrix(c(2, 3, 4, 5, 1, 2), nrow = 2, byrow = TRUE,
                   dimnames = list(c("lunes", "martes"), c("cafe", "te", "pan")))
unidades
dim(unidades)
unidades[1, 2]
unidades[, "cafe"]
rowSums(unidades)
colSums(unidades)

# 3. Representar ventas en una tabla
ventas_pequenas <- data.frame(producto = c("Café", "Té", "Pan"),
                              unidades = c(2L, 3L, 4L), precio_crc = c(1500, 1200, 900))
str(ventas_pequenas)
ventas_pequenas$ingreso_crc <- ventas_pequenas$unidades * ventas_pequenas$precio_crc
ventas_pequenas[ventas_pequenas$unidades >= 3, c("producto", "ingreso_crc")]
sum(ventas_pequenas$ingreso_crc)
