# Guía de reutilización e InnerSource

## Recurso compartible

Esta guía es una plantilla genérica para organizar contribuciones a proyectos
académicos: flujo de ramas, Pull Requests, revisiones, seguridad y trazabilidad.
No contiene credenciales, información privada ni datos específicos de un usuario.

## Cómo reutilizarla

1. Copiar el archivo `docs/guia-reutilizacion.md` al repositorio del equipo.
2. Ajustar los nombres de ramas y responsables a la estructura del equipo.
3. Mantener el flujo de revisión mediante Pull Requests.
4. Registrar en cada cambio el objetivo, los archivos afectados y la validación.
5. Eliminar cualquier ejemplo que contenga datos reales antes de publicar la guía.

## Reglas para proponer modificaciones

- Crear una rama descriptiva a partir de `main`.
- Explicar en el Pull Request el problema, la solución y las pruebas realizadas.
- No modificar directamente `main`.
- No incluir secretos, tokens, contraseñas ni datos personales.
- Solicitar al menos una revisión de otro integrante.
- Resolver los comentarios antes de fusionar.
- Actualizar esta guía cuando cambie el flujo acordado por el equipo.

## Revisión y mantenimiento

El líder del equipo coordina la revisión del contenido y un desarrollador distinto
verifica la claridad de los pasos. La persona que proponga un cambio debe mantener
actualizados los enlaces y ejemplos. El equipo revisará la guía al inicio de cada
sprint o cuando se modifique la estrategia de ramas y permisos.

## Criterios de aceptación

- Las instrucciones permiten reproducir el flujo sin explicaciones externas.
- El documento no contiene secretos ni datos confidenciales.
- El Pull Request incluye evidencia de revisión.
- La documentación enlaza a los artefactos realmente existentes.
