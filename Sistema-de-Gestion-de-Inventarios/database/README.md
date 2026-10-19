# Modelo inicial de datos

Se propone SQL Server. Una categoría agrupa varios productos y cada producto registra múltiples movimientos. El stock se deriva de entradas menos salidas mediante la vista Existencias.

El archivo modelo_inicial.sql define tres tablas y una vista. Es un diseño inicial, todavía no ejecutado en una instancia de SQL Server.

La futura operación de salida debe comprobar el saldo dentro de una transacción con bloqueo apropiado para impedir stock negativo ante accesos simultáneos. Esta regla y el control de usuarios aún deben implementarse.
