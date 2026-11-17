import test from 'node:test';
import assert from 'node:assert/strict';
import { calcularNuevoStock } from '../src/stock.mjs';

test('suma una entrada al stock disponible', () => {
  assert.equal(calcularNuevoStock(8, 5, 'ENTRADA'), 13);
});

test('resta una salida permitida', () => {
  assert.equal(calcularNuevoStock(8, 5, 'SALIDA'), 3);
});

test('permite retirar la última unidad sin producir saldo negativo', () => {
  assert.equal(calcularNuevoStock(1, 1, 'SALIDA'), 0);
});

test('rechaza una salida mayor que las existencias y conserva el valor de entrada', () => {
  const stock = 2;
  assert.throws(() => calcularNuevoStock(stock, 3, 'SALIDA'), RangeError);
  assert.equal(stock, 2);
});

test('rechaza cantidad cero, negativa o fraccionaria', () => {
  for (const cantidad of [0, -1, 1.5]) {
    assert.throws(() => calcularNuevoStock(4, cantidad, 'ENTRADA'), RangeError);
  }
});

test('rechaza saldo inválido, tipo desconocido y desbordamiento', () => {
  assert.throws(() => calcularNuevoStock(-1, 1, 'ENTRADA'), RangeError);
  assert.throws(() => calcularNuevoStock(1, 1, 'AJUSTE'), TypeError);
  assert.throws(() => calcularNuevoStock(Number.MAX_SAFE_INTEGER, 1, 'ENTRADA'), RangeError);
});
