# PROYECTO-DE-SISTEMAS-II-A

# Sistema de Gestión de Eventos

## 1. Descripción
Plataforma web diseñada para la organización, gestión y control integral de eventos, permitiendo la administración de registros, venta de entradas y control de asistencia en tiempo real.

## 2. Objetivo general
Desarrollar un sistema robusto y escalable para automatizar la planificación, gestión logística y control de participantes en eventos corporativos y académicos.

## 3. Integrantes del equipo
| Integrante | Rol propuesto |
|---|---|
| Jhosep Dilan Rocabado | Líder del equipo |
| Torcuato | Desarrollador |
| Prudencio | Desarrollador |
| Espinoza | Revisor |

> Los roles y permisos detallados están en [docs/permisos-y-mfa.md](docs/permisos-y-mfa.md).

## 4. Tecnologías utilizadas
* **Frontend / UI:** HTML5, CSS3, JavaScript, Figma
* **Backend:** Node.js, NestJS, Express
* **Base de datos:** MySQL (Aiven), Prisma ORM
* **Control de versiones:** Git y GitHub

## 5. Enlace al prototipo Figma
[Ver prototipo en Figma](https://www.figma.com/design/jLyLUqGgqGIocnKJ6D3EfU/Sin-t%C3%ADtulo?node-id=0-1&t=D64DxUJqFhrjMsXm-1)

## 6. Estructura del repositorio
| Carpeta / archivo | Contenido |
|---|---|
| `database/schema.sql` | Modelo inicial de base de datos |
| `docs/` | Requisitos, backlog, riesgos, canvas y guías del equipo |
| `figma/` | Enlace al prototipo |
| `src/` | Código fuente (validaciones iniciales) |
| `tests/` | Pruebas unitarias |

Documentación del equipo:
* [Guía de reutilización (InnerSource)](docs/guia-reutilizacion.md)
* [Informe de seguridad](docs/informe-seguridad.md)
* [Permisos y MFA](docs/permisos-y-mfa.md)
* [Trazabilidad del historial](docs/trazabilidad.md)
* [Uso de IA en validaciones](docs/uso-de-ia.md)
* [Conclusiones y buenas prácticas](docs/conclusiones.md)

## 7. Flujo de trabajo
1. No se hacen cambios directamente sobre `main`.
2. Cada cambio se hace en una rama propia (ej. `docs-mejora-proyecto`).
3. Commits descriptivos con prefijo: `docs:`, `feat:`, `fix:`, `test:`, `database:`.
4. Todo cambio entra mediante Pull Request revisado por otro integrante.

## 8. Ejecutar las pruebas
Requiere Node.js 18 o superior:
```bash
npm test
```

## 9. Estado del proyecto
* **Estado actual:** En desarrollo (fase de análisis y diseño inicial)

## 10. Licencia
Este proyecto está bajo la licencia MIT.
