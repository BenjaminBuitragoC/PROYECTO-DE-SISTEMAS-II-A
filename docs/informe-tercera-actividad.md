# Informe de la tercera actividad de autoaprendizaje

> Alcance: se desarrollan las actividades prácticas desde el objetivo de
> aprendizaje. La actividad de Microsoft Learn no forma parte de este informe,
> según la instrucción individual de trabajo.

## 1. Objetivo de aprendizaje

Aplicar colaboración, seguridad, revisión de código, administración de permisos,
trazabilidad e inteligencia artificial al repositorio
`BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A`.

## 2. Contribución y revisión

- Rama de trabajo: `docs-mejora-proyecto-licramires`.
- Artefactos mejorados: `README.md` y `docs/guia-reutilizacion.md`.
- Commit: `docs: mejorar flujo de contribución y guía de reutilización`.
- Pull Request: se debe abrir hacia `main` con este informe como descripción.
- Revisión solicitada: otro integrante debe verificar claridad, enlaces y ausencia
  de información sensible.

La rama exacta `docs-mejora-proyecto` ya existía en el repositorio, por lo que se
usó un nombre identificable para no modificar el trabajo de otro integrante.

## 3. InnerSource

La guía de reutilización es un artefacto genérico que otro equipo puede copiar,
adaptar y proponer mediante Pull Request. El procedimiento de contribución,
revisión y mantenimiento está documentado en
[`guia-reutilizacion.md`](guia-reutilizacion.md).

## 4. Seguridad del repositorio

| Aspecto | Estado observado | Riesgo | Acción recomendada |
|---|---|---|---|
| Visibilidad | El repositorio es público | Los archivos son visibles para cualquier persona | Mantener públicos solo los artefactos autorizados |
| Accesos | La revisión de permisos administrativos no es visible desde el contenido | Privilegios excesivos podrían permitir cambios no revisados | Aplicar mínimo privilegio y revisar colaboradores periódicamente |
| Rama principal | `main` existe y no se confirmó protección desde el contenido consultable | Cambios directos o fusiones sin revisión | Activar protección, revisión obligatoria y estados de CI |
| Pull Requests | Hay Pull Requests del repositorio | Un PR sin revisor puede integrar errores | Exigir al menos una aprobación antes de fusionar |
| Secretos | No se observaron contraseñas, tokens o claves en los archivos revisados | Una carga futura podría exponer credenciales | Usar `.gitignore`, escaneo de secretos y rotación inmediata si ocurre exposición |
| Dependencias | No hay manifiestos de dependencias en la raíz actual | No se puede automatizar un análisis completo | Registrar dependencias y habilitar alertas cuando exista código ejecutable |
| Copias de seguridad | Git conserva el historial remoto | Borrado accidental o errores operativos podrían afectar ramas | Mantener ramas remotas y exportaciones periódicas de entregables |

### Recomendaciones prioritarias

1. Proteger `main` y exigir Pull Request con revisión.
2. Activar MFA en las cuentas y escaneo de secretos.
3. Revisar trimestralmente colaboradores, ramas y copias de seguridad.

## 5. Administración, autenticación y permisos

| Rol | Leer | Crear ramas/commits | Revisar PR | Administrar permisos |
|---|---|---|---|---|
| Docente/administrador | Sí | Sí | Sí | Según configuración |
| Líder del equipo | Sí | Sí | Sí | No, salvo autorización |
| Desarrollador | Sí | Sí | Puede participar | No |
| Revisor | Sí | Puede crear correcciones | Sí | No |

La autenticación comprueba quién es la persona; la autorización determina qué
acciones puede ejecutar. No todos deben ser administradores porque un error o una
cuenta comprometida tendría mayor impacto. Compartir una cuenta elimina la
trazabilidad individual y dificulta revocar el acceso. La protección recomendada
es MFA, contraseña única, gestor de contraseñas, recuperación segura y revisión
periódica de sesiones.

## 6. Historial y búsqueda

Tres commits relevantes de `main`:

1. [a6d2b01 Initial commit](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/a6d2b01c61b1f915a8a92ab32b025ed9077ac6fe):
   creó el repositorio.
2. [2a2de8c Add files via upload](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/2a2de8c8f02bc78c960ef672bbd2b1f525f5281d):
   incorporó los primeros archivos de actividades.
3. [31ad917 Add files via upload](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/31ad9172b443769e2c54352b266a6bdd703759f8):
   añadió la versión actual de los materiales.

En los tres registros, el autor visible es `BenjaminBuitragoC` y GitHub muestra
las fechas en cada commit. La evolución de `README.md` puede seguirse comparando
el archivo entre esos commits y mediante la vista de historial/blame. El
[Pull Request #15](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/15)
es un ejemplo de revisión documental relacionada con el repositorio.

Esta trazabilidad permite ubicar cuándo apareció un cambio, quién lo realizó y
qué PR lo justificó; así se reduce el tiempo para reproducir un defecto y
seleccionar el commit candidato a revisión o reversión.

## 7. GitHub Copilot y asistencia con IA

### Función seleccionada

Validar que un correo tenga un formato básico seguro para los formularios del
sistema. La validación no intenta demostrar que el buzón exista.

### Prompt utilizado

> Propón una función Python pequeña para validar un correo electrónico sin
> permitir espacios, con una sola arroba y un dominio con punto. Incluye pruebas
> unitarias para casos válidos, inválidos y límites. No uses dependencias externas.

La propuesta final revisada está en
[`actividad_7_validacion_email.py`](actividad_7_validacion_email.py). Se
prefirió `re.fullmatch`, se rechazaron espacios y se añadieron casos límite
como cadena vacía, doble arroba y dominio sin punto.

Ejecución prevista:

```text
python docs/test_validacion_email.py -v
Ran 7 tests ... OK
```

La IA acelera el diseño de casos y sugiere alternativas, pero puede introducir
validaciones demasiado permisivas o asumir requisitos inexistentes. Por eso se
revisó el código, se definieron límites explícitos y se ejecutaron pruebas.

## 8. Integración y conclusión

La mejora integra control de cambios mediante rama y commit, revisión mediante
Pull Request, documentación de seguridad, permisos mínimos, trazabilidad y
pruebas diseñadas con asistencia de IA. Para el resto del semestre el equipo
debería mantener ramas protegidas, revisiones obligatorias, commits pequeños,
MFA, escaneo de secretos y pruebas asociadas a cada cambio. Estas prácticas
reducen errores, hacen auditable el trabajo y facilitan recuperar el estado
correcto cuando aparece un defecto.
