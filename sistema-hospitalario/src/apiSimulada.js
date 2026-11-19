/**
 * Ejercicio 6 — “Servicio externo” / API interna simulada.
 * Operación válida + error controlado (servicio no disponible / timeout).
 */
const { registrarPaciente, buscarPorDocumento } = require('./pacientesStore');

let servicioDisponible = true;
let forzarTimeout = false;

function setServicioDisponible(v) {
  servicioDisponible = Boolean(v);
}
function setForzarTimeout(v) {
  forzarTimeout = Boolean(v);
}

async function apiRegistrarPaciente(payload) {
  if (!servicioDisponible) {
    return {
      ok: false,
      status: 503,
      mensaje: 'Servicio no disponible. No se guardó información inconsistente.',
    };
  }
  if (forzarTimeout) {
    return {
      ok: false,
      status: 504,
      mensaje: 'Tiempo de espera agotado. No se guardó el paciente.',
    };
  }
  const r = registrarPaciente(payload);
  if (!r.ok) return { ok: false, status: 400, mensaje: r.mensaje };
  return { ok: true, status: 201, data: r.paciente, mensaje: r.mensaje };
}

async function apiConsultarPaciente(documento) {
  if (!servicioDisponible) {
    return { ok: false, status: 503, mensaje: 'Servicio no disponible.' };
  }
  const p = buscarPorDocumento(documento);
  if (!p) return { ok: false, status: 404, mensaje: 'Paciente no encontrado.' };
  return { ok: true, status: 200, data: p };
}

module.exports = {
  apiRegistrarPaciente,
  apiConsultarPaciente,
  setServicioDisponible,
  setForzarTimeout,
};
