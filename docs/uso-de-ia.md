# Uso de asistencia de IA: validación de correo

**Herramienta utilizada:** Claude Code (Claude Sonnet 5.5) en Visual Studio Code. No se usó GitHub Copilot.

## 1. Función a implementar
`validarCorreo(correo)` para el registro de usuarios (`usuarios.correo VARCHAR(150) NOT NULL UNIQUE` en `database/schema.sql`). Debe devolver `true` o `false`.

## 2. Prompt utilizado
> Implementa en JavaScript una función `validarCorreo(correo)` para el sistema de eventos (la columna `usuarios.correo` es VARCHAR(150)) y sus pruebas unitarias con `node:test`. Incluye casos límite.

## 3. Código propuesto (v1)
```js
function validarCorreo(correo) {
  const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return regex.test(correo);
}
```

## 4. Revisión y decisiones
- La regex simple cubre lo básico (`algo@dominio.ext`), pero **no valida el tipo**: con `null` o un número `regex.test` lo convierte a string.
- No recorta espacios, no limita la longitud a 150 (el INSERT fallaría en MySQL) y acepta puntos consecutivos (`a..b@x..com`).
- Decisión: validar `typeof`, aplicar `trim()`, limitar a 150 y endurecer la regex para rechazar puntos consecutivos. No se pretende cumplir el RFC 5322 completo: se prioriza la simplicidad.

## 5. Resultados de las pruebas
| Versión | Pruebas | Resultado |
|---|---|---|
| v1 (propuesta inicial) | 5 | 3 pasan, **2 fallan** (espacios/puntos consecutivos; longitud) |
| v2 (código corregido) | 5 | 4 pasan, **1 falla** |
| v3 (prueba corregida) | 5 | **5 pasan** |

## 6. Casos límite identificados
- Espacios alrededor: `"  a@b.com  "` → válido tras `trim()`.
- Puntos consecutivos: `jhosep..x@gmail.com` y `jhosep@gmail..com` → inválidos.
- Longitud exacta de 150 (válido) y 151 (inválido).
- Entradas no string: `null`, `undefined`, `123` → inválidas.

## 7. Corrección y resultado final
- v2 corrigió el código (`src/validaciones.js`).
- El fallo restante de v2 era **un error de la prueba, no del código**: `"a"*145 + "@b.co"` mide exactamente 150 caracteres, que es válido. Se corrigió la prueba para verificar 150 (válido) y 151 (inválido).
- Resultado final: `npm test` → 5 pruebas, 5 pasan.

## 8. Reflexión: ventajas y limitaciones
**Ventajas:** acelera el borrador y las pruebas; sugiere casos límite en los que uno no pensó (longitud según el esquema); explica sus decisiones.
**Limitaciones:** la primera propuesta fue demasiado permisiva; incluso las pruebas generadas pueden estar mal (como el caso de los 150 caracteres); no conoce reglas de negocio no dichas; hay que ejecutar y leer el código antes de aceptarlo. La IA es un apoyo, la responsabilidad de verificar es del equipo.
