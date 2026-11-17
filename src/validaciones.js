/**
 * Valida el correo de un usuario (columna usuarios.correo VARCHAR(150)).
 * - Acepta solo strings; recorta espacios al inicio y al final.
 * - Rechaza longitud > 150, puntos consecutivos y dominios mal formados.
 */
const MAX_LONGITUD_CORREO = 150;
const REGEX_CORREO = /^[^\s@.]+(\.[^\s@.]+)*@[^\s@.]+(\.[^\s@.]+)+$/;

function validarCorreo(correo) {
  if (typeof correo !== 'string') return false;
  const limpio = correo.trim();
  if (limpio.length === 0 || limpio.length > MAX_LONGITUD_CORREO) return false;
  return REGEX_CORREO.test(limpio);
}

module.exports = { validarCorreo, MAX_LONGITUD_CORREO };
