-- ============================================================
-- MODELO DE BASE DE DATOS INICIAL
-- Sistema de Gestión de Eventos y Venta de Entradas
-- ============================================================

-- 1. TABLA DE USUARIOS (Roles: Admin, Cliente/Organizador, Usuario Normal, Supervisor, Recargador)
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    celular VARCHAR(20),
    rol ENUM('ADMIN', 'ORGANIZADOR', 'CLIENTE_NORMAL', 'SUPERVISOR', 'RECARGADOR') DEFAULT 'CLIENTE_NORMAL',
    foto_url VARCHAR(255),
    saldo_billetera DECIMAL(10, 2) DEFAULT 0.00,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. TABLA DE SOLICITUDES DE EVENTOS (HU-001 / HU-051)
CREATE TABLE solicitudes_evento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    organizador_id INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    ubicacion VARCHAR(255) NOT NULL,
    mapa_url VARCHAR(255),
    estado ENUM('PENDIENTE', 'APROBADO', 'RECHAZADO', 'EVENTO_CREADO') DEFAULT 'PENDIENTE',
    fecha_solicitud TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (organizador_id) REFERENCES usuarios(id)
);

-- 3. TABLA DE EVENTOS (HU-003 / HU-054)
CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    solicitud_id INT UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    enlace_maps VARCHAR(255),
    foto_portada VARCHAR(255),
    tipo_acceso ENUM('QR_DIGITAL', 'QR_FISICO_MANILLA', 'AMBOS') DEFAULT 'QR_DIGITAL',
    estado ENUM('BORRADOR', 'PUBLICADO', 'FINALIZADO') DEFAULT 'BORRADOR',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (solicitud_id) REFERENCES solicitudes_evento(id)
);

-- 4. TABLA DE FECHAS DEL EVENTO (Soporte para eventos de varios días - HU-003, HU-010)
CREATE TABLE fechas_evento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento_id INT NOT NULL,
    fecha DATE NOT NULL,
    hora_inicio TIME,
    hora_fin TIME,
    FOREIGN KEY (evento_id) REFERENCES eventos(id) ON DELETE CASCADE
);

-- 5. TABLA DE CATEGORÍAS DE ENTRADA (General, VIP, Super VIP - HU-002, HU-006)
CREATE TABLE categorias_entrada (
    id INT AUTO_INCREMENT PRIMARY KEY,
    evento_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL, -- General, VIP, Super VIP
    precio DECIMAL(10, 2) NOT NULL,
    capacidad INT NOT NULL,
    beneficios TEXT,
    FOREIGN KEY (evento_id) REFERENCES eventos(id) ON DELETE CASCADE
);

-- 6. TABLA DE COMPRAS / COMPROBANTES (HU-012, HU-013)
CREATE TABLE compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    comprador_id INT NOT NULL,
    comprobante_pago_url VARCHAR(255) NOT NULL,
    monto_total DECIMAL(10, 2) NOT NULL,
    estado ENUM('PENDIENTE_VERIFICACION', 'APROBADO', 'RECHAZADO') DEFAULT 'PENDIENTE_VERIFICACION',
    fecha_compra TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (comprador_id) REFERENCES usuarios(id)
);

-- 7. TABLA DE ENTRADAS / TICKETS (HU-010, HU-011, HU-014)
CREATE TABLE entradas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    compra_id INT NOT NULL,
    categoria_id INT NOT NULL,
    fecha_evento_id INT NOT NULL, -- Fecha específica para la que aplica la entrada
    titular_nombre VARCHAR(100),
    titular_correo VARCHAR(150),
    titular_celular VARCHAR(20),
    codigo_qr VARCHAR(255) UNIQUE,
    manilla_codigo VARCHAR(100) UNIQUE, -- Para vincular manilla física (HU-015)
    estado ENUM('REGISTRADA', 'APROBADA', 'ENTREGADA', 'USADA') DEFAULT 'REGISTRADA',
    FOREIGN KEY (compra_id) REFERENCES compras(id),
    FOREIGN KEY (categoria_id) REFERENCES categorias_entrada(id),
    FOREIGN KEY (fecha_evento_id) REFERENCES fechas_evento(id)
);

-- 8. REGISTRO DE CONTROL DE ACCESO (HU-016, HU-017, HU-046)
CREATE TABLE registros_acceso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    entrada_id INT NOT NULL,
    supervisor_id INT NOT NULL,
    tipo_movimiento ENUM('INGRESO', 'SALIDA') NOT NULL,
    foto_verificacion_url VARCHAR(255), -- Foto capturada en primer ingreso (HU-046)
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (entrada_id) REFERENCES entradas(id),
    FOREIGN KEY (supervisor_id) REFERENCES usuarios(id)
);