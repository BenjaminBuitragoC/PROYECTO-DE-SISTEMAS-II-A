# Trazabilidad del historial de GitHub

## Commits relevantes en la rama del Equipo 3

| Commit | Autor y fecha local | Cambio | Relevancia |
| --- | --- | --- | --- |
| [`a6d2b01`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/a6d2b01c61b1f915a8a92ab32b025ed9077ac6fe) | Benjamín H. Buitrago Conde, 03-10-2026 | Commit inicial con la presentación básica del repositorio. | Establece la base del historial y la identificación general del curso. |
| [`2a2de8c`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/2a2de8c8f02bc78c960ef672bbd2b1f525f5281d) | Benjamín H. Buitrago Conde, 03-10-2026 | Se incorpora la segunda actividad de autoaprendizaje. | Añade la consigna académica que precede a la actividad actual. |
| [`f459a49`](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/f459a490df09c67c417fcf7ee8288ccd4be811dd) | AlisonPizarro1, 12-10-2026 | Añade la estructura inicial del proyecto, completa el README de inventarios y registra el enlace de Figma. | Define el primer estado del sistema del Equipo 3 y el documento que esta actividad mejora. |

Las fechas corresponden a los metadatos del historial Git mostrados con zona `-04:00`. Para revisar el historial del archivo: `git log --follow -- README.md`; para identificar quién modificó cada línea: `git blame README.md`. El `blame` consultado atribuye las dos líneas iniciales a `a6d2b01` y la descripción del proyecto a `f459a49`.

## Incidencias y Pull Requests

El repositorio contiene Pull Requests públicos de documentación, pero las propuestas visibles corresponden a ramas de otros participantes. No se atribuyen a la rama del Equipo 3. El Pull Request de esta práctica, si se publica, se añadirá aquí cuando exista un enlace verificable.

## Uso durante la investigación de defectos

Ante un defecto, ubicar primero el archivo o línea afectada, usar `git blame` para hallar el commit que introdujo la lógica y abrir ese commit para revisar el contexto completo. Después buscar el Pull Request asociado para leer el motivo del cambio, los comentarios y las pruebas consideradas. Comparar con una versión anterior ayuda a determinar si el defecto surgió en esa modificación o ya existía; el historial orienta la investigación, pero se debe reproducir el fallo con una prueba antes de asignar causa.
