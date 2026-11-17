# Seguridad y permisos del repositorio

## Lista de verificación

Completar esta lista revisando la configuración real del repositorio y registrar fecha, persona revisora y evidencia. No se deben publicar secretos para demostrar un riesgo.

| Aspecto | Qué comprobar | Acción recomendada |
| --- | --- | --- |
| Visibilidad | Si el repositorio es público o privado y si esa opción corresponde al contenido | Publicar solo material autorizado; restringir la visibilidad si hay información interna |
| Accesos | Quién puede leer, escribir y administrar | Retirar accesos innecesarios y asignar privilegio mínimo |
| Rama principal | Si se bloquean cambios directos y se requieren revisiones | Exigir Pull Request y al menos una revisión antes de integrar |
| Secretos | Si hay claves, contraseñas o tokens en archivos e historial | No subirlos; revocar y reemplazar de inmediato cualquier secreto expuesto |
| Dependencias | Si el proyecto usa dependencias externas y hay alertas disponibles | Revisar alertas y actualizar con pruebas |
| Recuperación | Si existe una copia independiente y puede restaurarse | Mantener respaldo institucional y comprobar periódicamente la restauración |

## Registro inicial de observación

Revisión de la página pública del repositorio el 17 de noviembre de 2026:

| Aspecto | Estado observado | Riesgo | Acción recomendada |
| --- | --- | --- | --- |
| Visibilidad | Público | Cualquier persona puede ver el contenido | Confirmar que los documentos publicados están autorizados para difusión |
| Accesos | La página pública identifica al propietario como contribuidor; no permite verificar todos los permisos de escritura del equipo | Una lista pública de contribuciones no muestra quién conserva acceso de escritura | Revisar la lista de colaboradores desde la cuenta del propietario y retirar accesos innecesarios |
| Rama principal | La rama `main` existe; la protección de la rama no es visible en la página pública | Sin reglas, podrían integrarse cambios sin revisión | Solicitar Pull Request y revisión obligatoria antes de integrar |
| Pull Requests | La pestaña pública de Pull Requests está disponible | La existencia de la pestaña no prueba que las revisiones sean obligatorias | Revisar que el equipo use revisiones y que las reglas lo exijan |
| Secretos | No se realizó un análisis exhaustivo del contenido ni del historial | Un secreto podría permanecer expuesto si se incorporó previamente | Analizar el repositorio con la herramienta aprobada y revocar cualquier secreto expuesto; no publicar secretos como evidencia |
| Dependencias | El contenido visible del repositorio consiste en README y documentos PDF; no se observó un manifiesto de dependencias | No es posible evaluar dependencias del sistema desde este repositorio | Revisar las dependencias en el repositorio real de cada sistema |
| Copias de seguridad | No verificable en la página pública | El repositorio por sí solo no demuestra una recuperación independiente | Confirmar con el propietario un respaldo institucional y una prueba de restauración |

La revisión pública no permite verificar protecciones, permisos efectivos, escaneo de secretos ni copias de seguridad. Esos puntos quedan pendientes para el propietario o una persona con acceso administrativo; esta tabla no certifica que estén configurados.

## Matriz de permisos propuesta

| Rol | Leer | Crear ramas y commits | Revisar Pull Requests | Administrar permisos y reglas |
| --- | --- | --- | --- | --- |
| Docente o propietario | Sí | Sí | Sí | Solo responsables designados |
| Líder del equipo | Sí | Sí | Sí | No, salvo necesidad aprobada |
| Desarrollador | Sí | Sí | Puede comentar y revisar | No |
| Revisor | Sí | No necesariamente | Sí | No |

Los permisos reales dependen de la configuración del propietario. Verificar la matriz en GitHub antes de darla por aplicada.

## Reglas de trabajo

- Trabajar en ramas descriptivas; no hacer cambios directos en `main`.
- Usar Pull Requests con propósito, alcance y pasos de verificación.
- Proteger la cuenta personal con MFA y no compartir credenciales.
- Revisar archivos antes de publicarlos y mantener fuera del repositorio secretos y datos personales.
- Asociar cambios importantes a requisitos, incidencias o decisiones para conservar trazabilidad.
