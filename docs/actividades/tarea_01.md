# Tarea 1

## Indicaciones

Trabajá de forma individual. Entregá un archivo `.R` con tus cálculos. Escribí las respuestas en palabras en líneas que empiecen con `#`.

## Ejercicios

1. **Tiempos de viaje.** Usá los tiempos de cinco personas `c(15, 25, NA, 35, 45)`, en minutos. Calculá el promedio de los tiempos conocidos e indicá cuántos datos usaste.
2. **Lista.** Guardá en una lista el vector anterior y su unidad de medida, "minutos". Extraé el vector de la lista.
3. **Matriz.** Creá una matriz de dos días y dos productos con `c(3, 1, 2, 4)`. Llenala por filas. Las filas son lunes y martes, y las columnas son Café y Pan, en ese orden. Calculá el total de unidades de cada día.
4. **Data frame.** Creá una tabla con estas cuatro ventas. Agregá una columna de ingreso por venta al multiplicar unidades por precio unitario. Mostrá la tabla completa.

| Producto | Unidades | Precio unitario (CRC) |
|---|---:|---:|
| Café | 2 | 1500 |
| Pan | 3 | 900 |
| Té | 1 | 1200 |
| Café | 4 | 1500 |

5. **Dos formas de extraer.** Pedí el vector de tiempos con `[]` y con `[[]]`. Escribí cuál resultado usarías para calcular el promedio y por qué.
6. **Ventas al por mayor.** Mostrá el producto y el ingreso de las ventas con tres unidades o más. Indicá cuántas filas quedaron después del filtro.
7. **Comprobación.** Calculá los totales por producto de la matriz. Compará la suma de esos totales con la suma de los totales por día y explicá por qué coinciden.
