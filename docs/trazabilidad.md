# Trazabilidad del historial

Repositorio: `https://github.com/jhosepr/PROYECTO-DE-SISTEMAS-II-A`

## 1. Tres commits relevantes

| Commit | Autor | Fecha | Mensaje | Qué cambió |
|---|---|---|---|---|
| [`6068097`](https://github.com/jhosepr/PROYECTO-DE-SISTEMAS-II-A/commit/6068097) | jhosepr | 2026-10-14 15:07 (-04) | `figma: añadir enlace del prototipo` | `README.md`: +28 / -1 líneas (descripción, objetivo, integrantes, tecnologías, enlace Figma) |
| [`81c7022`](https://github.com/jhosepr/PROYECTO-DE-SISTEMAS-II-A/commit/81c7022) | jhosepr | 2026-10-14 15:10 (-04) | `database: crear modelo inicial` | Crea `database/schema.sql` (106 líneas, tablas de usuarios, eventos, entradas) |
| [`535f533`](https://github.com/jhosepr/PROYECTO-DE-SISTEMAS-II-A/commit/535f533) | jhosepr | 2026-10-14 15:02 (-04) | `docs: agregar backlog` | Agrega `.gitignore`, `docs/` (backlog, canvas, requisitos, riesgos) y `figma/enlace_figma.md` |

## 2. Evolución de un archivo: `README.md`
Se consultó con `git log --follow README.md` (en GitHub: archivo → *History*).

1. `a6d2b01` — *Initial commit* (Benjamín H. Buitrago Conde, 2026-10-03): título del repositorio, 2 líneas.
2. `6068097` — *figma: añadir enlace del prototipo* (jhosepr, 2026-10-14): se convierte en la ficha del proyecto.
3. `103411a` (rama `docs-mejora-proyecto`) — *docs: mejorar README…*: roles, estructura del repo, flujo de trabajo y pruebas.

## 3. Herramienta *blame*
Comando: `git blame -L1,12 README.md` (en GitHub: archivo → *Blame*).

```
^a6d2b01 (Benjamín H. Buitrago Conde 2026-10-03  1) # PROYECTO-DE-SISTEMAS-II-A
60680972 (jhosepr                    2026-10-14  3) # Sistema de Gestión de Eventos
60680972 (jhosepr                    2026-10-14  6) Plataforma web diseñada para la organización...
```
La línea 1 viene del commit inicial del docente; el resto fue escrito por el equipo en `6068097`.

## 4. Incidencia o Pull Request relacionado
Pull Request de esta actividad: **[COMPLETAR: pegar enlace del PR de `docs-mejora-proyecto`]**.
Relaciona la mejora del README (`103411a`) con su revisión y aprobación.

## 5. Pregunta de análisis: ¿cómo ayuda a investigar un defecto?
Si una prueba falla, por ejemplo la validación de correos de `src/validaciones.js`:
- **Historial** (`git log -- src/validaciones.js`) muestra cuándo y por qué cambió la función.
- **Blame** identifica qué commit introdujo la línea defectuosa y quién puede explicar la decisión.
- **PR/Issue** vinculado da el contexto: qué requisito se implementaba y qué revisión tuvo.
- Con `git bisect` se localiza el primer commit en que la prueba empezó a fallar.
Esto reduce el tiempo de diagnóstico y permite corregir la causa raíz y no solo el síntoma.
