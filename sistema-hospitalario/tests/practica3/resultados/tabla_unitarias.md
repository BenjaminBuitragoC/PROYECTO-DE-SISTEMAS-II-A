# Tabla de resultados — Pruebas unitarias (Hospital San Gabriel / Torquato)

| Ej. | Caso | Esperado / manual | Obtenido | Resultado |
|---|---|---|---|---|
| 1 | dato válido (35) | aceptar | aceptar | OK |
| 1 | dato vacío | rechazar | rechazar: La edad del paciente es obligatoria. | OK |
| 1 | dato negativo | rechazar | rechazar: La edad no puede ser negativa. | OK |
| 1 | fuera de rango (150) | rechazar | rechazar: La edad está fuera de rango (0–120 años). | OK |
| 1 | formato incorrecto ("abc") | rechazar | rechazar: La edad debe ser un número entero (formato incorrecto). | OK |
| 2 | valores normales: cardiología sin urgencia | 150 | 150 | OK |
| 2 | cero descuento sobre pediatría = 100 | 100 | 100 | OK |
| 2 | caso límite: descuento = subtotal → total 0 | 0 | 0 | OK |
| 2 | urgencia cardiología (150+50=200) | 200 | 200 | OK |
| 3 | válido: adulto 1990-05-10 | aceptar | aceptar (edad 36) | OK |
| 3 | inválido: fecha futura | rechazar | rechazar: La fecha de nacimiento no puede ser futura. | OK |
| 3 | inválido: formato incorrecto | rechazar | rechazar: Fecha de nacimiento con formato inválido (use YYYY-MM-DD). | OK |
| 3 | válido: recién nacido (=hoy) | aceptar | aceptar (edad 0) | OK |
| 3 | inválido: año imposible (1800) | rechazar | rechazar: La edad resultante está fuera del rango permitido (0–120). | OK |

Total: **14** casos OK.