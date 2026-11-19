# Evidencia integración Ej. 4–6

- 4.1 Registro válido → OK, persistido en pacientes.json
- 4.2 Faltan obligatorios → rechazado
- 4.3 Documento duplicado → rechazado
- 5.1 Paciente registrado → cita agendada (importe 150)
- 5.2 Cita sin paciente registrado → no se completa
- 5.3 Turno ocupado → no se agenda (consistencia)
- 5.4 Cancelar cita → estado CANCELADA, turno liberado
- 6.1 API disponible → 201
- 6.2 Servicio caído → 503, sin guardar inconsistente
- 6.3 Timeout → 504, sin guardar

DB pacientes: C:\Users\PC\Projects\PROYECTO-DE-SISTEMAS-II-A\sistema-hospitalario\tests\practica3\db\pacientes.json