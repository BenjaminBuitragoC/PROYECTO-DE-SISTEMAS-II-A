# Administración, autenticación y permisos

## Matriz de permisos del equipo

| Rol | Integrante | Leer repositorio | Crear ramas y commits | Revisar Pull Requests | Administrar permisos |
|---|---|---|---|---|---|
| Docente/administrador | Docente | Sí | Sí | Sí | Según configuración |
| Líder del equipo | Jhosep Dilan Rocabado | Sí | Sí (ramas, no `main`) | Sí | Sí, solo sobre su fork/equipo |
| Desarrollador | Torcuato | Sí | Sí (ramas, no `main`) | Puede participar (comenta) | No |
| Desarrollador | Prudencio | Sí | Sí (ramas, no `main`) | Puede participar (comenta) | No |
| Revisor | Espinoza | Sí | Sí (ramas de docs/tests) | Sí (aprueba) | No |

## Permisos reales vs. necesarios
1. **Permisos actuales:** **[COMPLETAR]** en Settings → Collaborators and teams, anotar el rol (Read/Triage/Write/Maintain/Admin) de cada integrante.
2. **Comparación:** cualquier integrante con rol *Admin* que no sea el líder tiene más privilegio del necesario.
3. **Asignación de privilegios mínimos propuesta:**

| Integrante | Rol GitHub recomendado | Justificación |
|---|---|---|
| Docente | Admin / Owner del repo del curso | Gestiona el curso |
| Jhosep (líder) | Maintain | Gestiona ramas y PR sin poder borrar el repo |
| Torcuato, Prudencio | Write | Suben ramas y abren PR; `main` protegido |
| Espinoza (revisor) | Write (o Triage si solo revisa) | Aprueba PR |

## Protección de cuentas con MFA
1. Cada integrante activa la autenticación en dos pasos en *GitHub → Settings → Password and authentication*.
2. Se prefiere app autenticadora (TOTP) o llave de seguridad/passkey sobre SMS.
3. Los **códigos de recuperación** se guardan en un lugar seguro y privado (nunca en el repositorio).
4. Para `git push` se usa un **Personal Access Token** con alcance mínimo o SSH, nunca la contraseña.
5. Si hay una organización, se puede exigir MFA a todos los miembros.

## Preguntas de reflexión

**¿Qué diferencia existe entre autenticación y autorización?**
La autenticación verifica *quién eres* (usuario + contraseña + MFA). La autorización define *qué puedes hacer* una vez identificado (leer, escribir, administrar). Se puede estar autenticado y no estar autorizado a hacer push a `main`.

**¿Por qué no todos deberían tener permisos administrativos?**
Un administrador puede borrar el repositorio, cambiar su visibilidad, quitar la protección de `main` o añadir colaboradores. Cuantos más administradores, mayor superficie de ataque y de errores accidentales. El privilegio mínimo limita el daño.

**¿Qué problema podría ocasionar compartir una cuenta de GitHub?**
Se pierde la trazabilidad (no se sabe quién hizo cada commit o revisión), no se puede revocar el acceso a una sola persona, el MFA deja de ser personal y la revisión por pares pierde sentido porque autor y revisor serían la misma cuenta.
