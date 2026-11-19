/**
 * Ejercicio 3 — Regla de negocio: fecha de nacimiento
 * No se acepta fecha futura; debe permitir calcular edad 0–120.
 */
function parseISODate(value) {
  if (typeof value !== 'string' || !/^\d{4}-\d{2}-\d{2}$/.test(value)) return null;
  const [y, m, d] = value.split('-').map(Number);
  const date = new Date(Date.UTC(y, m - 1, d));
  if (date.getUTCFullYear() !== y || date.getUTCMonth() !== m - 1 || date.getUTCDate() !== d) {
    return null;
  }
  return date;
}

function validarFechaNacimiento(fechaNacimiento, fechaReferencia) {
  const nac = parseISODate(fechaNacimiento);
  const ref = parseISODate(fechaReferencia);
  if (!nac) {
    return { ok: false, mensaje: 'Fecha de nacimiento con formato inválido (use YYYY-MM-DD).' };
  }
  if (!ref) {
    return { ok: false, mensaje: 'Fecha de referencia inválida.' };
  }
  if (nac.getTime() > ref.getTime()) {
    return { ok: false, mensaje: 'La fecha de nacimiento no puede ser futura.' };
  }

  let edad = ref.getUTCFullYear() - nac.getUTCFullYear();
  const m = ref.getUTCMonth() - nac.getUTCMonth();
  if (m < 0 || (m === 0 && ref.getUTCDate() < nac.getUTCDate())) edad -= 1;

  if (edad < 0 || edad > 120) {
    return { ok: false, mensaje: 'La edad resultante está fuera del rango permitido (0–120).' };
  }
  return { ok: true, edad, mensaje: `Fecha válida (edad ${edad}).` };
}

module.exports = { validarFechaNacimiento, parseISODate };
