const assert = require('assert');
const { validarFechaNacimiento } = require('../../../src/validarFechaNacimiento');

const HOY = '2026-11-19';
const casos = [
  { nombre: 'válido: adulto 1990-05-10', input: '1990-05-10', esperadoOk: true },
  { nombre: 'inválido: fecha futura', input: '2030-01-01', esperadoOk: false },
  { nombre: 'inválido: formato incorrecto', input: '19/11/1990', esperadoOk: false },
  { nombre: 'válido: recién nacido (=hoy)', input: HOY, esperadoOk: true },
  { nombre: 'inválido: año imposible (1800)', input: '1800-01-01', esperadoOk: false },
];

const resultados = [];
for (const c of casos) {
  const r = validarFechaNacimiento(c.input, HOY);
  assert.strictEqual(r.ok, c.esperadoOk, c.nombre);
  resultados.push({
    ejercicio: 3,
    caso: c.nombre,
    esperado: c.esperadoOk ? 'aceptar' : 'rechazar',
    obtenido: r.ok ? `aceptar (edad ${r.edad})` : `rechazar: ${r.mensaje}`,
    resultado: 'OK',
  });
  console.log(`PASS  [Ej3] ${c.nombre} → ${r.mensaje}`);
}
module.exports = { resultados };
