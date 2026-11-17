# Informe de seguridad del repositorio

Repositorio examinado: fork de práctica `PROYECTO-DE-SISTEMAS-II-A` (copia del repositorio del curso).
Fecha: 2026-11-17. No se modificó la configuración del repositorio del docente.

> Las filas marcadas **[COMPLETAR]** requieren mirar la configuración en GitHub (Settings) y anotar lo observado.

## Lista de verificación

| # | Aspecto | Estado observado | Riesgo identificado | Acción recomendada |
|---|---|---|---|---|
| 1 | Visibilidad | **[COMPLETAR: público/privado]** (Settings → General) | Si es público, cualquiera ve el código y el historial; un secreto subido queda expuesto aunque se borre después | Mantener público solo mientras no haya credenciales; usar variables de entorno cuando se integre Aiven/Prisma |
| 2 | Accesos | **[COMPLETAR: Settings → Collaborators]**. El README lista 4 integrantes | Permisos de escritura/administración para todos amplían el daño de una cuenta comprometida | Privilegios mínimos (ver `docs/permisos-y-mfa.md`) |
| 3 | Rama principal | **[COMPLETAR: Settings → Branches]**. No hay reglas documentadas; el flujo depende de la convención | Un push directo a `main` puede sobrescribir trabajo sin revisión | Crear *branch protection rule* para `main`: exigir PR, 1 aprobación y bloquear force-push |
| 4 | Pull Requests | El historial previo muestra commits directos a ramas, sin PR ni revisión; el flujo con PR se documenta recién en el README (§7) | Cambios sin revisión pueden introducir errores o secretos | Exigir PR revisado por otro integrante |
| 5 | Secretos | Búsqueda de `password`, `secret`, `token`, `api_key`, `mysql://`, `aiven` en `.sql`, `.md` y `.json`: **sin credenciales expuestas** (solo la columna `password_hash` del esquema, que es un nombre de campo). El `.gitignore` estaba **vacío** | Al conectar MySQL en Aiven, la cadena de conexión podría subirse por accidente en un `.env` | `.gitignore` corregido (`.env`, `*.pem`, `node_modules/`); activar *Secret scanning* y *Push protection* |
| 6 | Dependencias | Aún no hay dependencias (el `package.json` solo define el script de pruebas con Node nativo) | Al agregar NestJS/Prisma/Express llegarán dependencias con posibles CVE | Activar Dependabot alerts y ejecutar `npm audit` en cada PR |
| 7 | Copias de seguridad | Cada integrante tiene clon local y existe el remoto en GitHub; la base de datos aún no tiene respaldo | Pérdida de trabajo si se borra el repo o falla la base de Aiven | Mantener clones, usar *releases*/etiquetas por sprint y respaldos de MySQL (Aiven ofrece backups automáticos) |

## Recomendaciones justificadas

1. **Proteger `main` con reglas de rama.** Es el control de mayor impacto: obliga a que todo cambio pase por revisión y evita pérdida de historial por force-push.
2. **Activar Secret scanning + Push protection y mantener `.env` en `.gitignore`.** El proyecto usará MySQL en la nube; una cadena de conexión subida a un repo público se explota rápido y permanece en el historial.
3. **Privilegios mínimos y MFA para todos.** Reduce el impacto de una cuenta comprometida: solo el líder administra; los demás escriben en ramas.
4. **Activar Dependabot.** Al sumar dependencias de NestJS/Prisma se detectarán vulnerabilidades conocidas automáticamente.

## Cómo se verificó (sin exponer secretos)
```bash
git grep -niE "password|secret|token|api_key|mysql://"
git log --all --oneline -- .env      # sin resultados: nunca se subió un .env
```
