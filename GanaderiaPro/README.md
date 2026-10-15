# GanaderíaPro

**Sistema de gestión integral de ganado bovino** · Proyecto de Sistemas II · Universidad del Valle

## Descripción

GanaderíaPro es una plataforma web y móvil para que los ganaderos registren y controlen su hato bovino en un solo
lugar: animales, pesajes, reproducción, vacunaciones y tratamientos, corrales, colaboradores con roles y permisos,
alertas y un tablero de indicadores. Funciona **sin conexión a Internet** en el campo y sincroniza los datos
automáticamente al volver la señal. Se ofrece por suscripción con tres planes (Básico, Intermedio y Superior) y una
prueba gratuita de 10 días.

## Objetivo general

Desarrollar un sistema web y móvil que permita a los ganaderos pequeños y medianos gestionar de forma integral su
ganado bovino —registro, sanidad, reproducción, corrales y trabajo en equipo—, incluso en zonas sin conectividad, para
reemplazar los registros en papel, reducir errores y apoyar la toma de decisiones con información confiable y
actualizada.

## Integrantes del equipo

| Integrante | Rol en el proyecto |
|---|---|
| Calizaya Choque William Alejandro | Desarrollador |
| Choquecallata Paco Roberto Carlos | Desarrollador |
| Lazcano Estrella Alejandro | Desarrollador |
| Vigabriel Arista Alexander | Líder técnico y desarrollador |

## Tecnologías utilizadas

| Capa | Tecnología |
|---|---|
| Servidor (API) | ASP.NET Core (.NET 10), arquitectura en capas (Domain, Application, Infrastructure, Api) |
| Base de datos | PostgreSQL con Entity Framework Core (Code First y migraciones), en Docker |
| Seguridad | JWT, contraseñas con hash, permisos por rol validados en el servidor |
| Aplicación | Flutter (web, Android e iOS), SQLite local para el modo sin conexión |
| Sitio público | HTML, CSS y JavaScript |
| Pruebas | xUnit y Moq (servidor), flutter_test (aplicación) |
| Control de versiones e integración continua | Git, GitHub y GitHub Actions |

## Prototipo en Figma

Pendiente: el enlace se agrega en el Sprint 3 (ver `figma/enlace_figma.md`).

## Estado del proyecto

| Sprint | Contenido | Estado |
|---|---|---|
| Sprint 1 · 49 pts | Sitio público, registro e inicio de sesión, gestión de ganado | ✅ Entregado |
| Sprint 2 · 48 pts | Baja y pesajes, sanidad, corrales, colaboradores y roles, límites del plan, modo sin conexión | ✅ Entregado (06/10/2026) |
| Sprint 3 · 48 pts | Reproducción, tratamientos, notificaciones, tablero, socios, asistente y Excel | ⏳ En planificación (19/10 al 02/11/2026) |

Calidad al cierre del Sprint 2: **222 pruebas** del servidor y **101** de la aplicación, en verde.

## Estructura

| Carpeta | Contenido |
|---|---|
| `docs/` | Canvas, Requisitos, Backlog, Riesgos, informe del Sprint 2 y diagrama entidad-relación |
| `figma/` | Enlace al prototipo |
| `src/` | Código fuente completo; cómo ejecutarlo en `src/README.md` |
| `database/` | Script de estructura de la base de datos |
| `tests/` | Dónde están las pruebas y cómo correrlas |

## Cómo levantarlo (resumen)

1. `docker start ganaderiapro-db` (ver `src/docker-compose.yml` para crearla la primera vez).
2. Servidor: `dotnet run --urls "http://localhost:5199"` dentro de `src/GanaderiaPro.Api`.
3. Aplicación: `flutter run -d web-server --web-port=8090` dentro de `src/GanaderiaPro.App`.

La guía completa, con la configuración local, está en `src/README.md`. El historial completo del desarrollo (commits,
Issues, Pull Requests y Releases) está en https://github.com/AlexVigabriel/GanaderiaPro.

## Licencia

Uso académico · Proyecto de Sistemas II, Universidad del Valle.
