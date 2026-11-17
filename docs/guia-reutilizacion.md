# Guía de reutilización de artefactos

## Recurso compartible

Esta guía ofrece a otros equipos una plantilla genérica para especificar y probar reglas de inventario. El recurso es independiente de una empresa o proveedor y no incluye credenciales, datos de clientes ni información privada. Puede adaptarse a inventarios de laboratorio, biblioteca, almacén u otros sistemas.

### Plantilla de regla y caso de prueba

| Campo | Contenido que debe completar el equipo |
| --- | --- |
| Identificador y nombre | Código breve y nombre de la regla |
| Propósito | Qué decisión o cálculo debe realizar el sistema |
| Datos de entrada | Campos, tipo, unidad y restricciones |
| Precondiciones | Estado necesario antes de ejecutar la regla |
| Caso válido | Entrada representativa y resultado esperado |
| Casos límite | Cero, máximo permitido, valores vacíos o límites de existencias |
| Caso inválido | Entrada que debe rechazarse y mensaje esperado |
| Evidencia | Prueba automatizada, captura saneada o registro de ejecución |
| Responsable y versión | Quién revisa y qué versión del requisito se validó |

## Cómo reutilizarla

1. Copia la tabla al documento de requisitos o de pruebas de tu proyecto.
2. Sustituye los ejemplos por reglas confirmadas con el responsable del sistema. No asumas que todos los inventarios manejan reservas, lotes o existencias negativas.
3. Define unidades y límites antes de implementar. Especifica cómo se comportan cantidades fraccionarias si el producto admite peso o volumen.
4. Crea al menos un caso válido, un caso límite y un caso inválido por regla.
5. Relaciona cada caso con una prueba, una observación de usuario o un defecto. Guarda evidencia sin secretos ni datos personales.
6. Conserva el historial de cambios y la fecha de revisión.

## Proponer modificaciones

- Crea una rama descriptiva desde la rama del equipo que mantiene la copia.
- Explica en el Pull Request por qué la plantilla necesita cambiar, qué equipos podrían verse afectados y cómo se verificó la modificación.
- No edites directamente la rama principal ni sobrescribas ramas de otras personas.
- Solicita revisión de una persona distinta de quien hizo el cambio. Responde a las observaciones en la misma rama y registra qué se corrigió.
- No incluyas ejemplos con inventario, nombres, correos, contraseñas o datos comerciales reales.

## Revisión y mantenimiento

El equipo propietario del repositorio mantiene la versión compartida. Para cada contribución, el autor de la propuesta prepara el cambio y una persona revisora verifica claridad, neutralidad y ausencia de datos confidenciales. La persona responsable del proyecto o docente resuelve cambios que alteren reglas académicas o el alcance del sistema. Revisa la guía al inicio de cada sprint y cuando una regla de inventario cambie; etiqueta la versión o enlaza el commit que introduce la actualización.

Las funciones de autor, revisor y responsable son roles de trabajo, no una asignación de permisos administrativos. La lista de personas con acceso debe verificarse con una cuenta autorizada antes de conceder o retirar permisos.
