/**
 * Calcula el nuevo saldo de existencias después de una entrada o salida.
 * No modifica el saldo de entrada ni acepta cantidades fraccionarias.
 *
 * @param {number} stockActual Saldo entero no negativo.
 * @param {number} cantidad Cantidad entera estrictamente positiva.
 * @param {'ENTRADA'|'SALIDA'} tipoMovimiento Tipo de movimiento.
 * @returns {number} Nuevo saldo.
 * @throws {TypeError|RangeError} Si los argumentos no cumplen las reglas.
 */
export function calcularNuevoStock(stockActual, cantidad, tipoMovimiento) {
  if (!Number.isSafeInteger(stockActual) || stockActual < 0) {
    throw new RangeError('El stock actual debe ser un entero seguro no negativo.');
  }

  if (!Number.isSafeInteger(cantidad) || cantidad <= 0) {
    throw new RangeError('La cantidad debe ser un entero seguro mayor que cero.');
  }

  if (tipoMovimiento !== 'ENTRADA' && tipoMovimiento !== 'SALIDA') {
    throw new TypeError('El tipo de movimiento debe ser ENTRADA o SALIDA.');
  }

  if (tipoMovimiento === 'SALIDA' && cantidad > stockActual) {
    throw new RangeError('La salida no puede superar el stock disponible.');
  }

  const nuevoStock = tipoMovimiento === 'ENTRADA'
    ? stockActual + cantidad
    : stockActual - cantidad;

  if (!Number.isSafeInteger(nuevoStock)) {
    throw new RangeError('El resultado excede el rango entero seguro.');
  }

  return nuevoStock;
}
