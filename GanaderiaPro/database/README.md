# Base de datos

- **Motor:** PostgreSQL (en Docker, ver `src/docker-compose.yml`). Acceso con Entity Framework Core (Code First).
- **`script_estructura.sql`:** crea las 9 tablas con todas las migraciones aplicadas (ranchos, usuarios, invitaciones,
  animales, pesajes, corrales, vacunas y vacunaciones). Es idempotente y **no contiene datos de usuarios**; solo el
  catálogo de 9 vacunas.
- **Modelo entidad-relación:** `docs/GanaderiaPro_Diagrama_ER.png`.
- En desarrollo, las tablas se crean solas con `dotnet ef database update` (ver `src/README.md`).
