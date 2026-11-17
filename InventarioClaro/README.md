# Inventario Claro

**Proyecto académico del equipo 3 · Estado: planificación y documentación inicial**

## Descripción

Inventario Claro es una propuesta de sistema para registrar productos, controlar entradas y salidas y consultar existencias. Está orientado inicialmente a pequeños almacenes o negocios que necesitan sustituir registros manuales dispersos por un historial centralizado.

## Objetivo general

Diseñar un sistema de gestión de inventario que permita conocer existencias actualizadas, rastrear movimientos y detectar productos que requieren reposición.

## Integrante

- Luis Santiago Rocha Mejia — GitHub: [@luisrocha159](https://github.com/luisrocha159)

## Tecnologías previstas

- **Python 3:** lenguaje propuesto para la futura aplicación.
- **SQLite:** base de datos para el modelo inicial; véase [`database/modelo_inicial.sql`](database/modelo_inicial.sql).
- **Figma:** prototipo de interfaz.
- **Git y GitHub:** control de versiones y revisión mediante Pull Request.

La aplicación todavía no está implementada; estas tecnologías describen la dirección propuesta, no un producto terminado.

## Prototipo Figma

[Ver el panel inicial de Inventario Claro](https://www.figma.com/design/Ykt77RsFoMMuocLCJ0hCZO/Inventario-Claro?node-id=2-21). La pantalla usa datos de ejemplo y no representa existencias reales.

## Documentación

- [`docs/Canvas.pdf`](docs/Canvas.pdf): problema, usuarios, solución y alcance.
- [`docs/Requisitos.docx`](docs/Requisitos.docx): requisitos funcionales, no funcionales y reglas de negocio.
- [`docs/Backlog.xlsx`](docs/Backlog.xlsx): historias iniciales y criterios de aceptación.
- [`docs/Riesgos.xlsx`](docs/Riesgos.xlsx): riesgos y acciones de mitigación.
- [`docs/guia-reutilizacion.md`](docs/guia-reutilizacion.md): plantilla de pruebas que otros equipos pueden adaptar.

## Cómo comprobar una salida de inventario

El requisito RF03 pide registrar una salida solo cuando haya existencias suficientes y guardar el movimiento en el historial. El modelo SQLite descuenta las unidades al registrar la salida. Si el producto está inactivo o la cantidad supera el saldo, rechaza el movimiento.

| Ejemplo con 10 unidades | Saldo esperado | Historial esperado |
| --- | --- | --- |
| Retirar 3 | 7 | Un movimiento nuevo por 3 unidades |
| Retirar 10 | 0 | Un movimiento nuevo por 10 unidades |
| Intentar retirar 11 | 10 | Sin movimiento nuevo |

La función de ejemplo en [`src/stock.py`](src/stock.py) calcula el saldo antes de guardar. Acepta cantidades enteras positivas. Las pruebas de esa función se ejecutan desde `InventarioClaro/` con `python3 -m unittest discover -s tests -v`. El historial de movimientos se comprueba en la base de datos, ya que la función solo calcula el saldo.

Para proponer un cambio en esta regla, abre un Pull Request hacia la rama de trabajo, indica el requisito afectado y adjunta el resultado de las pruebas. Usa productos ficticios y pide a otro integrante que revise al menos el caso en que el saldo llega a cero y el intento de retirar más unidades de las disponibles.

## Estado del proyecto

La estructura, el modelo de datos, la documentación y el prototipo inicial están preparados. El ejemplo en Python y sus pruebas cubren el cálculo de una salida. La aplicación completa sigue pendiente en el backlog.
