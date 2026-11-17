# Guía de reutilización de criterios de aceptación

Esta ficha de Markdown vincula un requisito con un caso verificable. Sirve para documentar desde qué estado se prueba una operación, qué resultado se espera y qué evidencia respalda el resultado observado. El formato utiliza identificadores de ejemplo y datos ficticios.

## Cómo usar la ficha

1. Copia la ficha en la documentación de tu equipo y enlaza el requisito que quieres verificar.
2. Describe el estado inicial, la acción y el resultado observable. Usa una ficha por escenario e incluye los límites pertinentes, como el valor máximo admitido y el primer valor rechazado.
3. Al ejecutar el caso, registra el resultado y enlaza la prueba, el registro de ejecución o la captura correspondiente. Mantén el estado como pendiente mientras el caso no se haya ejecutado.

## Ficha para copiar

```markdown
### CA-00 — Nombre del escenario

- Requisito y enlace: RF-00 — breve descripción.
- Estado inicial: datos ficticios necesarios para reproducir el caso.
- Acción: operación y valor que se enviará.
- Resultado esperado: respuesta observable y cambios esperados en los datos.
- Resultado observado y evidencia: pendiente de ejecución.
```

### Ejemplo con datos ficticios

- Requisito: la cantidad solicitada puede ser igual al saldo disponible.
- Estado inicial: un recurso tiene 5 unidades disponibles.
- Acción: solicitar 5 unidades.
- Resultado esperado: la solicitud queda registrada y el saldo baja a 0.
- Resultado observado y evidencia: pendiente de ejecución.

## Cómo proponer cambios

1. Crea una rama desde la rama del equipo. En el Pull Request, enlaza el requisito afectado, explica el motivo del cambio e incluye un ejemplo ficticio actualizado si cambia la ficha.
2. Pide a otro integrante que compruebe si el caso puede reproducirse con la información escrita, si el resultado esperado es observable y si la evidencia corresponde al caso indicado.
3. Registra las correcciones en el mismo Pull Request. Quien mantenga la documentación del equipo verifica que se atendieron las observaciones e integra el cambio según los permisos del repositorio. En el Equipo 3, Fernando Marupa Arnez mantiene esta guía y otro integrante revisa sus propuestas.
