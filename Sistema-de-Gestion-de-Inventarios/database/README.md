# Modelo inicial de datos

Se propone SQL Server. Una categoría agrupa varios productos y cada producto registra múltiples movimientos. El stock se deriva de entradas menos salidas mediante la vista Existencias.

El archivo modelo_inicial.sql define tres tablas y una vista. Es un diseño inicial, todavía no ejecutado en una instancia de SQL Server.

La futura operación de salida debe comprobar el saldo dentro de una transacción con bloqueo apropiado para impedir stock negativo ante accesos simultáneos. Esta regla y el control de usuarios aún deben implementarse.

## Reglas de registro de movimientos

Los identificadores corresponden al [documento de requisitos](../docs/Requisitos.docx).

| Requisito | Regla que debe cumplir la implementación |
| --- | --- |
| RF03 | La entrada incrementa las existencias del producto. Registra cantidad positiva, fecha, motivo y responsable. |
| RF04 | La salida se registra solo si la cantidad es positiva y menor o igual al saldo disponible del producto. Si se rechaza, las existencias y el historial conservan sus valores previos. |
| RF05 | El saldo por producto es la suma de entradas menos la suma de salidas. Un producto sin movimientos tiene saldo cero. |
| RF06 | El producto aparece en la alerta cuando el saldo es menor o igual al stock mínimo configurado. |
| RNF01 | Cada movimiento se registra de forma transaccional y conserva el responsable que lo registró. |

El [modelo SQL inicial](modelo_inicial.sql) exige cantidades positivas y calcula el saldo en la vista `Existencias`. La operación de salida deberá serializar por producto la lectura del saldo y el registro del movimiento dentro de la misma transacción. Dos salidas simultáneas de 4 unidades sobre un saldo de 5 deben producir una sola salida registrada y un saldo final de 1.

Como caso de aceptación de RF04 y RF06, parte de un producto con saldo de 8 y mínimo de 3. Registra una salida de 5 y comprueba que queda saldo de 3 y se activa la alerta. Intenta luego una salida de 4 y verifica que el saldo sigue en 3 y que el intento rechazado no agregó un movimiento. El [plan inicial de pruebas](../tests/README.md) reúne los casos previstos para la implementación.
