# Política de seguridad – Sistema de Gestión Gastronómica

## Versiones cubiertas
La política se aplica a la rama `Gastronomia-NihahtMontes` y a las ramas derivadas de ella.

## Reporte de vulnerabilidades
1. No publique la vulnerabilidad en una incidencia pública ni en un Pull Request.
2. Comuníquela por correo institucional al líder del equipo (Nihaht Montes) y al docente de la asignatura.
3. Incluya la descripción del problema, el archivo afectado y los pasos para reproducirlo.
4. El equipo confirmará la recepción en un plazo de tres días hábiles y propondrá una corrección mediante Pull Request.

## Reglas de manejo de información
- No subir contraseñas, tokens, claves ni cadenas de conexión de SQL Server.
- Usar variables de entorno o *user secrets* de .NET para la configuración sensible.
- Mantener actualizado el `.gitignore` para excluir `appsettings.*.json`, `.env` y archivos de compilación.
- Todo cambio se integra mediante Pull Request revisado por otro integrante.
