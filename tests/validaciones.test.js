const test = require('node:test');
const assert = require('node:assert');
const { validarCorreo } = require('../src/validaciones');

test('acepta correos válidos', () => {
  assert.strictEqual(validarCorreo('jhosep@gmail.com'), true);
  assert.strictEqual(validarCorreo('ana.perez+eventos@uni.edu.bo'), true);
});
test('rechaza correos sin @ o sin dominio', () => {
  assert.strictEqual(validarCorreo('jhosepgmail.com'), false);
  assert.strictEqual(validarCorreo('jhosep@'), false);
  assert.strictEqual(validarCorreo('@gmail.com'), false);
});
test('rechaza vacío, null y no-string', () => {
  assert.strictEqual(validarCorreo(''), false);
  assert.strictEqual(validarCorreo(null), false);
  assert.strictEqual(validarCorreo(undefined), false);
  assert.strictEqual(validarCorreo(123), false);
});
// Casos límite
test('límite: espacios alrededor y puntos consecutivos', () => {
  assert.strictEqual(validarCorreo('  jhosep@gmail.com  '), true); // se recorta
  assert.strictEqual(validarCorreo('jhosep..x@gmail.com'), false);
  assert.strictEqual(validarCorreo('jhosep@gmail..com'), false);
});
test('límite: longitud máxima 150 (columna usuarios.correo)', () => {
  assert.strictEqual(validarCorreo('a'.repeat(145) + '@b.co'), true);  // 150 exactos
  assert.strictEqual(validarCorreo('a'.repeat(146) + '@b.co'), false); // 151
});
