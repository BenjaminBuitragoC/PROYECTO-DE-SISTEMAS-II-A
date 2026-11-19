/**
 * Persistencia simple (JSON) para pruebas de integración Ej. 4–5.
 * Simula el módulo de registro de pacientes → “base de datos”.
 */
const fs = require('fs');
const path = require('path');
const { validarEdadPaciente } = require('./validarEdadPaciente');
const { validarFechaNacimiento } = require('./validarFechaNacimiento');

const DB_PATH = path.join(__dirname, '..', 'tests', 'practica3', 'db', 'pacientes.json');

function leer() {
  if (!fs.existsSync(DB_PATH)) return [];
  return JSON.parse(fs.readFileSync(DB_PATH, 'utf8'));
}

function guardar(rows) {
  fs.mkdirSync(path.dirname(DB_PATH), { recursive: true });
  fs.writeFileSync(DB_PATH, JSON.stringify(rows, null, 2), 'utf8');
}

function registrarPaciente(datos, hoy = '2026-11-19') {
  const { documento, nombre, fechaNacimiento, telefono, correo } = datos || {};
  if (!documento || !String(documento).trim()) {
    return { ok: false, mensaje: 'El documento es obligatorio.' };
  }
  if (!nombre || !String(nombre).trim()) {
    return { ok: false, mensaje: 'El nombre es obligatorio.' };
  }
  const fn = validarFechaNacimiento(fechaNacimiento, hoy);
  if (!fn.ok) return { ok: false, mensaje: fn.mensaje };

  const edad = validarEdadPaciente(fn.edad);
  if (!edad.ok) return { ok: false, mensaje: edad.mensaje };

  const rows = leer();
  if (rows.some((p) => p.documento === String(documento).trim())) {
    return { ok: false, mensaje: 'Ya existe un paciente con ese documento.' };
  }

  const paciente = {
    id: `PAC-${String(rows.length + 1).padStart(4, '0')}`,
    documento: String(documento).trim(),
    nombre: String(nombre).trim(),
    fechaNacimiento,
    edad: fn.edad,
    telefono: telefono || null,
    correo: correo || null,
    creadoAt: hoy,
  };
  rows.push(paciente);
  guardar(rows);
  return { ok: true, paciente, mensaje: 'Paciente registrado.' };
}

function buscarPorDocumento(documento) {
  return leer().find((p) => p.documento === String(documento).trim()) || null;
}

function resetDb() {
  guardar([]);
}

module.exports = { registrarPaciente, buscarPorDocumento, leer, resetDb, DB_PATH };
