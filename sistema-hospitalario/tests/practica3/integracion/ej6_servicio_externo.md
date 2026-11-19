# Ejercicio 6 — API / servicio externo (simulado)

Componente: `apiSimulada.js` (API interna del sistema de citas).

| # | Caso | Status | Tratamiento |
|---|---|---|---|
| 6.1 | Registro válido con API arriba | 201 | Guarda paciente |
| 6.2 | Servicio no disponible | 503 | No guarda datos |
| 6.3 | Timeout forzado | 504 | No guarda datos |

El sistema no deja información inconsistente ante fallos.
