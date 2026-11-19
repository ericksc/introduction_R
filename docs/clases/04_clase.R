# Lección 4. Corré este script desde el proyecto del curso.
dir.create("salidas", showWarnings = FALSE)

# 1. Uniformar nombres de sedes
sedes <- c(" san josé ", "HEREDIA", "Cartago")
sedes_limpias <- stringr::str_squish(sedes)
stringr::str_to_title(sedes_limpias, locale = "es")
stringr::str_to_upper(sedes_limpias, locale = "es")

# 2. Validar códigos con un patrón
library(stringr)
codigos <- c("VEN-001", "VEN-120", "ven-004", "XVEN-005", "VEN-12")
patron <- "^VEN-[0-9]{3}$"
str_detect(codigos, patron)
str_subset(codigos, patron)
str_extract(codigos, "[0-9]+")
sedes_texto <- c(" heredia  ", "SAN JOSÉ", "Cartago")
str_to_title(str_squish(sedes_texto), locale = "es")
str_replace("VEN-001", "^VEN-", "VENTA-")

# 3. Repetir una revisión con for
ventas_revision <- readr::read_csv("datos/ventas.csv", show_col_types = FALSE)
columnas <- c("fecha", "sede", "unidades", "precio_crc")
faltantes <- integer(length(columnas))
for (i in seq_along(columnas)) {
  faltantes[i] <- sum(is.na(ventas_revision[[columnas[i]]]))
}
auditoria <- data.frame(variable = columnas, faltantes = faltantes)
auditoria$porcentaje <- 100 * auditoria$faltantes / nrow(ventas_revision)
auditoria
# El porcentaje se calcula sobre todas las filas del CSV original.
write.csv(auditoria, "salidas/auditoria_columnas.csv", row.names = FALSE)
