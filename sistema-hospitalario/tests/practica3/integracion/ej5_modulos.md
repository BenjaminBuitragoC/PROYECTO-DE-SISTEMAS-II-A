# Ejercicio 5 — Integración pacientes ↔ consultas

| Módulo 1 | Módulo 2 |
|---|---|
| Registro de pacientes | Gestión de citas/consultas |

## Relación

Solo se agenda cita si el paciente ya está registrado. El importe se calcula según especialidad. No se permiten turnos duplicados (mismo médico + misma fecha/hora).

## Casos

| # | Caso | Resultado |
|---|---|---|
| 5.1 | Paciente registrado → agendar | Cita `AGENDADA` + importe |
| 5.2 | Paciente inexistente | No se completa |
| 5.3 | Turno ocupado | Rechazo (consistencia) |
| 5.4 | Cancelar cita | Estado `CANCELADA`, turno liberado |

## Consistencia

La cita referencia `pacienteId` / documento existentes; cancelar no borra el paciente.
