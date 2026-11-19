# Lección 5. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Comparar categorías con barras
source("herramientas/preparar_datos.R")
library(ggplot2)
ventas <- preparar_ventas()
resumen <- ventas |> group_by(sede) |>
  summarise(ingreso = sum(ingreso_crc, na.rm = TRUE), .groups = "drop")
g <- ggplot(resumen, aes(x = reorder(sede, ingreso), y = ingreso)) +
  geom_col(fill = "#167d8d") + coord_flip() +
  labs(title = "Ingreso observado por sede", x = NULL, y = "Ingreso (CRC)",
       caption = "Datos simulados. Se excluyen importes desconocidos.") +
  theme_minimal(base_size = 12)
print(g)
ggsave("salidas/ingreso_sedes.png", g, width = 8, height = 4, dpi = 160)

# 2. Ver cómo se distribuyen las cantidades
ventas_con_unidades <- ventas |> filter(!is.na(unidades))
nrow(ventas_con_unidades)
histograma <- ggplot(ventas_con_unidades, aes(unidades)) +
  geom_histogram(binwidth = 1, boundary = 0.5) +
  labs(x = "Unidades por venta", y = "Cantidad de ventas")
print(histograma)

# 3. Explorar la relación entre dos números
ggplot(ventas_con_unidades, aes(precio_crc, unidades)) +
  geom_point(alpha = 0.4) +
  labs(x = "Precio unitario (CRC)", y = "Unidades por venta")
