# Asistencia de IA y pruebas unitarias

## Función seleccionada

`calcularNuevoStock(stockActual, cantidad, tipoMovimiento)` calcula las existencias luego de registrar una entrada o salida. El prototipo inicial del proyecto aún no define el backend ni una regla de inventario detallada; por eso, esta función pura se presenta como propuesta para validar con el equipo antes de conectarla a la interfaz o a la base de datos.

## Asistente y prompt

**Herramienta declarada:** ChatGPT en Codex, modelo GPT-6.

**Prompt utilizado:** “Para un prototipo de control de inventario en JavaScript, propone una función pura que calcule el nuevo stock a partir del saldo actual, una cantidad y el tipo ENTRADA o SALIDA. Rechaza valores no enteros, negativos, cantidades cero, tipos no permitidos, salidas superiores al saldo y desbordamiento de enteros seguros. Incluye pruebas con `node:test` para entradas válidas y límites. No uses dependencias externas.”

## Propuesta revisada y decisiones

El código final está en `src/stock.mjs`; las pruebas, en `test/stock.test.mjs`. Se usa `Number.isSafeInteger` para impedir valores fraccionarios, `RangeError` para saldos o cantidades fuera del dominio y `TypeError` para un tipo de movimiento desconocido. La función no modifica el argumento ni guarda datos, de modo que puede probarse aisladamente.

La regla adoptada para este ejemplo es que el inventario nunca puede quedar negativo. La cantidad debe ser mayor que cero. Las existencias se modelan como unidades enteras; si el proyecto debe manejar peso o volumen, el requisito y la representación decimal deberán definirse antes de adaptar esta función.

## Casos de prueba y resultado

| Caso | Entrada / condición | Resultado esperado |
| --- | --- | --- |
| Entrada válida | stock 8, entrada 5 | 13 |
| Salida válida | stock 8, salida 5 | 3 |
| Límite inferior | stock 1, salida 1 | 0 |
| Salida excesiva | stock 2, salida 3 | `RangeError`; saldo original intacto |
| Cantidad inválida | 0, -1 o 1.5 | `RangeError` |
| Tipo desconocido | `AJUSTE` | `TypeError` |
| Desbordamiento | máximo entero seguro + entrada 1 | `RangeError` |

**Comando ejecutado:** `node --test test/stock.test.mjs`.

**Resultado:** 6 pruebas aprobadas, 0 fallidas. Las pruebas usan únicamente el runner integrado de Node.js.

## Reflexión

La IA aceleró la enumeración de entradas límite y la creación de un esqueleto de pruebas. La revisión humana sigue siendo necesaria para confirmar si el inventario permite fracciones, reservas, devoluciones o ajustes y para integrar la regla en la capa adecuada. La propuesta no sustituye requisitos del equipo ni una revisión de otro integrante.
