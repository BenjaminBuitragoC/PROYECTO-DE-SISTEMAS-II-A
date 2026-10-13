CREATE TABLE IF NOT EXISTS "__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL,
    CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId")
);

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927011910_InitialCreate') THEN
    CREATE TABLE "Ranchos" (
        "Id" uuid NOT NULL,
        "Nombre" character varying(150) NOT NULL,
        "Plan" character varying(20) NOT NULL,
        "FechaRegistro" timestamp with time zone NOT NULL,
        "FechaFinPruebaGratuita" timestamp with time zone NOT NULL,
        CONSTRAINT "PK_Ranchos" PRIMARY KEY ("Id")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927011910_InitialCreate') THEN
    CREATE TABLE "Usuarios" (
        "Id" uuid NOT NULL,
        "RanchoId" uuid NOT NULL,
        "Nombre" character varying(150) NOT NULL,
        "Email" character varying(200) NOT NULL,
        "PasswordHash" text NOT NULL,
        "Rol" character varying(20) NOT NULL,
        "FechaRegistro" timestamp with time zone NOT NULL,
        "Activo" boolean NOT NULL,
        CONSTRAINT "PK_Usuarios" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Usuarios_Ranchos_RanchoId" FOREIGN KEY ("RanchoId") REFERENCES "Ranchos" ("Id") ON DELETE CASCADE
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927011910_InitialCreate') THEN
    CREATE UNIQUE INDEX "IX_Usuarios_Email" ON "Usuarios" ("Email");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927011910_InitialCreate') THEN
    CREATE INDEX "IX_Usuarios_RanchoId" ON "Usuarios" ("RanchoId");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927011910_InitialCreate') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20260927011910_InitialCreate', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927152829_AgregarAnimal') THEN
    CREATE TABLE "Animales" (
        "Id" uuid NOT NULL,
        "RanchoId" uuid NOT NULL,
        "Arete" character varying(50) NOT NULL,
        "Sexo" character varying(10) NOT NULL,
        "Raza" character varying(100) NOT NULL,
        "Peso" numeric(7,2),
        "Estado" character varying(20) NOT NULL,
        "FechaRegistro" timestamp with time zone NOT NULL,
        CONSTRAINT "PK_Animales" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Animales_Ranchos_RanchoId" FOREIGN KEY ("RanchoId") REFERENCES "Ranchos" ("Id") ON DELETE CASCADE
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927152829_AgregarAnimal') THEN
    CREATE UNIQUE INDEX "IX_Animales_RanchoId_Arete" ON "Animales" ("RanchoId", "Arete");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20260927152829_AgregarAnimal') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20260927152829_AgregarAnimal', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    ALTER TABLE "Animales" ADD "Color" character varying(40);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    ALTER TABLE "Animales" ADD "FechaNacimiento" date;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    ALTER TABLE "Animales" ADD "Nombre" character varying(100);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    ALTER TABLE "Animales" ADD "Observaciones" character varying(500);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    ALTER TABLE "Animales" ADD "PesoNacimiento" numeric(7,2);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002034859_AmpliarFichaAnimal') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261002034859_AmpliarFichaAnimal', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002070155_AgregarCastradoAnimal') THEN
    ALTER TABLE "Animales" ADD "Castrado" boolean NOT NULL DEFAULT FALSE;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261002070155_AgregarCastradoAnimal') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261002070155_AgregarCastradoAnimal', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004214612_RegistrarBajaAnimal') THEN
    ALTER TABLE "Animales" ADD "CausaMuerte" character varying(30);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004214612_RegistrarBajaAnimal') THEN
    ALTER TABLE "Animales" ADD "DetalleCausaMuerte" character varying(100);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004214612_RegistrarBajaAnimal') THEN
    ALTER TABLE "Animales" ADD "FechaBaja" date;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004214612_RegistrarBajaAnimal') THEN
    ALTER TABLE "Animales" ADD "ObservacionBaja" character varying(500);
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004214612_RegistrarBajaAnimal') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261004214612_RegistrarBajaAnimal', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004221729_AgregarPesajes') THEN
    CREATE TABLE "Pesajes" (
        "Id" uuid NOT NULL,
        "AnimalId" uuid NOT NULL,
        "Fecha" date NOT NULL,
        "Peso" numeric(7,2) NOT NULL,
        "Observacion" character varying(500),
        "FechaRegistro" timestamp with time zone NOT NULL,
        CONSTRAINT "PK_Pesajes" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Pesajes_Animales_AnimalId" FOREIGN KEY ("AnimalId") REFERENCES "Animales" ("Id") ON DELETE CASCADE
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004221729_AgregarPesajes') THEN
    CREATE INDEX "IX_Pesajes_AnimalId_Fecha" ON "Pesajes" ("AnimalId", "Fecha");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261004221729_AgregarPesajes') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261004221729_AgregarPesajes', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005022008_AgregarVersionSesion') THEN
    ALTER TABLE "Usuarios" ADD "VersionSesion" integer NOT NULL DEFAULT 0;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005022008_AgregarVersionSesion') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261005022008_AgregarVersionSesion', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE TABLE "Vacunas" (
        "Id" uuid NOT NULL,
        "Nombre" character varying(100) NOT NULL,
        CONSTRAINT "PK_Vacunas" PRIMARY KEY ("Id")
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE TABLE "Vacunaciones" (
        "Id" uuid NOT NULL,
        "AnimalId" uuid NOT NULL,
        "VacunaId" uuid NOT NULL,
        "VeterinarioId" uuid NOT NULL,
        "Dosis" character varying(50) NOT NULL,
        "FechaAplicacion" date NOT NULL,
        "FechaProximaDosis" date,
        "Observacion" character varying(500),
        "FechaRegistro" timestamp with time zone NOT NULL,
        CONSTRAINT "PK_Vacunaciones" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Vacunaciones_Animales_AnimalId" FOREIGN KEY ("AnimalId") REFERENCES "Animales" ("Id") ON DELETE CASCADE,
        CONSTRAINT "FK_Vacunaciones_Usuarios_VeterinarioId" FOREIGN KEY ("VeterinarioId") REFERENCES "Usuarios" ("Id") ON DELETE RESTRICT,
        CONSTRAINT "FK_Vacunaciones_Vacunas_VacunaId" FOREIGN KEY ("VacunaId") REFERENCES "Vacunas" ("Id") ON DELETE RESTRICT
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000001', 'Fiebre aftosa');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000002', 'Rabia bovina');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000003', 'Brucelosis');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000004', 'Carbunclo sintomático (mancha)');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000005', 'Clostridiosis polivalente');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000006', 'Leptospirosis');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000007', 'IBR-DVB (reproductiva)');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000008', 'Pasteurelosis');
    INSERT INTO "Vacunas" ("Id", "Nombre")
    VALUES ('8f1a2b01-0000-4000-8000-000000000009', 'Carbunclo bacteridiano (ántrax)');
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE INDEX "IX_Vacunaciones_AnimalId_FechaAplicacion" ON "Vacunaciones" ("AnimalId", "FechaAplicacion");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE INDEX "IX_Vacunaciones_FechaProximaDosis" ON "Vacunaciones" ("FechaProximaDosis");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE INDEX "IX_Vacunaciones_VacunaId" ON "Vacunaciones" ("VacunaId");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE INDEX "IX_Vacunaciones_VeterinarioId" ON "Vacunaciones" ("VeterinarioId");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    CREATE UNIQUE INDEX "IX_Vacunas_Nombre" ON "Vacunas" ("Nombre");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005025338_AgregarVacunaciones') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261005025338_AgregarVacunaciones', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    ALTER TABLE "Animales" ADD "CorralId" uuid;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    CREATE TABLE "Corrales" (
        "Id" uuid NOT NULL,
        "RanchoId" uuid NOT NULL,
        "Nombre" character varying(60) NOT NULL,
        "Capacidad" integer NOT NULL,
        "Activo" boolean NOT NULL,
        "FechaCreacion" timestamp with time zone NOT NULL,
        CONSTRAINT "PK_Corrales" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Corrales_Ranchos_RanchoId" FOREIGN KEY ("RanchoId") REFERENCES "Ranchos" ("Id") ON DELETE CASCADE
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    CREATE INDEX "IX_Animales_CorralId" ON "Animales" ("CorralId");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    CREATE UNIQUE INDEX "IX_Corrales_RanchoId_Nombre" ON "Corrales" ("RanchoId", "Nombre");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    ALTER TABLE "Animales" ADD CONSTRAINT "FK_Animales_Corrales_CorralId" FOREIGN KEY ("CorralId") REFERENCES "Corrales" ("Id") ON DELETE SET NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005035230_AgregarCorrales') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261005035230_AgregarCorrales', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    ALTER TABLE "Usuarios" ADD "Estado" character varying(15) NOT NULL DEFAULT 'Activo';
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    UPDATE "Usuarios" SET "Estado" = 'Inactivo' WHERE "Activo" = FALSE;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    ALTER TABLE "Usuarios" DROP COLUMN "Activo";
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    UPDATE "Usuarios" SET "Email" = lower(trim("Email"));
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    CREATE UNIQUE INDEX "IX_Usuarios_Email_SinMayusculas" ON "Usuarios" (lower("Email"));
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    ALTER TABLE "Usuarios" ADD "UltimoAcceso" timestamp with time zone;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    CREATE TABLE "Invitaciones" (
        "Id" uuid NOT NULL,
        "UsuarioId" uuid NOT NULL,
        "CodigoHash" character varying(64) NOT NULL,
        "FechaCreacion" timestamp with time zone NOT NULL,
        "FechaVencimiento" timestamp with time zone NOT NULL,
        "FechaUso" timestamp with time zone,
        CONSTRAINT "PK_Invitaciones" PRIMARY KEY ("Id"),
        CONSTRAINT "FK_Invitaciones_Usuarios_UsuarioId" FOREIGN KEY ("UsuarioId") REFERENCES "Usuarios" ("Id") ON DELETE CASCADE
    );
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    CREATE UNIQUE INDEX "IX_Invitaciones_CodigoHash" ON "Invitaciones" ("CodigoHash");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    CREATE INDEX "IX_Invitaciones_UsuarioId" ON "Invitaciones" ("UsuarioId");
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261005161817_AgregarColaboradores') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261005161817_AgregarColaboradores', '10.0.12');
    END IF;
END $EF$;
COMMIT;

START TRANSACTION;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261006205724_AgregarIdClienteAnimal') THEN
    ALTER TABLE "Animales" ADD "IdCliente" uuid;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261006205724_AgregarIdClienteAnimal') THEN
    CREATE UNIQUE INDEX "IX_Animales_RanchoId_IdCliente" ON "Animales" ("RanchoId", "IdCliente") WHERE "IdCliente" IS NOT NULL;
    END IF;
END $EF$;

DO $EF$
BEGIN
    IF NOT EXISTS(SELECT 1 FROM "__EFMigrationsHistory" WHERE "MigrationId" = '20261006205724_AgregarIdClienteAnimal') THEN
    INSERT INTO "__EFMigrationsHistory" ("MigrationId", "ProductVersion")
    VALUES ('20261006205724_AgregarIdClienteAnimal', '10.0.12');
    END IF;
END $EF$;
COMMIT;

