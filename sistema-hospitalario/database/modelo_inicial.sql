-- Sistema Hospitalario - Modelo inicial de base de datos (Sprint 1)
-- Motor: MySQL 8

CREATE DATABASE IF NOT EXISTS sistema_hospitalario;
USE sistema_hospitalario;

CREATE TABLE especialidad (
    id_especialidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre          VARCHAR(100) NOT NULL UNIQUE,
    descripcion     VARCHAR(255)
);

CREATE TABLE paciente (
    id_paciente      INT AUTO_INCREMENT PRIMARY KEY,
    documento        VARCHAR(15)  NOT NULL UNIQUE,
    nombres          VARCHAR(100) NOT NULL,
    apellidos        VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE         NOT NULL,
    sexo             ENUM('M', 'F') NOT NULL,
    telefono         VARCHAR(15),
    direccion        VARCHAR(200),
    fecha_registro   DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE medico (
    id_medico       INT AUTO_INCREMENT PRIMARY KEY,
    colegiatura     VARCHAR(15)  NOT NULL UNIQUE,
    nombres         VARCHAR(100) NOT NULL,
    apellidos       VARCHAR(100) NOT NULL,
    telefono        VARCHAR(15),
    id_especialidad INT NOT NULL,
    FOREIGN KEY (id_especialidad) REFERENCES especialidad (id_especialidad)
);

CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    username   VARCHAR(50)  NOT NULL UNIQUE,
    password   VARCHAR(255) NOT NULL,
    rol        ENUM('ADMIN', 'RECEPCION', 'MEDICO') NOT NULL,
    id_medico  INT NULL,
    activo     BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_medico) REFERENCES medico (id_medico)
);

CREATE TABLE cita (
    id_cita     INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT      NOT NULL,
    id_medico   INT      NOT NULL,
    fecha_hora  DATETIME NOT NULL,
    motivo      VARCHAR(255),
    estado      ENUM('PROGRAMADA', 'ATENDIDA', 'CANCELADA') DEFAULT 'PROGRAMADA',
    FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente),
    FOREIGN KEY (id_medico)   REFERENCES medico (id_medico),
    UNIQUE (id_medico, fecha_hora)
);

CREATE TABLE historia_clinica (
    id_historia    INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente    INT NOT NULL UNIQUE,
    grupo_sanguineo VARCHAR(5),
    alergias       TEXT,
    antecedentes   TEXT,
    fecha_apertura DATE NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES paciente (id_paciente)
);

CREATE TABLE atencion (
    id_atencion   INT AUTO_INCREMENT PRIMARY KEY,
    id_historia   INT NOT NULL,
    id_cita       INT NOT NULL UNIQUE,
    diagnostico   TEXT NOT NULL,
    tratamiento   TEXT,
    observaciones TEXT,
    fecha         DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_historia) REFERENCES historia_clinica (id_historia),
    FOREIGN KEY (id_cita)     REFERENCES cita (id_cita)
);
