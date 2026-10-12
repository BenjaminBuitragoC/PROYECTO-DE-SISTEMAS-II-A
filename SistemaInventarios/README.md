# Sistema de gestión de inventarios

## Descripción

Proyecto académico individual para organizar productos y registrar entradas y salidas de existencias. La entrega inicial contiene documentación, un prototipo navegable y un modelo de datos.

## Objetivo general

Diseñar un sistema que facilite el control de productos, la trazabilidad de movimientos y la identificación de stock bajo.

## Integrante

- `ricardoNP51`, cuenta de GitHub responsable de la actividad individual identificada como Equipo 3.

## Tecnologías utilizadas

- Git y GitHub para control de versiones y revisión.
- Markdown para documentación.
- Figma Design para el prototipo editable.
- SQL con sintaxis SQLite para el modelo inicial.
- Word, PDF y Excel para los artefactos académicos.

La tecnología de la aplicación funcional se decidirá durante la fase de implementación.

## Prototipo Figma

- [Abrir prototipo navegable](https://www.figma.com/proto/AbhDqhh8e0LKgXL9O2N2Pf/Sistema-de-inventarios---Equipo-3?node-id=2-1150&scaling=scale-down&content-scaling=fixed&starting-point-node-id=2%3A1150)
- [Abrir diseño editable](https://www.figma.com/design/AbhDqhh8e0LKgXL9O2N2Pf/Sistema-de-inventarios---Equipo-3?node-id=2-1150)
- [Documentación del prototipo](figma/enlace_figma.md)

El prototipo presenta Inventario, Agregar producto y Registrar movimiento. Guardar y cancelar simulan el recorrido; no persisten datos.

## Estructura

```text
SistemaInventarios/
├── README.md
├── .gitignore
├── docs/
│   ├── Canvas.pdf
│   ├── Requisitos.docx
│   ├── requisitos.md
│   ├── Backlog.xlsx
│   └── Riesgos.xlsx
├── figma/
│   ├── enlace_figma.md
│   └── capturas del prototipo
├── src/
│   └── README.md
├── database/
│   ├── README.md
│   └── schema.sql
└── tests/
    └── README.md
```

## Estado del proyecto

Inicialización documental y prototipado. La aplicación funcional, la persistencia de movimientos y las pruebas del sistema están pendientes de implementación. El modelo SQL corresponde a una versión inicial.

## Flujo de trabajo

Repositorio oficial: `BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A`. Se clonó `main` y se creó `equipo3-inventarios`. La cuenta no dispone de escritura en el repositorio oficial, por lo que la rama se publica en un fork y se propone su integración mediante Pull Request hacia `main` del repositorio oficial.
