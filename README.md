# PROYECTO-DE-SISTEMAS-II-A
Repositorio de los avances de proyectos de la materia 
# Sistema de Control de Inventarios

## Descripción
El **Sistema de Control de Inventarios** es una aplicación diseñada para optimizar y automatizar la gestión de entradas, salidas, almacenamiento y control de stock de productos. Permite a las empresas llevar un registro en tiempo real de la mercancía, minimizando mermas y facilitando la toma de decisiones logísticas.

## Objetivo General
Desarrollar e implementar una plataforma centralizada para el control eficiente de inventarios, asegurando la trazabilidad de los productos, el registro preciso de proveedores y la generación de reportes automáticos de stock.

## Integrantes del Equipo
* **Alison Belen Pizarro Apaza** (Equipo 3 - Inventarios)

## Tecnologías consideradas
* **Frontend:** HTML5, CSS3, JavaScript, Bootstrap 5
* **Backend:** C# / .NET Core o PHP (pendiente de decisión del equipo)
* **Base de Datos:** PostgreSQL, SQL Server o Supabase (pendiente de decisión del equipo)
* **Control de Versiones y Gestión:** Git, GitHub, GitHub Projects

## Enlace al Prototipo Figma
Puedes revisar los wireframes, mockups y el flujo de pantallas del sistema en el siguiente enlace:
👉 [Prototipo en Figma - Inventarios](https://www.figma.com/design/7jrty8q6mMfTe6fABYxEC2/Sin-t%C3%ADtulo?node-id=0-1&t=EZO53trbnxKxUs0L-1)

## Estado del Proyecto
* **Fase Actual:** Desarrollo - Sprint 1 (Estructuración y levantamiento de requerimientos).
* **Progreso:** Configuración inicial del repositorio y prototipo UI/UX enlazado. La aplicación funcional y el esquema de base de datos todavía deben incorporarse a esta rama; `src/stock.mjs` es un ejercicio aislado de validación, no una integración del sistema.

## Licencia
Este proyecto se desarrolla con fines académicos para la asignatura de Sistemas II en la Universidad del Valle (UNIVALLE).

## Contribuir al proyecto

Los cambios se trabajan sobre la rama del Equipo 3, `AlisonPizarro_Equipo3-inventarios`, y se proponen mediante Pull Request dirigido a esa rama. No se deben hacer cambios directos a `main`.

1. Actualiza tu copia y crea una rama descriptiva desde la rama del equipo. Usa un sufijo personal si el nombre de rama ya existe.
2. Limita cada Pull Request a un propósito y usa commits que describan el cambio, por ejemplo: `docs: aclarar validación de stock`.
3. Antes de solicitar revisión, ejecuta las pruebas pertinentes y revisa que no se incluyan claves, contraseñas, datos personales ni archivos locales.
4. Abre un Pull Request contra la rama del Equipo 3, resume el problema y la solución, enlaza las pruebas y solicita revisión de otro integrante.
5. Atiende las observaciones con nuevos commits en la misma rama. Integra el cambio solo después de la revisión acordada.

Las pruebas unitarias disponibles se ejecutan con `node --test test/stock.test.mjs` (requiere Node.js).

Para reutilizar documentos y mantenerlos en formato seguro, consulta [la guía de reutilización](docs/guia-reutilizacion.md). La evaluación observada de la configuración y los límites de este repositorio están en [la lista de verificación de seguridad](docs/seguridad-repositorio.md). La [matriz de permisos](docs/matriz-permisos.md) distingue lo que se pudo observar públicamente de lo que requiere acceso autenticado.
