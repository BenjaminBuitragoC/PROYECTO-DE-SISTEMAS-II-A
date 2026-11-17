# Lista de verificación de seguridad del repositorio

**Alcance:** observación de la configuración pública del repositorio y de los archivos de la rama `AlisonPizarro_Equipo3-inventarios`. La visibilidad y estado de las reglas de rama se observaron en la API pública de GitHub. La lista nominal de colaboradores y sus permisos efectivos requiere acceso autenticado y no se afirma aquí.

| Aspecto | Estado observado | Riesgo | Acción recomendada |
| --- | --- | --- | --- |
| Visibilidad | El repositorio es público. | Cualquier persona puede leer los archivos y el historial, incluso si en el futuro se agregan documentos sensibles. | Mantenerlo público solo con material académico no confidencial; revisar cada archivo y artefacto antes de subirlo. |
| Accesos | La lectura pública está habilitada. La lista de colaboradores y permisos de escritura no fue visible sin autenticación. | No se puede confirmar desde una vista pública qué integrantes conservan acceso de escritura o administración. | Revisar la página **Settings > Collaborators and teams** con una cuenta autorizada; retirar accesos vencidos y asignar solo el nivel necesario. |
| Rama principal | La API de GitHub informa `protected: false` para `main`; tampoco se observó protección en la rama del equipo. | Un usuario con escritura podría enviar cambios directos sin controles obligatorios. | Solicitar al propietario protección de `main`, revisión obligatoria y restricciones de escritura. Como participante, trabajar en ramas y abrir Pull Requests. |
| Pull Requests | El repositorio permite Pull Requests; hay propuestas abiertas. No se observó una regla que obligue aprobaciones antes de integrar. | La existencia de Pull Requests no garantiza que cada cambio reciba revisión. | Acordar revisión independiente antes de integrar y exigir al menos una aprobación mediante reglas de rama cuando el propietario lo autorice. |
| Secretos y datos | La rama original incluía archivos de estado local de Visual Studio y documentos vacíos. Esta contribución elimina los archivos `.vs/` del árbol de la rama y añade reglas de exclusión para configuración local. Una búsqueda ligera de prefijos de tokens GitHub, claves AWS y encabezados de claves privadas no encontró coincidencias en los archivos de texto revisados; no equivale a un análisis histórico exhaustivo. | Un secreto agregado en un commit puede permanecer accesible en el historial aun después de borrarlo. | Activar secret scanning si está disponible y revocar cualquier clave expuesta; nunca crear un secreto de prueba en el repositorio. |
| Dependencias | No hay manifiesto de dependencias en esta rama; el software aún está en fase inicial. | No es posible generar un inventario ni evaluar vulnerabilidades de paquetes todavía. | Cuando se elija el stack, versionar manifiestos y lockfiles; habilitar Dependabot o revisar alertas y actualizar dependencias regularmente. |
| Copias de seguridad | GitHub conserva commits, pero no se encontró una estrategia documentada de restauración. | Borrado accidental, pérdida de acceso o daño de servicios puede interrumpir el trabajo. | Mantener una copia adicional bajo control del equipo, verificar que se pueda clonar y documentar cómo recuperar ramas y documentos. No guardar copias con credenciales. |

## Recomendaciones prioritarias

1. Pedir al propietario que proteja `main` y defina la revisión obligatoria de Pull Requests; la configuración pública observada no aplica esas barreras.
2. Verificar con una cuenta autorizada la lista de colaboradores y aplicar mínimo privilegio; la observación pública no permite confirmar nombres ni roles actuales.
3. Mantener la revisión de secretos y la copia de seguridad como pasos explícitos antes de integrar cada cambio.

La comprobación fue de solo lectura. No se modificaron visibilidad, permisos ni reglas del repositorio.
