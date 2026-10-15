# Pruebas

Las pruebas viven junto al código, dentro de `src/`:

| Dónde | Qué prueba | Cantidad | Comando |
|---|---|---|---|
| `src/GanaderiaPro.Tests` | Servidor: reglas de negocio, permisos, planes y sincronización (xUnit + Moq) | 222 | `dotnet test` (en `src`) |
| `src/GanaderiaPro.App/test` | Aplicación Flutter: pantallas, validaciones y modo sin conexión | 101 | `flutter test` (en `src/GanaderiaPro.App`) |

Todas pasaron al cierre del Sprint 2 (06/10/2026) y se ejecutan en cada cambio con GitHub Actions
en el repositorio de desarrollo. Ver la sección de calidad de `docs/GanaderiaPro_Informe_Sprint2.docx`.
