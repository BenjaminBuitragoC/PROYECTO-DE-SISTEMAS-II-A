/**
 * Evidencia ejecutable de integración (Ej. 4, 5 y 6).
 */
const assert = require('assert');
const fs = require('fs');
const path = require('path');
const { registrarPaciente, buscarPorDocumento, resetDb, DB_PATH } = require('../../../src/pacientesStore');
const { agendarCita, cancelarCita, resetCitas, leer: leerCitas } = require('../../../src/citasService');
const {
  apiRegistrarPaciente,
  setServicioDisponible,
  setForzarTimeout,
} = require('../../../src/apiSimulada');

async function main() {
  resetDb();
  resetCitas();
  const log = [];

  // --- Ej. 4 ---
  const okReg = registrarPaciente({
    documento: '1234567',
    nombre: 'Ana Pérez',
    fechaNacimiento: '1995-03-12',
    telefono: '70012345',
    correo: 'ana@example.com',
  });
  assert.ok(okReg.ok);
  assert.ok(buscarPorDocumento('1234567'));
  log.push('4.1 Registro válido → OK, persistido en pacientes.json');

  const falta = registrarPaciente({ documento: '', nombre: 'X', fechaNacimiento: '1990-01-01' });
  assert.strictEqual(falta.ok, false);
  log.push('4.2 Faltan obligatorios → rechazado');

  const dup = registrarPaciente({
    documento: '1234567',
    nombre: 'Otra',
    fechaNacimiento: '1990-01-01',
  });
  assert.strictEqual(dup.ok, false);
  log.push('4.3 Documento duplicado → rechazado');

  // --- Ej. 5 ---
  const cita = agendarCita({
    documentoPaciente: '1234567',
    especialidad: 'cardiologia',
    medico: 'Dr. López',
    fechaHora: '2026-11-20T09:00',
    urgencia: false,
  });
  assert.ok(cita.ok);
  assert.strictEqual(cita.cita.importeBs, 150);
  log.push('5.1 Paciente registrado → cita agendada (importe 150)');

  const sinPaciente = agendarCita({
    documentoPaciente: '9999999',
    especialidad: 'general',
    medico: 'Dra. Ruiz',
    fechaHora: '2026-11-20T10:00',
  });
  assert.strictEqual(sinPaciente.ok, false);
  log.push('5.2 Cita sin paciente registrado → no se completa');

  const dupTurno = agendarCita({
    documentoPaciente: '1234567',
    especialidad: 'general',
    medico: 'Dr. López',
    fechaHora: '2026-11-20T09:00',
  });
  assert.strictEqual(dupTurno.ok, false);
  log.push('5.3 Turno ocupado → no se agenda (consistencia)');

  const cancel = cancelarCita(cita.cita.id);
  assert.ok(cancel.ok);
  assert.strictEqual(leerCitas().find((c) => c.id === cita.cita.id).estado, 'CANCELADA');
  log.push('5.4 Cancelar cita → estado CANCELADA, turno liberado');

  // --- Ej. 6 ---
  setServicioDisponible(true);
  setForzarTimeout(false);
  const apiOk = await apiRegistrarPaciente({
    documento: '7654321',
    nombre: 'Luis Gómez',
    fechaNacimiento: '1988-07-01',
  });
  assert.strictEqual(apiOk.status, 201);
  log.push('6.1 API disponible → 201');

  setServicioDisponible(false);
  const apiDown = await apiRegistrarPaciente({
    documento: '111',
    nombre: 'X',
    fechaNacimiento: '1990-01-01',
  });
  assert.strictEqual(apiDown.status, 503);
  assert.strictEqual(buscarPorDocumento('111'), null);
  log.push('6.2 Servicio caído → 503, sin guardar inconsistente');

  setServicioDisponible(true);
  setForzarTimeout(true);
  const apiTo = await apiRegistrarPaciente({
    documento: '222',
    nombre: 'Y',
    fechaNacimiento: '1990-01-01',
  });
  assert.strictEqual(apiTo.status, 504);
  assert.strictEqual(buscarPorDocumento('222'), null);
  log.push('6.3 Timeout → 504, sin guardar');

  setForzarTimeout(false);

  const out = path.join(__dirname, '..', 'resultados', 'integracion_log.md');
  fs.writeFileSync(
    out,
    ['# Evidencia integración Ej. 4–6', '', ...log.map((l) => `- ${l}`), '', `DB pacientes: ${DB_PATH}`].join(
      '\n',
    ),
  );
  console.log(log.join('\n'));
  console.log(`\nLog → resultados/integracion_log.md`);
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
