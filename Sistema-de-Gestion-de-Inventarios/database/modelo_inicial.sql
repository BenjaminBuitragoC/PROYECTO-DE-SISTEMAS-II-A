-- Modelo inicial propuesto para SQL Server. No ejecutado en un servidor.
CREATE TABLE Categoria (
    CategoriaId INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(80) NOT NULL UNIQUE
);
CREATE TABLE Producto (
    ProductoId INT IDENTITY(1,1) PRIMARY KEY,
    Codigo NVARCHAR(30) NOT NULL UNIQUE,
    Nombre NVARCHAR(120) NOT NULL,
    Unidad NVARCHAR(20) NOT NULL,
    StockMinimo DECIMAL(12,2) NOT NULL DEFAULT 0 CHECK (StockMinimo >= 0),
    CategoriaId INT NOT NULL REFERENCES Categoria(CategoriaId)
);
CREATE TABLE Movimiento (
    MovimientoId INT IDENTITY(1,1) PRIMARY KEY,
    ProductoId INT NOT NULL REFERENCES Producto(ProductoId),
    Tipo CHAR(1) NOT NULL CHECK (Tipo IN ('E','S')),
    Cantidad DECIMAL(12,2) NOT NULL CHECK (Cantidad > 0),
    Fecha DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    Motivo NVARCHAR(200) NOT NULL,
    Responsable NVARCHAR(120) NOT NULL
);
GO
CREATE VIEW Existencias AS
SELECT p.ProductoId, p.Codigo, p.Nombre, p.StockMinimo,
       COALESCE(SUM(CASE WHEN m.Tipo = 'E' THEN m.Cantidad ELSE -m.Cantidad END),0) AS Stock
FROM Producto p
LEFT JOIN Movimiento m ON m.ProductoId = p.ProductoId
GROUP BY p.ProductoId, p.Codigo, p.Nombre, p.StockMinimo;
GO
