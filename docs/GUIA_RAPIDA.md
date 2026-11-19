# Primeros auxilios para aprender R

Si aparece un error, revisá la última línea que corriste y cambiá una cosa a la vez. En la consola podés usar la flecha hacia arriba para recuperar una instrucción anterior. Guardá el análisis en un script para volver a ejecutarlo.

| Escritura | Cómo leerla | Ejemplo |
|---|---|---|
| `<-` | Guardar con un nombre | `precio <- 1500` |
| `==` | Comparar igualdad | `precio == 1500` |
| `c(...)` | Reunir valores | `c(1, 2, 3)` |
| `funcion(argumento)` | Aplicar una operación | `mean(c(1, 2, 3))` |
| `$` | Elegir una columna | `ventas$unidades` |
| `!` | Negar | `!is.na(ventas$unidades)` |
| `&` | Ambas condiciones | `unidades >= 3 & precio_crc > 1000` |
| `|` | Al menos una condición | `producto == "Pan" | producto == "Té"` |
| `|>` | Continuar con el resultado | `ventas |> head()` |
| `#` | Comentario, no se ejecuta | `# Revisar el total` |

Para leer `ventas |> filter(producto == "Pan") |> select(sede, unidades)`, podés decir «empiezo con ventas, conservo las filas de Pan y elijo dos columnas». El orden importa: después de resumir puede que algunas columnas ya no existan.

`mutate(ingreso_crc = unidades * precio_crc)` trabaja fila por fila. `summarise(total = sum(ingreso_crc, na.rm = TRUE))` reduce varias filas a un total. `group_by(sede)` hace que la reducción ocurra por sede. Explicá qué representa una fila antes y después.

Para leer `ggplot(resumen, aes(sede, ingreso)) + geom_col()`, podés decir «uso la tabla resumen, pongo sede en el eje horizontal e ingreso en el vertical y dibujo barras con esas alturas». Los nombres de las columnas van sin comillas; los títulos y colores van entre comillas.

En un Rmd, el texto fuera de los bloques explica las decisiones; el texto dentro de un bloque R se ejecuta. El título va en la cabecera YAML entre `---`. Los encabezados empiezan con `#`. Conservá los delimitadores de los bloques al editar.

Al revisar tu trabajo, probá explicar qué preguntaste, qué representa cada fila, qué hace cada paso y cuál resultado respalda la respuesta.
