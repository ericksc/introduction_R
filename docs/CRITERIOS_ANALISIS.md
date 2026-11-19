# Criterios para analizar datos

En el curso trabajamos con ventas simuladas. La idea es que otra persona pueda seguir tus pasos, revisar los cálculos y entender qué permiten afirmar los datos.

1. Definí qué querés averiguar y qué comparación te ayuda a responderlo.
2. Anotá de dónde vienen los datos, qué representa cada fila y en qué unidades se registraron los valores.
3. Revisá duplicados, datos faltantes y etiquetas que podrían referirse a lo mismo.
4. Conservá los archivos originales. Trabajá con una copia y comprobá que las uniones y los cálculos den los resultados que esperabas.
5. Elegí tablas y gráficos que respondan la pregunta. Indicá qué significa cada cifra y qué total usaste si calculaste porcentajes.
6. Contá qué observaste y explicá hasta dónde podés interpretar el resultado.
7. Volvé a correr el código desde el principio para revisar que los resultados se puedan generar de nuevo.

## Cifras para comprobar el análisis de ventas

- Hay 120 ventas únicas. En 113 se conoce la cantidad y en 7 falta ese dato.
- Se conoce la cantidad de 113 de 120 ventas, alrededor del 94,2 %.
- El ingreso observado suma 409 500 colones. La suma usa los montos que se pudieron calcular.
- El ingreso observado por producto es de 180 000 colones para Café, 136 800 para Té y 92 700 para Pan. Sumá esos montos para comprobar que coincidan con el total general.

## Cómo explicar un resultado

Café registró 180 000 colones de ingreso observado. Falta la cantidad de una de sus 41 ventas, así que esa venta quedó fuera de la suma. Para saber cuál producto fue más rentable, también harían falta los costos.

## Qué incluye el proyecto final

El informe incluye una tabla por sede con el número de ventas, cuántas tienen unidades faltantes y el ingreso observado. Agregá un gráfico de barras con las cifras en colones, dos hallazgos con datos y una limitación. Entregá el archivo R Markdown y el HTML que genera **Knit**. [Consigna del proyecto final](proyecto_consigna.html).
