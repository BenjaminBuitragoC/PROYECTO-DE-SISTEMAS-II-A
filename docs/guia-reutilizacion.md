# Guía de reutilización (InnerSource)

## 1. Descripción del recurso compartible
**Recurso:** *Plantilla genérica de historias de usuario y backlog* (formato usado en `docs/Backlog_Landing_Pago_por_Negocio_Sprint2.xlsx`) junto con la **convención de commits y ramas** del equipo.

Es útil para otros equipos porque estandariza cómo se escribe un requisito y cómo se rastrea hasta un commit. La versión genérica **no contiene datos del negocio ni credenciales**.

### Plantilla genérica de historia de usuario
```
ID:            HU-000
Título:        <acción corta>
Como:          <rol>
Quiero:        <funcionalidad>
Para:          <beneficio>
Criterios de aceptación:
  - [ ] Dado <contexto>, cuando <acción>, entonces <resultado>
Prioridad:     Alta | Media | Baja
Estimación:    <puntos>
Sprint:        <n>
Estado:        Pendiente | En progreso | En revisión | Hecho
Commit/PR:     <enlace>
```

### Convención de ramas y commits
| Tipo | Rama | Prefijo de commit |
|---|---|---|
| Documentación | `docs-<tema>` | `docs:` |
| Funcionalidad | `feat-<tema>` | `feat:` |
| Corrección | `fix-<tema>` | `fix:` |
| Pruebas | `test-<tema>` | `test:` |

## 2. Instrucciones de uso
1. Copiar la plantilla anterior a un archivo propio en `docs/` de su equipo.
2. Reemplazar los campos `<...>` con los datos de su sistema.
3. Mantener un ID único por historia (`HU-001`, `HU-002`, ...).
4. Al implementar, citar el ID en el commit: `feat: validar correo (HU-012)`.
5. Enlazar el PR en el campo `Commit/PR` para tener trazabilidad requisito → código.

## 3. Reglas para proponer modificaciones
1. No modificar `main` directamente.
2. Crear una rama `docs-mejora-<tema>` desde la rama del equipo.
3. Un cambio por Pull Request, con título `docs: <descripción>` y descripción de *qué* y *por qué*.
4. Prohibido incluir datos reales: nombres de clientes, credenciales, tokens, cadenas de conexión.
5. El PR necesita al menos **1 aprobación** antes de integrarse.
6. Si la propuesta es grande, abrir primero un *Issue* para discutirla.

## 4. Responsables de revisión y mantenimiento
| Responsabilidad | Responsable |
|---|---|
| Mantenedor del recurso | Jhosep Dilan Rocabado (líder) |
| Revisor principal | Espinoza |
| Revisor suplente | Prudencio |
| Aprobación final | Docente de la asignatura |

**Procedimiento de mantenimiento:** el mantenedor revisa los PR abiertos al final de cada sprint, responde en máximo 3 días hábiles y registra los cambios aceptados en el historial de commits. Una vez por sprint se verifica que la plantilla siga siendo genérica.
