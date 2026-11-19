/**
 * Módulo de citas (integración Ej. 5): depende del registro de pacientes.
 * Relación: Registro de pacientes → Gestión de consultas/citas.
 */
const fs = require('fs');
const path = require('path');
const { buscarPorDocumento } = require('./pacientesStore');
const { calcularImporteConsulta } = require('./calcularImporteConsulta');

const DB_PATH = path.join(__dirname, '..', 'tests', 'practica3', 'db', 'citas.json');

function leer() {
  if (!fs.existsSync(DB_PATH)) return [];
  return JSON.parse(fs.readFileSync(DB_PATH, 'utf8'));
}

function guardar(rows) {
  fs.mkdirSync(path.dirname(DB_PATH), { recursive: true });
  fs.writeFileSync(DB_PATH, JSON.stringify(rows, null, 2), 'utf8');
}

function agendarCita({ documentoPaciente, especialidad, medico, fechaHora, urgencia = false }) {
  const paciente = buscarPorDocumento(documentoPaciente);
  if (!paciente) {
    return { ok: false, mensaje: 'No se puede agendar: el paciente no está registrado.' };
  }
  if (!medico || !fechaHora) {
    return { ok: false, mensaje: 'Médico y fecha/hora son obligatorios.' };
  }

  const importe = calcularImporteConsulta({ especialidad, urgencia, descuentoBs: 0 });
  if (!importe.ok) return { ok: false, mensaje: importe.mensaje };

  const rows = leer();
  // Evitar cita duplicada mismo médico + misma fechaHora
  if (rows.some((c) => c.medico === medico && c.fechaHora === fechaHora && c.estado === 'AGENDADA')) {
    return { ok: false, mensaje: 'El turno del médico ya no está disponible.' };
  }

  const cita = {
    id: `CIT-${String(rows.length + 1).padStart(4, '0')}`,
    pacienteId: paciente.id,
    documentoPaciente: paciente.documento,
    nombrePaciente: paciente.nombre,
    especialidad,
    medico,
    fechaHora,
    urgencia: Boolean(urgencia),
    importeBs: importe.total,
    estado: 'AGENDADA',
  };
  rows.push(cita);
  guardar(rows);
  return { ok: true, cita, mensaje: 'Cita agendada.' };
}

function cancelarCita(citaId) {
  const rows = leer();
  const cita = rows.find((c) => c.id === citaId);
  if (!cita) return { ok: false, mensaje: 'Cita no encontrada.' };
  if (cita.estado === 'CANCELADA') {
    return { ok: false, mensaje: 'La cita ya estaba cancelada.' };
  }
  cita.estado = 'CANCELADA';
  guardar(rows);
  return { ok: true, cita, mensaje: 'Cita cancelada; turno liberado.' };
}

function resetCitas() {
  guardar([]);
}

module.exports = { agendarCita, cancelarCita, leer, resetCitas, DB_PATH };
