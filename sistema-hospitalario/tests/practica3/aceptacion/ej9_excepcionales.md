# Ejercicio 9 — Escenarios excepcionales

| Escenario | Esperado | Resultado |
|---|---|---|
| Documento duplicado | Rechazo claro | Cumple |
| Agendar sin paciente | No completa | Cumple |
| Datos incompletos | Rechazo | Cumple |
| Turno ya ocupado | Rechazo (recurso no disponible) | Cumple |
| API caída / timeout | 503/504 sin persistir | Cumple |

Integridad: no se crean citas huérfanas ni pacientes a medias.
