# Lección 6. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Unir ventas con un catálogo
source("herramientas/preparar_datos.R")
ventas <- preparar_ventas()
sedes <- read_csv("datos/sedes.csv", show_col_types = FALSE)
stopifnot(!anyDuplicated(sedes$sede))
anti_join(ventas, sedes, by = "sede")
integradas <- left_join(ventas, sedes, by = "sede", relationship = "many-to-one")
stopifnot(nrow(integradas) == nrow(ventas), !anyNA(integradas$region))

# 2. Elegir evidencia para una pregunta
source("herramientas/preparar_datos.R")
library(ggplot2)
ventas <- preparar_ventas()
evidencia <- ventas |> group_by(sede, producto) |>
  summarise(transacciones = n(), faltantes = sum(is.na(unidades)),
            ingreso_observado = sum(ingreso_crc, na.rm = TRUE), .groups = "drop")
knitr::kable(evidencia, caption = "Ingreso observado por sede y producto (CRC)")
ggplot(evidencia, aes(producto, ingreso_observado)) +
  geom_col(fill = "#167d8d") + facet_wrap(~ sede) +
  labs(x = "Producto", y = "Ingreso observado (CRC)",
       caption = "Datos simulados; unidades faltantes sin imputar") + theme_minimal()

# 3. Generar un informe con R Markdown
sum(c(1500, 2500, NA), na.rm = TRUE)
