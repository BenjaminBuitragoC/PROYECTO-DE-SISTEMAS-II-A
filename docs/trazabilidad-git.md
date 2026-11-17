# Trazabilidad del historial de GitHub

## Commits relevantes en la rama del Equipo 3

| Commit | Autor y fecha local | Cambio | Relevancia |
| --- | --- | --- | --- |
| [`a6d2b01`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/a6d2b01c61b1f915a8a92ab32b025ed9077ac6fe) | Benjamín H. Buitrago Conde, 03-10-2026 | Commit inicial con la presentación básica del repositorio. | Establece la base del historial y la identificación general del curso. |
| [`2a2de8c`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/2a2de8c8f02bc78c960ef672bbd2b1f525f5281d) | Benjamín H. Buitrago Conde, 03-10-2026 | Se incorpora la segunda actividad de autoaprendizaje. | Añade la consigna académica que precede a la actividad actual. |
| [`f459a49`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/f459a490df09c67c417fcf7ee8288ccd4be811dd) | AlisonPizarro1, 12-10-2026 | Añade la estructura inicial del proyecto, completa el README de inventarios y registra el enlace de Figma. | Define el primer estado del sistema del Equipo 3 y el documento que esta actividad mejora. |

Las fechas corresponden a los metadatos del historial Git mostrados con zona `-04:00`. Para revisar el historial del archivo: `git log --follow -- README.md`; para identificar quién modificó cada línea: `git blame README.md`. El `blame` consultado atribuye las dos líneas iniciales a `a6d2b01` y la descripción del proyecto a `f459a49`.

## Incidencias y Pull Requests

El [Pull Request #8](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/8), “Equipo 3 Sistema de inventarios — Alison Pizarro”, figura abierto desde `AlisonPizarro_Equipo3-inventarios` hacia `main`. Es la propuesta previa de estructura inicial, no esta actividad. El [Pull Request #13](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/13) usa el nombre de rama `docs-mejora-proyecto`, pero fue abierto por otra persona para el proyecto de gastronomía; por eso esta práctica usa una rama personal con sufijo y no altera el trabajo ajeno. El [Pull Request #16](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/16) también propone guía de reutilización desde un fork de otra persona.

El cambio actual está preparado localmente en `docs-mejora-proyecto-alisonpizarro`, derivado de la rama del Equipo 3. El nuevo Pull Request debe apuntar a `AlisonPizarro_Equipo3-inventarios`, no a `main`. El enlace de la solicitud propia queda pendiente de publicación con la cuenta GitHub correcta.

## Uso durante la investigación de defectos

Ante un defecto, ubicar primero el archivo o línea afectada, usar `git blame` para hallar el commit que introdujo la lógica y abrir ese commit para revisar el contexto completo. Después buscar el Pull Request asociado para leer el motivo del cambio, los comentarios y las pruebas consideradas. Comparar con una versión anterior ayuda a determinar si el defecto surgió en esa modificación o ya existía; el historial orienta la investigación, pero se debe reproducir el fallo con una prueba antes de asignar causa.
