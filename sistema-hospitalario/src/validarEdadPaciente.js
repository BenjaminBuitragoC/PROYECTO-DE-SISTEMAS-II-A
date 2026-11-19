/**
 * Ejercicio 1 — Validación de edad de un paciente
 * Sistema: Gestión de citas — Hospital San Gabriel (equipo Torquato)
 * Regla: edad entera entre 0 y 120 años (inclusive).
 */
const EDAD_MIN = 0;
const EDAD_MAX = 120;

function validarEdadPaciente(edad) {
  if (edad === null || edad === undefined || edad === '') {
    return { ok: false, mensaje: 'La edad del paciente es obligatoria.' };
  }
  if (typeof edad === 'string') {
    const t = edad.trim();
    if (!t) return { ok: false, mensaje: 'La edad del paciente es obligatoria.' };
    if (!/^\d+$/.test(t)) {
      return { ok: false, mensaje: 'La edad debe ser un número entero (formato incorrecto).' };
    }
    edad = Number(t);
  }
  if (typeof edad !== 'number' || !Number.isFinite(edad) || !Number.isInteger(edad)) {
    return { ok: false, mensaje: 'La edad debe ser un número entero (formato incorrecto).' };
  }
  if (edad < 0) {
    return { ok: false, mensaje: 'La edad no puede ser negativa.' };
  }
  if (edad < EDAD_MIN || edad > EDAD_MAX) {
    return {
      ok: false,
      mensaje: `La edad está fuera de rango (${EDAD_MIN}–${EDAD_MAX} años).`,
    };
  }
  return { ok: true, mensaje: 'Edad válida.' };
}

module.exports = { validarEdadPaciente, EDAD_MIN, EDAD_MAX };
