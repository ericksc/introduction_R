# Tarea 4

Trabajá de forma individual. Entregá un archivo `.R` y dos imágenes PNG. Escribí los hallazgos en líneas que empiecen con `#`.

## Datos

Copiá estas ventas simuladas a tu script. Cada fila es una venta. `precio_crc` indica el precio por unidad en colones.

```r
ventas <- data.frame(
  sede = c("Cartago", "Cartago", "Cartago", "Cartago",
           "Heredia", "Heredia", "Heredia", "Heredia",
           "San José", "San José", "San José", "San José"),
  unidades = c(2, 5, 3, NA, 1, 4, 3, 2, 2, 5, NA, 4),
  precio_crc = c(900, 1200, 1500, 900, 900, 1200, 1500, 900,
                 900, 1200, 1500, 900)
)
```

## Qué hacer

1. Calculá el ingreso de cada venta al multiplicar unidades por precio. Sumá los montos conocidos por sede. Mostrá el ingreso observado con barras horizontales y ordená las sedes por monto.
2. Hacé un gráfico de dispersión con el precio en el eje horizontal y las unidades en el vertical. Usá las ventas con unidades conocidas y dibujá los puntos con transparencia.
3. Agregá títulos, etiquetas de los ejes y una nota que indique que los datos son simulados y cuántas ventas quedaron fuera por falta de unidades.
4. Escribí un hallazgo por gráfico y una limitación de los datos. Guardá el gráfico de barras y el de dispersión como `ingreso_sedes.png` y `precio_unidades.png`.
5. **Frecuencias.** Hacé dos histogramas de las unidades conocidas con `binwidth = 1` y `binwidth = 2`. Describí una diferencia en la forma de los gráficos.
6. **Puntos sobrepuestos.** Mostrá la dispersión otra vez con `alpha = 1`. Identificá una combinación de precio y unidades repetida en los datos y explicá qué pasa con esos puntos al cambiar la transparencia.
7. **Comparación con evidencia.** Calculá cuántas ventas quedaron fuera de la suma de ingresos en cada sede. Usá esos conteos para explicar un límite de la comparación por barras.
