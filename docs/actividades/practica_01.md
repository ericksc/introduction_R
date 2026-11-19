# Trabajo grupal I

## Indicaciones

Resuelvan el trabajo fuera de clase, en equipos de dos o tres. Entreguen un solo archivo .R con los nombres del equipo. Cada problema vale 12,5 puntos, para un total de 100.

## Ejercicios

1. **Comparen dos recorridos.** Usen `c(20, 35, NA, 25)` y `c(15, 30, 40, NA)`, en minutos. Calculen el promedio de los datos conocidos y el número de datos que usaron en cada caso. Digan qué recorrido parece más corto.
2. **Revisen el efecto de un dato faltante.** Cambien el `NA` del primer recorrido por cero en un vector nuevo. Comparen el promedio nuevo con el original e indiquen por qué conviene reportar el faltante.
3. **Organicen los datos.** Creen una lista con los dos recorridos, la unidad y la fuente "Datos simulados". Extraigan el primer recorrido con `[]` y con `[[]]`. Comprueben cuál resultado pueden usar para calcular un promedio.
4. **Comparen los días de venta.** Armen una matriz por filas con `c(2, 3, 4, 5, 1, 2)`. Las filas son lunes y martes, y las columnas son Café, Té y Pan. Usen los totales por fila y por columna para identificar el día y el producto con más unidades.
5. **Actualicen una venta.** Dos panes más se vendieron el martes. Cambien el último 2 del vector de la matriz por 4 y vuelvan a calcular los totales. Anoten qué total por día y qué total por producto cambió y en cuánto.
6. **Calculen los ingresos.** Creen un data frame con los productos Café, Té, Pan y Café, unidades 2, 3, 4 y 1, y precios unitarios 1500, 1200, 900 y 1500 colones. Calculen el ingreso por fila y señalen cuáles filas comparten producto y precio, pero tienen ingresos distintos.
7. **Filtren las ventas grandes.** Muestren solo el producto y el ingreso de las ventas con al menos tres unidades. Comparen el ingreso de estas filas con el ingreso de toda la tabla.
8. **Comprueben la diferencia.** Muestren las ventas con menos de tres unidades. Sumen sus ingresos y verifiquen si explican la diferencia del problema anterior. Escriban qué incluye cada total.
