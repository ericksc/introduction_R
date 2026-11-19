# Datos de práctica: cafeterías

Datos completamente simulados para docencia, creados con semilla 2026; no representan una empresa, encuesta ni población real. No contienen datos personales. Ventas entre septiembre y octubre de 2026. No se pretende inferir tendencias reales.

| Archivo / campo | Significado / unidad |
|---|---|
| ventas.id_venta | Identificador de transacción, entero, clave esperada |
| ventas.fecha | Fecha ISO AAAA-MM-DD, texto al importar |
| ventas.sede | Sede; contiene espacios y mayúsculas inconsistentes intencionales |
| ventas.producto | Café, Té o Pan |
| ventas.unidades | Cantidad vendida, entero positivo; vacío = desconocido |
| ventas.precio_crc | Precio por unidad en colones costarricenses |
| sedes.sede | Clave única del catálogo de sedes |
| sedes.region | Región didáctica; todas son Central |
| metas.sede | Clave de sede |
| metas.septiembre / octubre | Meta mensual de ingreso en CRC |

Control docente: 121 filas originales; 120 transacciones únicas; 1 duplicado exacto; 7 cantidades faltantes después de deduplicar; 2 etiquetas de sede inconsistentes. No se imputan cantidades. ingreso_crc = unidades × precio_crc; el ingreso observado excluye valores desconocidos, por lo que puede subestimar el total. Las metas son ficticias y la cobertura temporal del ejemplo es limitada. No hay gastos: ingreso no equivale a ganancia.
