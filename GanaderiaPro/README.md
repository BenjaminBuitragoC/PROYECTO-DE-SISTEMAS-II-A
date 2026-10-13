# GanaderíaPro

Sistema de gestión integral de ganado bovino: sitio público, API en ASP.NET Core (.NET 10) con PostgreSQL y
aplicación Flutter (web y móvil) con modo sin conexión.

**Autor:** Vigabriel · Proyecto de Sistemas II

## Estado

| Sprint | Estado |
|---|---|
| Sprint 1 · 17 historias, 49 pts | Entregado |
| Sprint 2 · 13 historias, 48 pts + correcciones del jurado | Entregado (06/10/2026) |
| Sprint 3 · 15 historias, 48 pts | Pendiente |

Calidad al cierre del Sprint 2: **222 pruebas** del servidor y **101** de la app, en verde.

## Estructura

| Carpeta | Contenido |
|---|---|
| `src/` | Código fuente completo (solución, API, capas, app Flutter, sitio público). Cómo ejecutarlo: `src/README.md` |
| `tests/` | Dónde están las pruebas y cómo correrlas |
| `docs/` | Backlog, informe del Sprint 2 y diagrama entidad-relación |
| `database/` | Script de estructura de la base de datos |
| `figma/` | Prototipo (pendiente, Sprint 3) |

## Historial completo del desarrollo

El repositorio de desarrollo, con los commits, Pull Requests, Issues y las Releases `sprint-1` y `sprint-2`:
https://github.com/AlexVigabriel/GanaderiaPro

Esta carpeta es una copia de la versión del Sprint 2 (etiqueta `sprint-2`).

## Cómo levantarlo (resumen)

1. `docker start ganaderiapro-db` (ver `src/docker-compose.yml` para crearla la primera vez).
2. Servidor: `dotnet run --urls "http://localhost:5199"` dentro de `src/GanaderiaPro.Api`.
3. App: `flutter run -d web-server --web-port=8090` dentro de `src/GanaderiaPro.App`.

Guía completa, con las claves de configuración local, en `src/README.md`.
