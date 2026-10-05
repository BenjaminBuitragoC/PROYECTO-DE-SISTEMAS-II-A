-- Inventario Claro: modelo inicial para SQLite.
-- Ejecutar con PRAGMA foreign_keys = ON en cada conexión.
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS categorias (
    id INTEGER PRIMARY KEY,
    nombre TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS productos (
    id INTEGER PRIMARY KEY,
    codigo TEXT NOT NULL UNIQUE,
    nombre TEXT NOT NULL,
    categoria_id INTEGER REFERENCES categorias(id),
    unidad TEXT NOT NULL DEFAULT 'unidad',
    stock_actual INTEGER NOT NULL DEFAULT 0 CHECK (stock_actual >= 0),
    stock_minimo INTEGER NOT NULL DEFAULT 0 CHECK (stock_minimo >= 0),
    activo INTEGER NOT NULL DEFAULT 1 CHECK (activo IN (0, 1))
);

CREATE TABLE IF NOT EXISTS movimientos (
    id INTEGER PRIMARY KEY,
    producto_id INTEGER NOT NULL REFERENCES productos(id),
    tipo TEXT NOT NULL CHECK (tipo IN ('entrada', 'salida')),
    cantidad INTEGER NOT NULL CHECK (cantidad > 0),
    responsable TEXT NOT NULL,
    observacion TEXT,
    creado_en TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TRIGGER IF NOT EXISTS aplicar_movimiento
BEFORE INSERT ON movimientos
BEGIN
    SELECT CASE
        WHEN (SELECT activo FROM productos WHERE id = NEW.producto_id) <> 1
            THEN RAISE(ABORT, 'producto inactivo')
        WHEN NEW.tipo = 'salida' AND
             (SELECT stock_actual FROM productos WHERE id = NEW.producto_id) < NEW.cantidad
            THEN RAISE(ABORT, 'stock insuficiente')
    END;
    UPDATE productos
       SET stock_actual = stock_actual +
           CASE WHEN NEW.tipo = 'entrada' THEN NEW.cantidad ELSE -NEW.cantidad END
     WHERE id = NEW.producto_id;
END;

CREATE VIEW IF NOT EXISTS productos_bajo_minimo AS
SELECT codigo, nombre, stock_actual, stock_minimo
  FROM productos
 WHERE activo = 1 AND stock_actual <= stock_minimo;
