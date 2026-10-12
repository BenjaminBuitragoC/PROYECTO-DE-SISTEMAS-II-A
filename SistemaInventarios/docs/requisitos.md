# Requisitos funcionales

- **RF01 Consultar productos:** Mostrar código, nombre, categoría, stock, precio y estado de cada producto.
- **RF02 Registrar un producto:** Validar código único, nombre, categoría, precio y cantidades no negativas.
- **RF03 Editar productos:** Actualizar datos de un producto conservando su identificador y el historial asociado.
- **RF04 Registrar una entrada:** Registrar cantidad positiva, fecha y motivo; sumar la cantidad al stock en una operación atómica.
- **RF05 Registrar una salida:** Registrar cantidad positiva; impedir una salida mayor al stock disponible y descontar existencias.
- **RF06 Identificar stock bajo:** Marcar los productos cuyo stock actual sea menor a su stock mínimo definido.
- **RF07 Buscar y filtrar:** Buscar por código o nombre y filtrar por categoría.
- **RF08 Consultar movimientos:** Conservar producto, tipo, cantidad, fecha y motivo para consultar la trazabilidad de existencias.

## Reglas del negocio

El stock no puede ser negativo. Cada movimiento debe tener cantidad positiva; una salida mayor al stock se rechaza. La actualización del producto y el movimiento deben ser atómicos.
