# Guía de reutilización documental — InnerSource

**Asignatura:** Proyecto de Sistemas II  
**Proyecto de referencia:** GanaderíaPro  
**Actividad:** 3 — InnerSource y colaboración entre equipos

## 1. Recurso compartible

Se propone una **plantilla genérica de índice documental `README.md`**. Permite que distintos equipos organicen enlaces y descripciones de sus requisitos, backlog, riesgos, modelos de datos e informes, sin compartir información confidencial ni depender de un dominio específico.

## 2. Instrucciones de uso

1. Crear una carpeta `docs/` en el repositorio del equipo.
2. Copiar la estructura de la plantilla siguiente en `docs/README.md`.
3. Sustituir los ejemplos por los nombres reales de los archivos del equipo.
4. Revisar que cada enlace relativo funcione y que no incluya credenciales ni información personal.
5. Registrar la modificación en una rama de trabajo y solicitar revisión mediante Pull Request.

### Plantilla reutilizable

```markdown
# Documentación del proyecto

Este directorio contiene los artefactos del proyecto.

| Documento | Propósito | Responsable de actualización |
|---|---|---|
| [Requisitos](Requisitos.md) | Necesidades funcionales y no funcionales | Analista |
| [Backlog](Backlog.md) | Historias de usuario y prioridades | Responsable de producto |
| [Riesgos](Riesgos.md) | Riesgos y medidas de mitigación | Equipo |

## Mantenimiento
- Actualizar el índice al agregar, mover o renombrar documentos.
- Usar commits descriptivos y Pull Requests para revisar cambios.
- Comprobar enlaces antes de aprobar una contribución.
```

> Los nombres de archivo y roles son ejemplos; deben ajustarse a cada equipo.

## 3. Reglas para proponer modificaciones

- Crear una rama distinta de `main` y evitar modificar directamente ramas protegidas o ajenas.
- Abrir un Pull Request que explique el objetivo, los archivos modificados y cómo verificar los enlaces.
- No publicar secretos, datos personales, contraseñas ni tokens.
- Conservar la información previa, salvo que una corrección esté justificada.
- Atender observaciones de revisión antes de solicitar integración.

## 4. Revisión y mantenimiento

| Responsabilidad | Rol propuesto | Función |
|---|---|---|
| Elaboración | Integrante que realiza la mejora | Editar plantilla y verificar enlaces |
| Revisión | Otro integrante autorizado del equipo | Comprobar claridad, formato y pertinencia |
| Aprobación e integración | Responsable del repositorio o mantenedor autorizado | Aprobar y fusionar el Pull Request |
| Mantenimiento periódico | Responsable de documentación designado | Mantener el índice actualizado |

Los roles son una **propuesta**, no una declaración de permisos efectivamente concedidos.

## 5. Flujo InnerSource

**Propuesta → rama → cambio → commit → Pull Request → revisión → correcciones → integración autorizada.**

## 6. Aplicación al proyecto de referencia

En GanaderíaPro se elaboró una mejora de `GanaderiaPro/docs/README.md` en la rama `docs-mejora-proyecto-ganaderiapro` del fork `AxlRoss-punk/PROYECTO-DE-SISTEMAS-II-A` y se abrió el Pull Request [#14](https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/14). Esta experiencia sirve como ejemplo práctico de propuesta y revisión, **sin afirmar que la revisión o fusión ya se haya realizado**.

## 7. Evidencia pendiente

Publicar este archivo en `GanaderiaPro/docs/guia-reutilizacion.md` dentro de una rama autorizada del fork, registrar su commit y conservar el enlace al archivo. El archivo todavía no se ha publicado en GitHub.
