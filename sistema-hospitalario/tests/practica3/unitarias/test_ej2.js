const assert = require('assert');
const { calcularImporteConsulta } = require('../../../src/calcularImporteConsulta');

const casos = [
  {
    nombre: 'valores normales: cardiología sin urgencia',
    input: { especialidad: 'cardiologia', urgencia: false, descuentoBs: 0 },
    esperadoOk: true,
    esperadoTotal: 150,
  },
  {
    nombre: 'cero descuento sobre pediatría = 100',
    input: { especialidad: 'pediatria', urgencia: false, descuentoBs: 0 },
    esperadoOk: true,
    esperadoTotal: 100,
  },
  {
    nombre: 'caso límite: descuento = subtotal → total 0',
    input: { especialidad: 'general', urgencia: false, descuentoBs: 80 },
    esperadoOk: true,
    esperadoTotal: 0,
  },
  {
    nombre: 'urgencia cardiología (150+50=200)',
    input: { especialidad: 'cardiologia', urgencia: true, descuentoBs: 0 },
    esperadoOk: true,
    esperadoTotal: 200,
  },
];

const resultados = [];
for (const c of casos) {
  const r = calcularImporteConsulta(c.input);
  assert.strictEqual(r.ok, c.esperadoOk, c.nombre);
  if (c.esperadoOk) assert.strictEqual(r.total, c.esperadoTotal, c.nombre);
  // cálculo manual documentado
  resultados.push({
    ejercicio: 2,
    caso: c.nombre,
    esperadoManual: String(c.esperadoTotal),
    obtenido: String(r.total),
    resultado: 'OK',
  });
  console.log(`PASS  [Ej2] ${c.nombre} → total=${r.total}`);
}
module.exports = { resultados };
