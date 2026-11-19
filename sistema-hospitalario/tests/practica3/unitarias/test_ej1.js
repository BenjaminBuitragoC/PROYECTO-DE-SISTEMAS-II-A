const assert = require('assert');
const { validarEdadPaciente } = require('../../../src/validarEdadPaciente');

const casos = [
  { nombre: 'dato válido (35)', input: 35, esperadoOk: true },
  { nombre: 'dato vacío', input: '', esperadoOk: false },
  { nombre: 'dato negativo', input: -5, esperadoOk: false },
  { nombre: 'fuera de rango (150)', input: 150, esperadoOk: false },
  { nombre: 'formato incorrecto ("abc")', input: 'abc', esperadoOk: false },
];

const resultados = [];
for (const c of casos) {
  const r = validarEdadPaciente(c.input);
  assert.strictEqual(r.ok, c.esperadoOk, c.nombre);
  resultados.push({
    ejercicio: 1,
    caso: c.nombre,
    entrada: String(c.input),
    esperado: c.esperadoOk ? 'aceptar' : 'rechazar',
    obtenido: r.ok ? 'aceptar' : `rechazar: ${r.mensaje}`,
    resultado: 'OK',
  });
  console.log(`PASS  [Ej1] ${c.nombre} → ${r.mensaje}`);
}
module.exports = { resultados };
