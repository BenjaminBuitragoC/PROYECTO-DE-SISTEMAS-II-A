# Pruebas

Las pruebas viven junto al código, dentro de `src/`:

| Dónde | Qué prueba | Cantidad | Comando |
|---|---|---|---|
| `src/GanaderiaPro.Tests` | Servidor: reglas de negocio, permisos, planes, sincronización, reproducción, alertas, socios y Excel (xUnit + Moq) | 415 | `dotnet test` (en `src`) |
| `src/GanaderiaPro.App/test` | Aplicación Flutter: pantallas, validaciones, modo sin conexión, historial, tablero y notificaciones | 156 | `flutter test` (en `src/GanaderiaPro.App`) |

Todas pasaron tras las correcciones del Sprint 3 (19/11/2026) y se ejecutan en cada cambio con GitHub Actions
en el repositorio de desarrollo. Además, las 15 historias del Sprint 3 y las correcciones RC-01 a RC-11 se probaron a mano con resultado correcto.
