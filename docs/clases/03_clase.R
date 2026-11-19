# Lección 3. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Abrir un archivo CSV
library(readr)
file.exists("datos/ventas.csv")
ventas <- read_csv("datos/ventas.csv", col_types = cols(
  id_venta = col_integer(), fecha = col_character(),
  sede = col_character(), producto = col_character(),
  unidades = col_double(), precio_crc = col_double()
))
head(ventas)
str(ventas)
dim(ventas)
problems(ventas)

# 2. Revisar y preparar los datos
nrow(ventas)
sum(duplicated(ventas))
sum(is.na(ventas$unidades))
unique(ventas$sede)
range(ventas$precio_crc)
# Una copia conserva el archivo original sin cambios.
ventas_sin_duplicados <- ventas[!duplicated(ventas), ]
stopifnot(!anyDuplicated(ventas_sin_duplicados$id_venta))
table(ventas_sin_duplicados$producto)

source("herramientas/preparar_datos.R")
ventas <- preparar_ventas()
ventas |>
  filter(producto == "Café", unidades >= 3) |>
  select(id_venta, sede, unidades, ingreso_crc) |>
  arrange(desc(ingreso_crc))

# 3. Resumir las ventas por grupo
resumen <- ventas |>
  group_by(sede) |>
  summarise(
    transacciones = n(),
    unidades_conocidas = sum(!is.na(unidades)),
    faltantes = sum(is.na(unidades)),
    ingreso_observado_crc = sum(ingreso_crc, na.rm = TRUE),
    .groups = "drop"
  ) |>
  arrange(desc(ingreso_observado_crc))
resumen
stopifnot(sum(resumen$transacciones) == nrow(ventas))
total_general <- sum(ventas$ingreso_crc, na.rm = TRUE)
sum(resumen$ingreso_observado_crc) == total_general
resumen$porcentaje <- 100 * resumen$ingreso_observado_crc / total_general
resumen
dir.create("salidas", showWarnings = FALSE)
write_csv(resumen, "salidas/resumen_sedes.csv")
resumen_guardado <- read_csv("salidas/resumen_sedes.csv", show_col_types = FALSE)
head(resumen_guardado)
