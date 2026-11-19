# Examen parcial

## Indicaciones

Resolvé esta evaluación de forma individual fuera de clase. Abrí el proyecto del curso y guardá un script nuevo como `examen_parcial.R`. Podés consultar tus scripts del curso. Escribí las respuestas en palabras en líneas que empiecen con `#`.

## Ejercicios

1. **Tiempos de viaje (3 puntos).** Usá `c(18, 24, NA, 30, 36)`, en minutos. Mostrá el promedio y la cantidad de datos conocidos. Explicá qué significa el `NA`.
2. **Tabla de ventas (3 puntos).** Creá un data frame con Café, Pan y Té, unidades 2, 3 y 1 y precios unitarios 1500, 900 y 1200 colones, en ese orden. Calculá el ingreso de cada venta y mostrá las que tienen al menos dos unidades.
3. **Ingresos por sede (4 puntos).** Cargá `herramientas/preparar_datos.R` con `source()` y guardá en `ventas` la tabla que devuelve `preparar_ventas()`. Mostrá una tabla por sede con el ingreso observado y el número de ventas con unidades faltantes. Comentá el resultado de una sede.
4. **Comprobación del resumen (3 puntos).** Sumá los ingresos por sede y comparalos con la suma de los ingresos conocidos de toda la tabla. Guardá el resumen en `salidas/resumen_parcial.csv` y volvé a leerlo.
5. **Códigos (3 puntos).** Mostrá cuáles de `FAC-012`, `FAC-12`, `XFAC-012` y `fac-008` cumplen el patrón `FAC-` seguido de tres dígitos. Convertí los códigos a mayúsculas y explicá cuál cambia de resultado.
6. **Faltantes (4 puntos).** Usá un ciclo `for` para recorrer `c("unidades", "ingreso_crc")` en `ventas`. Mostrá cuántos `NA` tiene cada columna y explicá por qué coinciden o difieren los conteos.

Entregá un solo archivo `examen_parcial.R`. El script debe generar el CSV al ejecutarse.
