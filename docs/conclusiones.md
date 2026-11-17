# Integración de resultados y buenas prácticas

## Mejora integrada
Se preparó un conjunto de mejoras verificables en la rama `docs-mejora-proyecto` que integra **cinco** de los aspectos solicitados:

| Aspecto | Evidencia |
|---|---|
| Control de cambios (ramas y commits) | Rama `docs-mejora-proyecto`, commits con prefijos `docs:`, `feat:`, `test:` |
| Revisión colaborativa (Pull Request) | PR con revisión de otro integrante (enlace en `docs/trazabilidad.md`) |
| Documentación de seguridad | `docs/informe-seguridad.md` y `.gitignore` corregido |
| Definición de permisos | `docs/permisos-y-mfa.md` |
| Trazabilidad de cambios | `docs/trazabilidad.md` (log, blame, PR) |
| Pruebas unitarias con asistencia de IA | `src/validaciones.js`, `tests/`, `docs/uso-de-ia.md` |

## Conclusión: prácticas que el equipo adoptará
1. **Ramas + PR siempre, `main` protegido.** Evita pisar el trabajo de otros y deja una revisión por cada cambio.
2. **Commits pequeños con prefijo y referencia a la historia de usuario** (`feat: ... (HU-012)`). Permiten rastrear requisito → código → prueba.
3. **Revisión por otro integrante antes de integrar.** En esta actividad la revisión detectó mejoras que el autor no veía.
4. **Privilegios mínimos y MFA.** Solo el líder administra; todos activan doble factor.
5. **Nunca subir secretos:** `.env` ignorado, Secret scanning activado. Es crítico porque se usará MySQL en Aiven.
6. **Pruebas unitarias para cada función de validación**, incluso si las sugirió una IA: ejecutar, buscar casos límite y revisar. En el ejercicio, la IA falló en 2 de 5 pruebas en su primera versión, lo que confirma que no se debe aceptar sin verificar.
7. **Dependabot y `npm audit`** cuando se agreguen NestJS y Prisma.

**Por qué:** el semestre implica varias personas modificando los mismos archivos y una base de datos en la nube. Estas prácticas reducen conflictos, errores y riesgos de seguridad con poco esfuerzo, y dejan evidencia verificable del trabajo de cada integrante.
