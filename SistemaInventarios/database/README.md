# Modelo inicial de inventarios

`schema.sql` define categorías, productos y movimientos en SQLite. Los precios se almacenan como centavos de boliviano para evitar aproximaciones monetarias con punto flotante.

Relaciones: una categoría tiene muchos productos; un producto tiene muchos movimientos. El código es único; stock y precio no admiten valores negativos; cada movimiento exige cantidad positiva.

El esquema no actualiza automáticamente el stock. La futura aplicación deberá validar las salidas y registrar el movimiento junto con el cambio de existencias en una transacción.
