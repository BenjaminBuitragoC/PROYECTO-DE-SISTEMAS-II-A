# Seguridad del repositorio y permisos — GanaderíaPro

Revisión realizada el 18/11/2026 sobre el repositorio del curso `BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A` (rama `GanaderiaPro_Vigabriel`) y el fork `AxlRoss-punk/PROYECTO-DE-SISTEMAS-II-A`. Los datos de visibilidad, protección de ramas y permisos se obtuvieron con la API de GitHub (`gh api`), sin modificar la configuración del docente.

## 1. Lista de verificación

| # | Aspecto | Estado observado | Riesgo | Acción recomendada |
|---|---|---|---|---|
| 1 | Visibilidad | Repositorio del curso **público**; fork público | Cualquier persona puede leer el código y todo el historial de commits | Mantener público por ser académico, pero revisar cada commit antes de publicar: nada de credenciales ni datos personales reales |
| 2 | Accesos | 13 colaboradores: el docente (admin) y **12 estudiantes con write sobre todo el repositorio** (incluidos `AlexVigabriel` y `williamCR555`); `AxlRoss-punk` solo **read** y contribuye por fork | Cualquier estudiante puede modificar o borrar la rama de otro equipo o `main`, porque ninguna rama está protegida | Conceder escritura solo a quien la necesite; el resto contribuye por fork + Pull Request |
| 3 | Rama principal | `main` **no está protegida** (`protected: false`); `GanaderiaPro_Vigabriel` tampoco | Un colaborador con escritura puede hacer push directo o forzado a `main` sin revisión | Activar regla de protección en `main`: PR obligatorio, 1 aprobación mínima, bloquear force-push y borrado |
| 4 | Pull Requests | 21 PR en el repositorio; solo #15 fusionado. El PR #14 está abierto, en espera de revisión | Sin protección, la revisión depende de la disciplina del equipo y no de una regla | Exigir aprobación de un revisor distinto del autor antes de fusionar |
| 5 | Secretos | `appsettings*.json` no contiene claves; la clave JWT se lee de `dotnet user-secrets`. `.env` está en `.gitignore`. **`docker-compose.yml` contiene la contraseña de PostgreSQL en texto plano**, agregada en el commit `c16d223` (13/10/2026) | La contraseña queda en el historial público aunque se borre después | Moverla a `.env` (`POSTGRES_PASSWORD=${POSTGRES_PASSWORD}`), cambiarla en todo entorno donde se haya reutilizado y activar *secret scanning / push protection* |
| 6 | Dependencias | `dotnet list package --vulnerable --include-transitive`: **0 paquetes vulnerables** en los 5 proyectos. `--deprecated`: `xunit 2.9.3` marcado como *Legacy* (alternativa `xunit.v3`) | Paquetes sin mantenimiento dejan de recibir correcciones | Activar Dependabot (`.github/dependabot.yml`) para NuGet y pub; planificar migración a `xunit.v3` |
| 7 | Copias de seguridad | El código tiene copia en GitHub, en el fork y en los clones locales. La base de datos PostgreSQL (volumen Docker `ganaderiapro-db-data`) no tiene respaldo definido | Pérdida de datos de prueba al borrar el volumen o cambiar de equipo | Script `pg_dump` semanal guardado fuera del repositorio; prueba de restauración una vez por sprint |

## 2. Recomendaciones prioritarias

1. **Proteger `main` y la rama del equipo.** Es el único control que impide técnicamente un cambio sin revisión; hoy depende solo de la buena voluntad (verificación 3).
2. **Sacar la contraseña de `docker-compose.yml`.** El repositorio es público y el historial persiste; cualquier secreto commiteado debe considerarse expuesto (verificación 5).
3. **Activar Dependabot y secret scanning.** Son gratuitos en repositorios públicos y automatizan las verificaciones 5 y 6 en cada push.
4. **Privilegio mínimo.** Retirar escritura directa a quienes pueden trabajar por fork (verificación 2).

## 3. Matriz de permisos del equipo

### Permisos observados vs. necesarios

| Integrante / cuenta | Rol en el proyecto | Permiso observado en el repo del curso | Permiso necesario (mínimo privilegio) |
|---|---|---|---|
| Benjamín H. Buitrago Conde | Docente / propietario | Admin (propietario) | Admin |
| Vigabriel Arista Alexander — `AlexVigabriel` | Líder técnico y desarrollador | Write + Triage | Write sobre la rama del equipo; sin admin |
| Vigabriel Arista Alexander — `AxlRoss-punk` | Cuenta secundaria del mismo integrante | Read (contribuye por fork) | Ninguno adicional (debería unificarse en una sola cuenta) |
| Calizaya Choque William Alejandro — `williamCR555` | Desarrollador / revisor | Write + Triage | Revisor del equipo; escritura limitada a la rama del equipo |
| Choquecallata Paco Roberto Carlos | Desarrollador / revisor | Sin cuenta identificable entre los colaboradores | Read + PR desde fork; invitar si va a aprobar PR |
| Lazcano Estrella Alejandro | Desarrollador / revisor | Sin cuenta identificable entre los colaboradores | Read + PR desde fork; invitar si va a aprobar PR |

### Matriz propuesta por rol

| Rol | Leer repositorio | Crear ramas y commits | Revisar Pull Requests | Administrar permisos |
|---|---|---|---|---|
| Docente / administrador | Sí | Sí | Sí | Sí |
| Líder del equipo | Sí | Sí, en la rama del equipo | Sí | No |
| Desarrollador | Sí | En su fork / ramas de función | Puede comentar | No |
| Revisor | Sí | No necesario | Sí (aprueba o pide cambios) | No |

### Protección de cuentas (MFA)

Cada integrante debe activar la autenticación en dos pasos en *Settings → Password and authentication* con una aplicación TOTP o una llave de seguridad (passkey), guardar los códigos de recuperación fuera del equipo y usar tokens personales de alcance mínimo con fecha de expiración. Con MFA, una contraseña filtrada no basta para entrar en la cuenta.

## 4. Mantenimiento de este documento

Se revisa al cierre de cada sprint o cuando cambien los colaboradores. Los cambios se proponen por Pull Request siguiendo [guia-reutilizacion.md](guia-reutilizacion.md).
