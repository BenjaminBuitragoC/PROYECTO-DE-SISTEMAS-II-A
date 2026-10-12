# Casos de prueba iniciales

| ID | Escenario | Resultado esperado |
|---|---|---|
| CP-01 | Registrar un producto con código nuevo | El producto se guarda correctamente |
| CP-02 | Registrar un producto con código duplicado | El sistema rechaza el registro |
| CP-03 | Registrar una entrada de 10 unidades | La existencia aumenta en 10 |
| CP-04 | Registrar una salida menor al stock | La existencia disminuye correctamente |
| CP-05 | Registrar una salida mayor al stock | El sistema rechaza la operación |
| CP-06 | Consultar productos con stock mínimo | El sistema muestra la alerta correspondiente |
