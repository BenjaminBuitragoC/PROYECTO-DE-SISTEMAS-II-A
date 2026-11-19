/**
 * Ejercicio 2 — Cálculo del importe de una consulta
 * Hospital San Gabriel
 *
 * Fórmula:
 *   subtotal = tarifaBaseEspecialidad
 *   si urgencia: subtotal += recargoUrgencia
 *   total = max(0, subtotal - descuentoBs)
 *
 * Tarifas base (Bs.): general 80, pediatria 100, cardiologia 150
 * Recargo urgencia: 50 Bs.
 */
const TARIFAS = {
  general: 80,
  pediatria: 100,
  cardiologia: 150,
};
const RECARGO_URGENCIA = 50;

function calcularImporteConsulta({ especialidad, urgencia = false, descuentoBs = 0 }) {
  const key = String(especialidad || '')
    .trim()
    .toLowerCase();
  if (!TARIFAS[key]) {
    return {
      ok: false,
      subtotal: 0,
      descuento: 0,
      total: 0,
      mensaje: 'Especialidad no reconocida.',
    };
  }

  let subtotal = TARIFAS[key];
  if (urgencia) subtotal += RECARGO_URGENCIA;

  const descuento = Number(descuentoBs) || 0;
  if (descuento < 0) {
    return {
      ok: false,
      subtotal,
      descuento: 0,
      total: 0,
      mensaje: 'El descuento no puede ser negativo.',
    };
  }
  if (descuento > subtotal) {
    return {
      ok: false,
      subtotal,
      descuento,
      total: 0,
      mensaje: 'El descuento no puede superar el subtotal de la consulta.',
    };
  }

  const total = subtotal - descuento;
  return {
    ok: true,
    subtotal,
    descuento,
    total,
    mensaje: 'Importe calculado correctamente.',
  };
}

module.exports = { calcularImporteConsulta, TARIFAS, RECARGO_URGENCIA };
