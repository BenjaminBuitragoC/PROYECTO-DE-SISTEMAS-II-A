-- Modelo inicial de inventarios compatible con SQLite
-- Ejecutar con claves foráneas habilitadas en cada conexión.
PRAGMA foreign_keys = ON;

CREATE TABLE categorias (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE CHECK(length(trim(nombre)) > 0)
);

CREATE TABLE productos (
    id INTEGER PRIMARY KEY,
    codigo TEXT NOT NULL UNIQUE CHECK(length(trim(codigo)) > 0),
    nombre TEXT NOT NULL CHECK(length(trim(nombre)) > 0),
    categoria_id INTEGER NOT NULL REFERENCES categorias(id),
    stock_actual INTEGER NOT NULL DEFAULT 0 CHECK(stock_actual >= 0),
    stock_minimo INTEGER NOT NULL DEFAULT 0 CHECK(stock_minimo >= 0),
    precio_centavos INTEGER NOT NULL DEFAULT 0 CHECK(precio_centavos >= 0)
);

CREATE TABLE movimientos (
    id INTEGER PRIMARY KEY,
    producto_id INTEGER NOT NULL REFERENCES productos(id),
    tipo TEXT NOT NULL CHECK(tipo IN ('ENTRADA', 'SALIDA')),
    cantidad INTEGER NOT NULL CHECK(cantidad > 0),
    fecha TEXT NOT NULL,
    motivo TEXT NOT NULL CHECK(length(trim(motivo)) > 0)
);

CREATE INDEX idx_movimientos_producto_fecha ON movimientos(producto_id, fecha);
