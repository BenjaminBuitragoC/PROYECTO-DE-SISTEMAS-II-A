# Ejercicio 10 — Acta de aceptación (simulada)

**Sistema:** Gestión de citas — Hospital San Gabriel  
**Funcionalidad:** Registro de pacientes y agendado de citas  
**Evaluador:** Diego Torquato Salazar (simulación académica)  
**Fecha:** 19/11/2026

## Criterios (7)

1. Registrar paciente con datos válidos.  
2. Rechazar edad/fecha inválidas.  
3. Calcular importe de consulta correctamente.  
4. Agendar solo si el paciente existe.  
5. Evitar turnos duplicados.  
6. Cancelar cita liberando el turno.  
7. Fallos de API no corrompen datos.

## Guion (usuario no desarrollador)

1. Registrar a Ana Pérez con CI 1234567.  
2. Intentar registrarla de nuevo (debe fallar).  
3. Agendar cardiología con Dr. López.  
4. Intentar el mismo turno otra vez (debe fallar).  
5. Cancelar la cita.

## Decisión

**ACEPTADA CON OBSERVACIONES**  
Cumple los criterios en el prototipo de pruebas. Observación: falta UI web completa y BD real (PostgreSQL) para producción; esta evaluación es sobre el núcleo de reglas y módulos.
