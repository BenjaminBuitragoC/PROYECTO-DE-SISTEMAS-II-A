# Guía para reutilizar casos de prueba

Esta plantilla parte del criterio de aceptación del requisito RF03 de Inventario Claro. Sirve para comprobar una operación que cambia un saldo, un cupo o una disponibilidad. Los ejemplos usan cantidades y nombres ficticios.

## Plantilla

| Campo | Qué anotar | Ejemplo |
| --- | --- | --- |
| Requisito | Identificador y regla que se va a probar | R-01. Reservar solo si quedan cupos. |
| Estado inicial | Datos mínimos para repetir la prueba | Actividad de ejemplo con 10 cupos. |
| Acción | Pasos y valor ingresado | Pedir una reserva de 3 cupos. |
| Resultado esperado | Estado final y efecto en el historial | Quedan 7 cupos y se registra una reserva. |
| Resultado observado | Qué ocurrió y cómo se comprobó | Completar al ejecutar la prueba. |

## Cómo usarla

1. Copia la tabla a la documentación de tu proyecto y reemplaza el requisito y los datos de ejemplo.
2. Prepara un caso válido, uno en el límite y uno que deba rechazarse. En el ejemplo de reservas, prueba solicitar 3, 10 y 11 cupos con 10 disponibles al inicio de cada caso.
3. Anota los resultados y enlaza la prueba o su evidencia. En el caso rechazado, revisa que se conserven el saldo y el historial.

## Cómo proponer cambios

Abre una incidencia o un Pull Request con el cambio, el motivo y un caso que otro equipo pueda repetir. Usa datos ficticios y describe cómo revisaste el resultado. Un integrante distinto de quien hizo el cambio comprueba que las instrucciones se entiendan y solicita ajustes si hacen falta.

El equipo que mantiene la plantilla asigna a un responsable para incorporar cambios y mantener los ejemplos al día. El equipo que la reutiliza designa a una persona para revisar su adaptación y conservar las evidencias.
