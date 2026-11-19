# Ejercicio 8 — Proceso completo

## Flujo (usuario recepción)

1. Registrar paciente.  
2. Agendar consulta (médico, especialidad, fecha/hora).  
3. Consultar la cita (listado / por id).  
4. (Opcional) Cancelar cita.

## Criterios

| # | Criterio | Resultado |
|---|---|---|
| P1 | Paciente queda registrado | Cumple |
| P2 | Cita asociada al paciente | Cumple |
| P3 | Importe coherente con especialidad | Cumple |
| P4 | Cancelación actualiza estado | Cumple |

**Conclusión:** proceso aceptado en entorno de prueba (Node + JSON).
