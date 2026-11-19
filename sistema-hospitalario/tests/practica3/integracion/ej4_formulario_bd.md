# Ejercicio 4 — Formulario ↔ base de datos

**Sistema:** Hospital San Gabriel — Gestión de citas  
**Estudiante:** Diego Torquato Salazar

## Diagrama

```
[Formulario / llamada registrarPaciente]
        │
        ▼
[Validaciones: documento, nombre, fechaNacimiento, edad]
        │
        ▼
[Persistencia JSON db/pacientes.json]  ← simula BD
```

## Casos

| # | Caso | Resultado |
|---|---|---|
| 4.1 | Datos válidos | Paciente guardado con id `PAC-…` |
| 4.2 | Faltan obligatorios | Rechazo; no hay fila nueva |
| 4.3 | Documento duplicado | Rechazo |

Ejecutar: `node integracion/run_ej4_ej5_ej6.js`
