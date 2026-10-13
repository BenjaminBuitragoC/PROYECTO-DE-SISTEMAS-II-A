# GanaderíaPro · Product Backlog completo

**Sistema de gestión integral de ganado bovino** · Proyecto de Sistemas II
**Última actualización:** 13/10/2026 (después del cierre del Sprint 2)
**Repositorio:** https://github.com/AlexVigabriel/GanaderiaPro · **Versión vigente:** Release `sprint-2`

Este documento reúne todo el backlog del proyecto, desde el inicio hasta la última fase planificada:
la **Parte A** resume el estado real y lo que queda pendiente; la **Parte B** es el backlog refinado completo
(reglas de negocio, permisos, capacidad, historias por sprint y criterios de aceptación).

---

## Parte A · Estado del proyecto

### A.1 Avance por fase

| Fase | Fechas | Puntos | Estado | Entregado |
|---|---|---|---|---|
| Sprint 0 · Planificación | hasta el 31/08/2026 | — | ✅ Cerrado | Product Backlog original, pantallas y documento explicativo |
| Sprint 1 | 07/09 – 21/09/2026 | 49 | ✅ Entregado | 17 historias: sitio público, autenticación, panel y gestión de ganado. Defensa: 30/09/2026 |
| Sprint 2 | 21/09 – 06/10/2026 | 48 | ✅ Entregado | 13 historias + correcciones del jurado + HU-66, HU-67 y HU-74. Release `sprint-2` (06/10/2026) |
| Sprint 3 | 19/10 – 02/11/2026 | 48 | ⏳ Pendiente | 15 historias: dashboard, preñez, tratamientos, socios, notificaciones, asistente y Excel |
| Release 2 | Después del semestre | 53 | ⏳ Pendiente | 20 historias de menor prioridad |
| Historias nuevas (Sprint 2) | Sin sprint asignado | 29 | ⏳ Pendiente | 8 historias propuestas (HU-64, 65, 68–73) |

**Avance del compromiso del semestre:** 97 de 145 puntos (67 %). Quedan los 48 puntos del Sprint 3.

### A.2 Historias entregadas

**Sprint 1 · 49 puntos**
- **Sitio público:** HU-01 página principal · HU-02 menú del encabezado · HU-03 portada con llamado a la acción ·
  HU-04 características · HU-05 planes con plan preseleccionado · HU-06 acceso a inicio de sesión y registro.
- **Autenticación:** HU-07 registro con prueba gratuita de 10 días · HU-08 confirmación de contraseña · HU-09 inicio de sesión.
- **Panel y ganado:** HU-14 menú lateral · HU-15 barra superior · HU-16 registro de animales · HU-17 búsqueda y filtros ·
  HU-18 listado · HU-19 ficha · HU-20 edición · HU-21 eliminación de registros erróneos.

**Sprint 2 · 48 puntos**
- **Ganado:** HU-54 baja por venta o fallecimiento · HU-55 pesajes (con edición y eliminación).
- **Sesión:** HU-52 cerrar sesión invalidando el token en el servidor.
- **Sanidad:** HU-26 registrar vacunaciones con aviso de repetidas · HU-27 vacunaciones registradas y pendientes.
- **Corrales:** HU-23 crear corral · HU-24 tarjetas con ocupación.
- **Colaboradores y plan:** HU-32 colaborador con rol por invitación · HU-34 acceso según el rol · HU-58 límites del plan.
- **Sin conexión:** HU-46 estado de conexión · HU-45.1 registro sin conexión · HU-47 sincronización automática.
- **Además (fuera de los 48 puntos):** HU-66 carga de varios animales en tabla · HU-67 conteo por categoría ·
  HU-74 categoría del animal · correcciones del jurado del Sprint 1 (validaciones, RN-17 y RN-18) · rediseño visual.

### A.3 Historias pendientes adelantadas en parte

Durante el Sprint 2 se construyeron partes de historias planificadas para más adelante. Al tomarlas, solo falta
completar lo indicado:

| HU | Fase | Ya existe | Falta |
|---|---|---|---|
| HU-53 Editar o desactivar un corral | Sprint 3 | Editar y desactivar (solo corrales vacíos, RN-08) | Revisar criterios de aceptación y cerrarla |
| HU-25 Reasignar animales entre corrales | Sprint 3 | «Cambiar corral» de un animal desde su ficha | Reasignar varios animales a la vez |
| HU-22 Historial sanitario y de peso | Sprint 3 | Historial de pesajes y de vacunaciones en la ficha | Vista unificada y tratamientos (HU-57) |
| HU-61 Editar o revocar el acceso de un colaborador | Release 2 | Cambiar rol y desactivar o reactivar | Editar sus datos |
| HU-35 Estado y actividad de colaboradores | Release 2 | Estado y último acceso en el listado | Historial de actividad |
| HU-10 Mantener sesión iniciada | Release 2 | La sesión queda guardada (necesario para el modo sin conexión) | Opción «Recordarme» a elección del usuario |
| HU-60 Catálogo de vacunas | Release 2 | Catálogo fijo de 9 vacunas | Que el propietario lo pueda mantener |
| HU-49 Consultar y cambiar de plan | Release 2 | Tarjeta «Tu plan» con el uso (HU-58) | Cambiar de plan |

### A.4 Pendiente por fase

**Sprint 3 (48 puntos)** — orden sugerido: primero HU-56 y HU-40, de las que dependen el dashboard y el asistente.
HU-12 indicadores del rancho · HU-56 preñez y parto · HU-57 tratamiento veterinario · HU-22 historial sanitario y de peso ·
HU-25 reasignar animales · HU-53 editar o desactivar corral · HU-29 registrar socio · HU-30 listado de socios ·
HU-40 alertas · HU-41 centro de notificaciones · HU-36.1 consultas de cantidades al asistente ·
HU-38 aviso de datos faltantes · HU-44 exportar ganado a Excel · HU-43.1 plantilla de importación · HU-43.2 importar desde Excel.

**Release 2 (53 puntos)** — ordenadas por prioridad.
HU-11 recuperar contraseña · HU-28 historial de vacunación con filtros · HU-13 gráficos · HU-59 vencimiento de la prueba gratuita ·
HU-49 cambiar de plan · HU-33 roles personalizados · HU-45.2 vacunaciones sin conexión · HU-43.3 reporte de errores de importación ·
HU-36.2 estado sanitario por asistente · HU-39 recordatorio manual · HU-31 editar o eliminar socio · HU-35 actividad de colaboradores ·
HU-10 «Recordarme» · HU-48 datos del rancho · HU-51 preferencias · HU-36.3 preguntas libres con IA · HU-60 catálogo de vacunas ·
HU-61 revocar acceso · HU-62 dashboard por rol · HU-63 reportes de sanidad y corrales a Excel.

**Historias nuevas sin sprint asignado (29 puntos)** — ver sección 7.5.
HU-64 bienvenida después del registro · HU-65 alta por rango de aretes · HU-68 ganancia diaria de peso · HU-69 padre y madre ·
HU-70 búsqueda por cámara · HU-71 auditoría de cambios · HU-72 modo claro u oscuro · HU-73 calculadora de peso estimado.

**Decisiones pendientes del Product Owner**
- Límites del plan Superior (RN-11): hoy no tiene límite.
- Modelo comercial al vencer la prueba gratuita (HU-59).
- Proveedor y costo del asistente con IA (HU-36.3).

### A.5 Cambios respecto del plan original
- La entrega del Sprint 2 se postergó del 05/10 al 07/10/2026; se cerró el 06/10.
- Se agregaron las reglas **RN-17** (rangos de validación del animal) y **RN-18** (categoría del animal) por las
  correcciones del jurado: el backlog pasa de 16 a 18 reglas explícitas.
- Se entregaron tres historias propuestas fuera del compromiso (HU-66, HU-67 y HU-74).
- El modo sin conexión se implementó con SQLite en el dispositivo, cola de salida (patrón Outbox) e idempotencia en el servidor.

### A.6 Calidad al cierre del Sprint 2
- 222 pruebas automáticas del servidor (xUnit) y 101 de la app (Flutter), en verde en GitHub Actions.
- 9 defectos encontrados y corregidos (ver *GanaderiaPro_Informe_Sprint2.docx*).
- Respaldo del código y la base de datos en `Respaldos-GanaderiaPro/2026-10-06`.

---

## Parte B · Backlog refinado completo

### 1. Resumen ejecutivo

Este documento refina el Product Backlog entregado el 31/08/2026 sin mover ninguna fecha del calendario ni reabrir el trabajo del Sprint 1. El refinamiento corrige vacíos de dominio, contradicciones de prioridad, historias demasiado grandes y criterios de aceptación que no se podían verificar, y ajusta el alcance comprometido a la capacidad real del equipo.

El hallazgo principal es de capacidad: el backlog original sumaba 183 puntos para tres sprints de desarrollo, unos 61 por sprint. Tomando como referencia la velocidad del Sprint 1 (unos 49 puntos, ver supuestos), el equipo puede comprometer alrededor de 145 puntos en total. Por eso, en lugar de solo agregar las historias que faltaban, se rebalanceó el backlog: las historias esenciales del dominio entran en los Sprints 2 y 3, y las de menor valor pasan a una Release 2 que queda documentada como backlog futuro.

#### 1.1 Indicadores del refinamiento

| Indicador | Backlog original | Backlog refinado |
|---|---|---|
| Historias de usuario | 51 | 65 |
| Puntos totales del backlog | 183 | 209 |
| Puntos comprometidos en los Sprints 1 a 3 | Sin asignación a sprints | 145 (49 / 48 / 48) |
| Puntos en Release 2 (backlog futuro) | — | 64 |
| Historias de 8 puntos comprometidas en sprints | 3 | 0 |
| Historias nuevas | — | 12 |
| Historias fusionadas por duplicidad | — | 3 (HU-37, HU-42, HU-50) |
| Historias divididas en cortes verticales | — | 3 (HU-36, HU-43, HU-45) |
| Reglas de negocio explícitas | 0 | 18 |

#### 1.2 Ajustes aplicados según cada pauta

- Splitting ágil (INVEST). Las tres historias de 8 puntos (HU-36, HU-43 y HU-45) se dividieron en cortes verticales: cada parte funciona de punta a punta y entrega valor al usuario por sí sola. No se crearon historias por capas técnicas; esas tareas (almacenamiento local, cola de sincronización, validación del archivo) van dentro del Sprint Backlog de cada historia.
- Completitud del dominio. Se agregaron las historias que faltaban en los flujos principales: cerrar sesión, baja de animales por venta o fallecimiento, pesaje, preñez y parto, tratamientos, edición y desactivación de corrales, validación de límites del plan y vencimiento de la prueba gratuita. Además, se definieron 14 reglas de negocio que los criterios de aceptación referencian por código (RN-xx).
- Unificación de términos. Se fijó el nombre «GanaderíaPro», se renombraron tres épicas para que coincidan con los módulos y se estableció un glosario con su equivalencia en las clases C#. Los IDs originales de las historias se conservan para no romper la trazabilidad con el código ni con el prototipo.
- Alineación con la capacidad. Cada sprint queda por debajo de su capacidad (Sprint 2: 48 puntos; Sprint 3: 48 puntos, sobre 50). La semana del 12 al 19 de octubre se reserva para corregir los defectos del informe de QA y no recibe historias nuevas.

### 2. Supuestos y decisiones pendientes

Este refinamiento se basa en los siguientes supuestos. Si alguno no coincide con la realidad del equipo, basta con ajustar la tabla del Sprint 1 y aplicar la regla de recorte de la sección 6.2.

- Contenido del Sprint 1. Se asume que el Sprint 1 (7 al 21 de septiembre) entregó el sitio público, la autenticación, la estructura de navegación y la gestión básica de ganado: 17 historias y 49 puntos (sección 7.1). Esas historias no se reabren.
- Velocidad. Se toma la velocidad del Sprint 1 como capacidad de referencia: unos 50 puntos por sprint para cuatro integrantes.
- Sprint 2 en curso. El Sprint 2 empezó el 21 de septiembre. Si su Sprint Backlog ya estaba comprometido, las historias nuevas (HU-52, HU-54, HU-55, HU-58) reemplazan historias de puntaje similar que todavía no se hayan iniciado.
- Tecnología. Backend en C# (ASP.NET Core) con base de datos relacional libre (PostgreSQL). App móvil nativa en Flutter (Dart), elegida porque el equipo ya tiene experiencia previa en ese framework. El modo sin conexión guarda los datos localmente en SQLite (paquete sqflite) en el dispositivo, y sincroniza contra PostgreSQL al recuperar la conexión. Control de versiones en GitHub con integración continua (GitHub Actions), y coordinación de tareas en Trello.

Decisiones que debe tomar el Product Owner:

- Límite del plan Superior (RN-11): el requerimiento solo dice «capacidades ampliadas» sin números; falta que el Product Owner los defina. (Básico e Intermedio ya están definidos, no son decisión pendiente.)
- Rol «Encargado de almacén»: existe en el documento, pero ningún módulo del sistema gestiona un almacén. Se propone mantenerlo con acceso de solo lectura o retirarlo.
- Asistente con IA (HU-36.3): si se desea en una versión futura, hay que elegir proveedor y estimar su costo de uso.
- Modelo comercial: si el cambio de plan y el vencimiento de la prueba gratuita incluirán pagos reales o serán simulados.
- Chat por voz: el requerimiento pide chat de texto y voz; falta decidir si la voz entra en el MVP o se pospone, y con qué proveedor/tecnología (relacionado con HU-36.3).
- Modo sin conexión — decisión ya tomada: el docente confirmó que se requiere una app nativa (no un PWA). Se optó por Flutter en vez de .NET MAUI porque el equipo ya tenía experiencia previa en Flutter; el costo es que las validaciones ya no se comparten automáticamente con el backend en C# y deben mantenerse en ambos lados.

### 3. Unificación de terminología

Los artefactos usaban tres nombres distintos para el sistema y varios sinónimos para las mismas entidades. La siguiente convención aplica al backlog, al documento explicativo, al prototipo y al código.

#### 3.1 Glosario

| Término estándar | Significado | Evitar | Clase C# |
|---|---|---|---|
| Nombre del sistema | GanaderíaPro (título completo: «GanaderíaPro: Sistema de Gestión Integral de Ganado») | «Plataforma de Gestión Ganadera»; «Sistema de Gestión Integral de Ganado» sin el nombre | — |
| Propietario | Dueño de la cuenta y del rancho | Administrador; «usuario» cuando se refiere al dueño | Usuario (rol Propietario) |
| Usuario | Cualquier persona autenticada | — | Usuario |
| Animal | Registro individual de un bovino | Vaca, cabeza, «un ganado» | Animal |
| Ganado | Conjunto de animales; nombre del módulo | — | — |
| Arete | Identificador visible del animal (RN-01) | «ID del animal», caravana | Animal.Arete |
| Vacuna / Vacunación | Vacuna es el producto; vacunación es el evento de aplicarla | Usarlas como sinónimos | Vacuna, Vacunacion |
| Tratamiento | Evento sanitario distinto de la vacunación | Registro veterinario | Tratamiento |
| Pesaje | Evento de registrar el peso de un animal | Control de peso | Pesaje |
| Preñez / Parto | Eventos reproductivos | — | EventoReproductivo |
| Baja / Eliminación | Baja: venta o fallecimiento (conserva historial). Eliminación: borrar un registro erróneo | Usar «eliminar» para ventas o fallecimientos | — |
| Sanidad | Épica y módulo de vacunas y tratamientos | «Control veterinario», «Vacunas» como nombre del módulo | — |
| Asistente de consultas | Módulo de preguntas sobre los datos del rancho | Chat, chat inteligente, asistente inteligente | — |
| Modo sin conexión | Funcionamiento sin Internet | Offline, «sin Internet» | — |
| Plan | Básico, Intermedio o Superior | Suscripción, paquete; «Profesional», «Empresarial» (nombres antiguos) | Plan |

Si el código del Sprint 1 ya usa otros nombres de clase, no se renombran: se registra la equivalencia en este glosario para evitar retrabajo.

#### 3.2 Nomenclatura de épicas

| Código | Nombre unificado | Cambio |
|---|---|---|
| EP-01 | Sitio público (Landing Page) | Sin cambios |
| EP-02 | Autenticación y seguridad | Antes «Autenticación (Registro / Login)»; ahora incluye cierre de sesión |
| EP-03 | Dashboard | Antes «Dashboard Principal» |
| EP-04 | Gestión de ganado | Incluye los eventos del ciclo de vida: baja, pesaje, preñez y parto |
| EP-05 | Corrales | Sin cambios |
| EP-06 | Sanidad animal (vacunas y tratamientos) | Antes «Vacunas y Control Veterinario»; ahora incluye tratamientos |
| EP-07 | Socios | Sin cambios |
| EP-08 | Colaboradores y roles | Sin cambios |
| EP-09 | Asistente de consultas | Antes «Chat / Asistente Inteligente» |
| EP-10 | Notificaciones | Sin cambios |
| EP-11 | Importación y exportación Excel | Antes «Importar / Exportar Excel» |
| EP-12 | Modo sin conexión | Antes «Funcionamiento sin Internet (Offline)» |
| EP-13 | Configuración y planes | Antes «Configuración»; ahora incluye los planes |

Convención de IDs: los IDs originales se conservan. Las historias nuevas continúan desde HU-52 y los cortes verticales usan sufijo (HU-45.1, HU-45.2).

### 4. Reglas de negocio

Los criterios de aceptación del backlog original dejaban sin definir reglas clave (duplicados, estados, capacidad, responsables). Estas reglas se referencian por código desde los criterios de aceptación y deben reflejarse en la capa de servicios del código.

| Código | Regla | Definición |
|---|---|---|
| RN-01 | Arete | Identificador visible del animal, obligatorio y único dentro del rancho, incluso entre animales dados de baja. El sistema genera además un Id interno. |
| RN-02 | Correo único | Un correo solo puede pertenecer a una cuenta en todo el sistema (propietario, socio o colaborador). |
| RN-03 | Contraseña | Mínimo 8 caracteres, con al menos una letra y un número. Se almacena con hash, nunca en texto plano. |
| RN-04 | Estados del animal | Activo, Vendido o Fallecido. Solo se permiten las transiciones Activo → Vendido y Activo → Fallecido, y son irreversibles. Conteos, límites y ocupación consideran solo animales Activos. |
| RN-05 | Eliminación | La eliminación física solo se permite para registros erróneos sin eventos asociados (vacunaciones, tratamientos, pesajes, preñeces o movimientos). |
| RN-06 | Nombre de corral | Único dentro del rancho. |
| RN-07 | Capacidad de corral | No se pueden asignar animales activos por encima de la capacidad: el sistema bloquea la operación. |
| RN-08 | Desactivar corral | Solo se puede desactivar un corral vacío. Desactivar no elimina su historial. |
| RN-09 | Vacunación pendiente | Aquella cuya fecha de próxima dosis ya venció o vence dentro de los 7 días siguientes. |
| RN-10 | Gestación | Fecha probable de parto = fecha de servicio + 283 días (bovinos). «Próxima a parir» = fecha probable dentro de los 30 días siguientes. |
| RN-11 | Límites del plan | Básico: 100 animales activos, 2 socios y 3 colaboradores. Intermedio: 200 animales activos, 4 socios y 5 colaboradores. Superior: capacidades ampliadas, números a definir por el Product Owner. Se validan en todo punto de alta: manual, importación y sincronización. |
| RN-12 | Responsable por tipo de dato | Según la tabla de responsables (sección 5). Si no hay ningún colaborador con ese rol, el responsable es el propietario. |
| RN-13 | Modo sin conexión | Sin conexión solo se permite registrar altas (animales en el MVP). Editar, eliminar y dar de baja requieren conexión. Esto evita conflictos de edición concurrente. |
| RN-14 | Fechas | Las fechas de eventos (aplicación, pesaje, baja, servicio, tratamiento) no pueden ser futuras. Excepciones: próxima dosis y fecha probable de parto. |
| RN-15 | Prueba gratuita | Dura 10 días desde el registro del propietario. Al vencer sin un plan activo, se aplican las restricciones de HU-59. |
| RN-16 | Aislamiento entre ranchos | Ningún usuario, socio o colaborador puede ver ni modificar datos de un rancho distinto al suyo. Se valida en el servidor en cada consulta y operación, no solo en la interfaz. |
| RN-17 | Rangos de validación del animal | Identificación, sexo, raza y fecha de nacimiento son obligatorios. La identificación se guarda en mayúsculas (letras, números y guiones) y no se repite aunque cambien las mayúsculas. La fecha de nacimiento no puede ser futura ni de más de 25 años. El peso al nacer va de 10 a 80 kg y el peso actual es mayor que 0 y de hasta 1500 kg. Las mismas reglas se validan en la app y en el servidor. Agregada por las correcciones del jurado del Sprint 1. |
| RN-18 | Categoría del animal | La categoría se calcula según sexo, edad y castración, y no se guarda (cambia sola con la edad): menos de 8 meses, Ternero o Ternera; hembras de 8 a 24 meses, Vaquillona, y desde 24 meses, Vaca; machos castrados desde 8 meses, Novillo; machos enteros de 8 a 24 meses, Torito, y desde 24 meses, Toro. Sin fecha de nacimiento no se calcula (HU-74). |

### 5. Matriz de permisos y responsables

HU-34 (restringir acceso) no se podía probar sin saber qué puede hacer cada rol. Esta matriz define los roles predefinidos del MVP. E = lectura y escritura; L = solo lectura; — = sin acceso.

| Módulo | Propietario | Socio | Veterinario | Enc. corrales | Enc. ingreso | Enc. almacén* |
|---|---|---|---|---|---|---|
| Ganado (alta, edición, baja) | E | L | L | L | E | L |
| Pesaje | E | L | E | E | E | L |
| Reproducción | E | L | E | L | L | L |
| Corrales | E | L | L | E | L | L |
| Sanidad | E | L | E | L | L | L |
| Socios y colaboradores | E | — | — | — | — | — |
| Dashboard y asistente | L | L | L | L | L | L |
| Importar Excel | E | — | — | — | E | — |
| Exportar Excel | E | E | — | — | E | — |
| Configuración y planes | E | — | — | — | — | — |

* Rol pendiente de decisión del Product Owner (sección 2).

#### 5.1 Responsables por tipo de dato (RN-12)

Esta tabla define a quién notifica el asistente cuando falta un dato (HU-38), que era el vacío señalado en la revisión del equipo.

| Tipo de dato | Responsable |
|---|---|
| Datos del animal (arete, sexo, raza, bajas) | Encargado de ingreso |
| Pesajes y ubicación en corrales | Encargado de corrales |
| Vacunaciones, tratamientos y reproducción | Veterinario |
| Cualquier dato sin colaborador con ese rol | Propietario |

### 6. Matriz de capacidad y cronograma

Las fechas son las del calendario oficial y no se modifican. La capacidad de referencia es de 50 puntos por sprint de dos semanas.

| Fase | Fechas | Capacidad | Puntos | Uso | Entregable principal |
|---|---|---|---|---|---|
| Requisitos | 24 – 31 ago | — | — | — | Prototipo Figma y Product Backlog (entregado) |
| Sprint 1 | 7 – 21 sep | ~50 | 49 | 98 % | Sitio público, autenticación, navegación y gestión básica de ganado |
| Sprint 2 | 21 sep – 5 oct | 50 | 48 | 96 % | Ciclo de vida del animal, corrales, sanidad, roles, límites del plan y modo sin conexión |
| QA Sprints 1 y 2 | 5 – 12 oct | — | — | — | Informe de calidad de QA |
| Corrección | 12 – 19 oct | Reserva | 0 | — | Corrección de defectos del informe de QA (sin historias nuevas) |
| Sprint 3 | 19 oct – 2 nov | 50 | 48 | 96 % | Dashboard, reproducción, notificaciones, asistente y Excel |
| QA Sprint 3 | 2 – 9 nov | — | — | — | Informe de calidad de QA |
| QA Integración | 9 – 16 nov | — | — | — | Pruebas de integración y producto libre de fallos |
| Preparación | 16 – 23 nov | — | — | — | Ensayo de la defensa y ajustes finales |
| Entrega tribunal | 23 nov | — | — | — | Evaluación docente y tribunal |
| Entrega cliente | 30 nov – 7 dic | — | — | — | Manuales, Docker y entrega final |
| Total Sprints 1 a 3 |  | ~150 | 145 | 97 % | Release 2: 64 puntos documentados como backlog futuro |

#### 6.1 Distribución por épica

| Épica | Sprint 1 | Sprint 2 | Sprint 3 | Release 2 |
|---|---|---|---|---|
| EP-01 Sitio público (Landing Page) | 14 | — | — | — |
| EP-02 Autenticación y seguridad | 10 | 1 | — | 5 |
| EP-03 Dashboard | 6 | — | 5 | 10 |
| EP-04 Gestión de ganado | 19 | 6 | 6 | — |
| EP-05 Corrales | — | 8 | 6 | — |
| EP-06 Sanidad animal (vacunas y tratamientos) | — | 8 | 3 | 5 |
| EP-07 Socios | — | — | 5 | 2 |
| EP-08 Colaboradores y roles | — | 10 | — | 9 |
| EP-09 Asistente de consultas | — | — | 8 | 14 |
| EP-10 Notificaciones | — | — | 8 | — |
| EP-11 Importación y exportación Excel | — | — | 7 | 4 |
| EP-12 Modo sin conexión | — | 12 | — | 3 |
| EP-13 Configuración y planes | — | 3 | — | 12 |
| Total | 49 | 48 | 48 | 64 |

#### 6.2 Regla de ajuste si la velocidad real es distinta

- Si la velocidad real del Sprint 1 fue menor, se recorta desde el final de la lista del Sprint 3 hacia arriba: primero HU-43.2 y HU-43.1, luego HU-44, HU-30 y HU-53. Nunca se recortan historias de prioridad Alta.
- Si sobra capacidad, se incorporan en orden las primeras historias de la Release 2: HU-11, HU-28 y HU-13.
- Las tareas que no son historias (Dockerfile, integración continua, manuales) se reparten dentro de cada sprint y forman parte de la Definition of Done (sección 11), para no concentrarlas en noviembre.

### 7. Product Backlog por sprint

#### 7.1 Sprint 1 · 7 al 21 de septiembre · 49 puntos · ✅ Entregado (defensa 30/09/2026)

| ID | Historia de usuario | Épica | Pts | Prioridad | Cambio |
|---|---|---|---|---|---|
| HU-01 | Visualizar página principal | Sitio público (Landing Page) | 3 | Media | — |
| HU-02 | Navegar mediante el menú del encabezado | Sitio público (Landing Page) | 2 | Baja | — |
| HU-03 | Ver la sección Hero con llamado a la acción | Sitio público (Landing Page) | 3 | Media | Prioridad |
| HU-04 | Consultar características del sistema | Sitio público (Landing Page) | 2 | Media | — |
| HU-05 | Comparar planes disponibles | Sitio público (Landing Page) | 3 | Media | Prioridad |
| HU-06 | Acceder a inicio de sesión o creación de cuenta | Sitio público (Landing Page) | 1 | Media | Prioridad |
| HU-07 | Registrar una nueva cuenta | Autenticación y seguridad | 5 | Alta | — |
| HU-08 | Validar coincidencia de contraseñas | Autenticación y seguridad | 2 | Media | — |
| HU-09 | Iniciar sesión | Autenticación y seguridad | 3 | Alta | — |
| HU-14 | Navegar mediante menú lateral | Dashboard | 3 | Alta | — |
| HU-15 | Consultar barra superior de navegación | Dashboard | 3 | Media | — |
| HU-16 | Registrar un nuevo animal | Gestión de ganado | 5 | Alta | — |
| HU-17 | Buscar y filtrar animales | Gestión de ganado | 3 | Alta | — |
| HU-18 | Visualizar listado general de ganado | Gestión de ganado | 3 | Alta | — |
| HU-19 | Consultar ficha completa del animal | Gestión de ganado | 3 | Alta | — |
| HU-20 | Editar información de un animal | Gestión de ganado | 3 | Alta | Prioridad |
| HU-21 | Eliminar un animal registrado por error | Gestión de ganado | 2 | Media | Acotada |

HU-21 se acota a eliminar registros erróneos; las ventas y fallecimientos pasan a HU-54. HU-03, HU-05 y HU-06 bajan de Alta a Media, y HU-20 (editar un animal) sube de Media a Alta, para ser coherentes con el orden de valor del documento explicativo, donde la gestión de ganado es el segundo módulo y los planes el último. Como ya se entregaron, el cambio de prioridad solo afecta a la trazabilidad.

#### 7.2 Sprint 2 · 21 de septiembre al 5 de octubre · 48 puntos · ✅ Entregado (cerrado 06/10/2026)

| ID | Historia de usuario | Épica | Pts | Prioridad | Cambio |
|---|---|---|---|---|---|
| HU-52 | Cerrar sesión | Autenticación y seguridad | 1 | Alta | Nueva |
| HU-54 | Registrar la baja de un animal (venta o fallecimiento) | Gestión de ganado | 3 | Alta | Nueva |
| HU-55 | Registrar pesaje de un animal | Gestión de ganado | 3 | Alta | Nueva |
| HU-23 | Crear un corral | Corrales | 5 | Alta | Refinada |
| HU-24 | Visualizar tarjetas de corrales | Corrales | 3 | Alta | Refinada |
| HU-26 | Registrar una vacunación | Sanidad animal (vacunas y tratamientos) | 5 | Alta | Refinada |
| HU-27 | Consultar vacunaciones registradas y pendientes | Sanidad animal (vacunas y tratamientos) | 3 | Alta | Refinada |
| HU-32 | Registrar un colaborador con rol | Colaboradores y roles | 5 | Alta | Refinada |
| HU-34 | Restringir el acceso según el rol | Colaboradores y roles | 5 | Alta | Refinada |
| HU-58 | Validar los límites del plan | Configuración y planes | 3 | Alta | Nueva |
| HU-45.1 | Registrar animales sin conexión | Modo sin conexión | 5 | Alta | Dividida |
| HU-46 | Visualizar el estado de conexión | Modo sin conexión | 2 | Media | Refinada |
| HU-47 | Sincronizar datos automáticamente | Modo sin conexión | 5 | Alta | Refinada |

#### 7.3 Sprint 3 · 19 de octubre al 2 de noviembre · 48 puntos · ⏳ Pendiente

| ID | Historia de usuario | Épica | Pts | Prioridad | Cambio |
|---|---|---|---|---|---|
| HU-12 | Visualizar indicadores generales del rancho | Dashboard | 5 | Alta | Refinada |
| HU-56 | Registrar preñez y parto | Gestión de ganado | 3 | Media | Nueva |
| HU-57 | Registrar un tratamiento veterinario | Sanidad animal (vacunas y tratamientos) | 3 | Media | Nueva |
| HU-22 | Consultar historial sanitario y de peso | Gestión de ganado | 3 | Media | Refinada |
| HU-25 | Reasignar animales entre corrales | Corrales | 3 | Media | Refinada |
| HU-53 | Editar o desactivar un corral | Corrales | 3 | Media | Nueva |
| HU-29 | Registrar un socio | Socios | 3 | Media | Refinada |
| HU-30 | Visualizar el listado de socios | Socios | 2 | Media | Refinada |
| HU-40 | Recibir alertas relevantes | Notificaciones | 5 | Alta | Refinada |
| HU-41 | Consultar el centro de notificaciones | Notificaciones | 3 | Media | Refinada |
| HU-36.1 | Consultar cantidades al asistente | Asistente de consultas | 5 | Alta | Dividida |
| HU-38 | Informar la ausencia de datos y notificar al responsable | Asistente de consultas | 3 | Media | Refinada |
| HU-44 | Exportar el ganado a Excel | Importación y exportación Excel | 3 | Media | Refinada |
| HU-43.1 | Descargar la plantilla de importación | Importación y exportación Excel | 1 | Media | Dividida |
| HU-43.2 | Importar ganado desde Excel | Importación y exportación Excel | 3 | Media | Dividida |

Orden sugerido dentro del Sprint 3: primero HU-56 y HU-40, porque el dashboard (HU-12) y el asistente (HU-38) dependen de ellas.

#### 7.4 Release 2 · backlog futuro · 53 puntos · ⏳ Pendiente

Estas historias no entran en el compromiso del semestre. Están ordenadas por prioridad: si sobra capacidad, se toman desde arriba.

| ID | Historia de usuario | Épica | Pts | Motivo |
|---|---|---|---|---|
| HU-11 | Recuperar contraseña olvidada | Autenticación y seguridad | 3 | Primera candidata si sobra capacidad (seguridad básica). |
| HU-28 | Consultar historial general de vacunación con filtros | Sanidad animal (vacunas y tratamientos) | 3 | HU-27 y HU-22 cubren la consulta esencial. |
| HU-13 | Visualizar gráficos estadísticos | Dashboard | 5 | El dashboard entrega valor con indicadores (HU-12). |
| HU-59 | Gestionar el vencimiento de la prueba gratuita (solo lectura al vencer) | Configuración y planes | 3 | Nueva. Duración fija en 10 días por RN-15. Depende de definir el modelo comercial con el cliente. |
| HU-49 | Consultar y cambiar de plan (sin pasarela de pago) | Configuración y planes | 3 | Se aclara que el cambio de plan no incluye cobros reales. |
| HU-33 | Crear roles personalizados | Colaboradores y roles | 5 | Los roles predefinidos cubren el MVP. Absorbe la parte de roles de HU-50. |
| HU-45.2 | Registrar vacunaciones sin conexión | Modo sin conexión | 3 | Segundo corte vertical de HU-45. |
| HU-43.3 | Descargar reporte de errores de importación por fila | Importación y exportación Excel | 2 | Tercer corte vertical de HU-43. |
| HU-36.2 | Consultar el estado sanitario de un animal al asistente | Asistente de consultas | 3 | Segundo corte vertical de HU-36. |
| HU-39 | Reenviar recordatorio manual desde el asistente | Asistente de consultas | 3 | El aviso automático ya está en HU-38. |
| HU-31 | Editar o eliminar un socio | Socios | 2 | Prioridad Baja en el backlog original. |
| HU-35 | Consultar estado y actividad de colaboradores | Colaboradores y roles | 2 | Prioridad Baja en el backlog original. |
| HU-10 | Mantener sesión iniciada («Recordarme») | Autenticación y seguridad | 2 | Prioridad Baja en el backlog original. |
| HU-48 | Configurar datos del rancho y de la cuenta | Configuración y planes | 3 | Prioridad Baja en el backlog original. |
| HU-51 | Configurar preferencias y seguridad | Configuración y planes | 3 | Prioridad Baja en el backlog original. |
| HU-36.3 | Formular preguntas libres con IA | Asistente de consultas | 8 | Tercer corte vertical de HU-36. Requiere decidir proveedor y costo. |
| HU-60 | Mantener catálogo de vacunas | Sanidad animal (vacunas y tratamientos) | 2 | Nueva. El requerimiento pide «selección de vacunas aplicadas»; sin catálogo, HU-26 no tiene de dónde seleccionar. |
| HU-61 | Editar o revocar el acceso de un colaborador | Colaboradores y roles | 2 | Nueva. El requerimiento pide que el propietario pueda «editar datos o revocar accesos»; HU-35 solo permite consultar. |
| HU-62 | Dashboard adaptado por rol (veterinario, encargado de corrales) | Dashboard | 5 | Nueva. El requerimiento pide una interfaz por rol (ej. vacunas pendientes para el veterinario); HU-12 es un único dashboard genérico. |
| HU-63 | Exportar reportes de sanidad y corrales a Excel | Importación y exportación Excel | 2 | Nueva. El requerimiento pide «reportes e informes completos»; HU-44 solo exporta el listado de ganado. |

#### 7.5 Historias agregadas durante el Sprint 2 · 37 puntos estimados

Durante el Sprint 2 se sumaron once historias nuevas, surgidas de la revisión del sistema de referencia y de las correcciones del jurado. Tres ya se entregaron con el Sprint 2 (HU-66, HU-67 y HU-74, sin sumar a sus 48 puntos comprometidos); las demás quedan en el backlog, sin sprint asignado, para priorizar en el Sprint 3 o en la Release 2. Los puntos son estimados.

| ID | Historia de usuario | Épica | Pts | Estado |
|---|---|---|---|---|
| HU-64 | Bienvenida y guía inicial después del registro | Autenticación y seguridad | 3 | Pendiente |
| HU-65 | Registrar animales por rango de aretes | Gestión de ganado | 3 | Pendiente |
| HU-66 | Carga rápida de varios animales en una tabla | Gestión de ganado | 3 | Entregada (Sprint 2) |
| HU-67 | Ver el conteo de animales por categoría en el listado | Gestión de ganado | 2 | Entregada (Sprint 2) |
| HU-68 | Calcular la ganancia diaria de peso | Gestión de ganado | 3 | Pendiente |
| HU-69 | Registrar el padre y la madre de un animal | Gestión de ganado | 5 | Pendiente |
| HU-70 | Buscar un animal leyendo su arete con la cámara | Gestión de ganado | 5 | Pendiente |
| HU-71 | Registrar quién creó o modificó cada registro | Colaboradores y roles | 5 | Pendiente |
| HU-72 | Elegir entre modo claro y modo oscuro | Configuración y planes | 2 | Pendiente |
| HU-73 | Calculadora de peso estimado | Sitio público | 3 | Pendiente |
| HU-74 | Ver la categoría de cada animal (RN-18) | Gestión de ganado | 3 | Entregada (Sprint 2) |

### 8. Historias de usuario detalladas por épica

Se detallan las historias de los Sprints 2 y 3, que son las que todavía se van a construir. Las del Sprint 1 conservan su redacción original; sus ajustes se verifican en la sección 10.

#### EP-02 · Autenticación y seguridad

##### HU-52 – Cerrar sesión

*Sprint 2 · 1 pts · Prioridad Alta · Nueva*

Como usuario, quiero cerrar sesión desde el menú de perfil, para proteger mi cuenta cuando uso un dispositivo compartido.

**Criterios de aceptación:**

- Dado que estoy autenticado, cuando selecciono «Cerrar sesión», entonces la sesión se invalida en el servidor y soy redirigido a la pantalla de inicio de sesión.
- Dado que cerré sesión, cuando uso el botón «Atrás» del dispositivo, entonces no puedo ver ninguna pantalla protegida.

**Nota de refinamiento:** Requisito de seguridad básica que no existía en el backlog original.

#### EP-03 · Dashboard

##### HU-12 – Visualizar indicadores generales del rancho

*Sprint 3 · 5 pts · Prioridad Alta · Refinada*

Como propietario, quiero ver en el dashboard los indicadores clave del rancho, para conocer de inmediato su estado general.

**Criterios de aceptación:**

- Dado que accedo al dashboard, cuando carga, entonces muestra: animales activos, machos activos, hembras activas, vacunados, vacunaciones pendientes (RN-09), próximas a parir (RN-10), fallecidos del año en curso y corrales activos.
- Dado que registro o doy de baja un animal, cuando vuelvo al dashboard, entonces los indicadores reflejan el cambio sin recargar manualmente la aplicación.
- Dado que no existen registros, cuando visualizo el dashboard, entonces todos los indicadores muestran 0 sin errores.

**Nota de refinamiento:** Se reemplaza «en tiempo real» por un criterio verificable. Se programa en el Sprint 3 porque depende de los datos de ganado, sanidad, corrales y reproducción.

#### EP-04 · Gestión de ganado

##### HU-54 – Registrar la baja de un animal (venta o fallecimiento)

*Sprint 2 · 3 pts · Prioridad Alta · Nueva*

Como propietario o encargado de ingreso, quiero registrar la baja de un animal indicando tipo (venta o fallecimiento), fecha y observación, para conservar su historial y mantener correctos los conteos del rancho.

**Criterios de aceptación:**

- Dado un animal en estado Activo, cuando registro su baja con tipo, fecha y observación, entonces su estado cambia a Vendido o Fallecido y conserva todo su historial (RN-04).
- Dado que la fecha de baja es posterior a la fecha actual, cuando intento guardar, entonces el sistema rechaza el registro (RN-14).
- Dado un animal dado de baja, cuando consulto el listado de ganado, entonces no aparece en la vista por defecto (Activos) pero sí al filtrar por su estado.
- Dado un animal con vacunaciones, tratamientos o pesajes registrados, cuando intento eliminarlo (HU-21), entonces el sistema lo impide y sugiere registrar una baja (RN-05).

**Nota de refinamiento:** Corrige el enfoque de HU-21, que usaba la eliminación para ventas y fallecimientos y hacía imposible contar los animales fallecidos del dashboard. HU-21 se mantiene solo para registros erróneos; el ajuste de HU-21 es una validación adicional, no requiere rehacer el módulo.

##### HU-55 – Registrar pesaje de un animal

*Sprint 2 · 3 pts · Prioridad Alta · Nueva*

Como encargado de corrales o veterinario, quiero registrar el peso de un animal con su fecha, para dar seguimiento a su desarrollo.

**Criterios de aceptación:**

- Dado un animal Activo, cuando registro un peso mayor que 0 y menor o igual a 1500 kg con fecha no futura, entonces el pesaje se guarda y el peso actual del animal pasa a ser el del pesaje más reciente.
- Dado que registro un pesaje con fecha anterior a otro ya existente, cuando guardo, entonces se agrega al historial sin cambiar el peso actual.
- Dado un animal dado de baja, cuando intento registrar un pesaje, entonces el sistema no lo permite.

**Nota de refinamiento:** El historial de peso (HU-19 y HU-22) no tenía ninguna historia que lo alimentara.

##### HU-56 – Registrar preñez y parto

*Sprint 3 · 3 pts · Prioridad Media · Nueva*

Como veterinario, quiero registrar la fecha de servicio de una hembra y, luego, su parto, para conocer su fecha probable de parto.

**Criterios de aceptación:**

- Dado una hembra activa sin preñez abierta, cuando registro la fecha de servicio (no futura), entonces el sistema calcula la fecha probable de parto (RN-10).
- Dado un macho, cuando intento registrar una preñez, entonces el sistema no lo permite.
- Dado una preñez abierta, cuando registro el parto con su fecha, entonces la preñez se cierra y deja de contarse en «Próximas a parir».

**Nota de refinamiento:** La tarjeta «Próximos a parir» del dashboard no tenía ninguna historia que generara sus datos.

##### HU-22 – Consultar historial sanitario y de peso

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como usuario, quiero ver en la ficha del animal una línea de tiempo con vacunaciones, tratamientos, pesajes y movimientos de corral, para dar seguimiento a su salud y desarrollo.

**Criterios de aceptación:**

- Dado que estoy en la ficha del animal, cuando abro «Historial», entonces veo los eventos ordenados del más reciente al más antiguo, con fecha, tipo y usuario que lo registró.
- Dado un animal sin eventos, cuando abro el historial, entonces se muestra «Sin registros».

#### EP-05 · Corrales

##### HU-23 – Crear un corral

*Sprint 2 · 5 pts · Prioridad Alta · Refinada*

Como propietario o encargado de corrales, quiero crear un corral con nombre y capacidad máxima, para organizar la distribución del ganado.

**Criterios de aceptación:**

- Dado que ingreso un nombre y una capacidad entera mayor o igual a 1, cuando guardo, entonces el corral aparece en el listado con 0 animales y estado Activo.
- Dado que ya existe un corral con el mismo nombre en el rancho, cuando intento guardar, entonces el sistema muestra «Ya existe un corral con ese nombre» (RN-06).
- Dado que asigno animales al crear el corral, cuando la cantidad supera la capacidad, entonces el sistema bloquea la asignación e indica cuántos lugares quedan (RN-07).

**Nota de refinamiento:** La «advertencia» por exceso de capacidad se reemplaza por un bloqueo, porque una advertencia no se puede verificar como aprobada o rechazada.

##### HU-24 – Visualizar tarjetas de corrales

*Sprint 2 · 3 pts · Prioridad Alta · Refinada*

Como usuario, quiero ver una tarjeta por corral con nombre, animales, capacidad y ocupación, para conocer rápidamente la situación de cada corral.

**Criterios de aceptación:**

- Dado que accedo al módulo Corrales, cuando la información carga, entonces cada tarjeta muestra nombre, animales activos / capacidad y porcentaje de ocupación.
- Dado un corral con animales dados de baja, cuando visualizo su tarjeta, entonces esos animales no se cuentan (RN-04).
- Dado un corral desactivado, cuando cargo el módulo, entonces no se muestra en la vista por defecto.

##### HU-25 – Reasignar animales entre corrales

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como encargado de corrales, quiero mover animales de un corral a otro, para mantener organizada la distribución del ganado.

**Criterios de aceptación:**

- Dado que muevo un animal, cuando confirmo, entonces el conteo del corral de origen disminuye, el del destino aumenta y el movimiento queda en el historial del animal con fecha y usuario.
- Dado que el corral de destino está lleno, cuando intento mover el animal, entonces el sistema lo bloquea (RN-07).
- Dado un corral desactivado, cuando elijo el destino, entonces no aparece como opción.

##### HU-53 – Editar o desactivar un corral

*Sprint 3 · 3 pts · Prioridad Media · Nueva*

Como propietario o encargado de corrales, quiero editar el nombre o la capacidad de un corral, o desactivarlo, para mantener actualizada la estructura del rancho.

**Criterios de aceptación:**

- Dado que reduzco la capacidad, cuando el nuevo valor es menor que los animales activos del corral, entonces el sistema lo rechaza.
- Dado un corral con animales, cuando intento desactivarlo, entonces el sistema lo impide e indica cuántos animales debo reasignar (RN-08).
- Dado un corral vacío, cuando lo desactivo, entonces deja de mostrarse por defecto y conserva el historial de movimientos.

**Nota de refinamiento:** Completa las operaciones básicas del módulo, que solo permitía crear y visualizar.

#### EP-06 · Sanidad animal (vacunas y tratamientos)

##### HU-26 – Registrar una vacunación

*Sprint 2 · 5 pts · Prioridad Alta · Refinada*

Como veterinario, quiero registrar una vacunación indicando animal, vacuna, dosis, fecha de aplicación, fecha de próxima dosis (opcional) y observaciones, para llevar un control sanitario confiable.

**Criterios de aceptación:**

- Dado que completo los datos obligatorios, cuando guardo, entonces la vacunación aparece en el historial del animal y en el módulo Sanidad, con el usuario autenticado como veterinario responsable.
- Dado que la fecha de aplicación es futura, cuando intento guardar, entonces el sistema la rechaza (RN-14).
- Dado que la fecha de próxima dosis es anterior a la de aplicación, cuando intento guardar, entonces el sistema la rechaza.
- Dado un animal dado de baja, cuando intento registrar una vacunación, entonces el sistema no lo permite.

**Nota de refinamiento:** Se agrega la fecha de próxima dosis: sin ella el sistema no puede saber qué vacunas están pendientes (HU-27, HU-40). Para el Sprint 2, la lista de vacunas para seleccionar se precarga con datos semilla; la gestión completa del catálogo (agregar/editar vacunas) es HU-60, en Release 2.

##### HU-27 – Consultar vacunaciones registradas y pendientes

*Sprint 2 · 3 pts · Prioridad Alta · Refinada*

Como usuario, quiero ver cuántos animales están vacunados y qué vacunaciones están pendientes, para dar seguimiento al calendario sanitario del rancho.

**Criterios de aceptación:**

- Dado que accedo al módulo Sanidad, cuando la información carga, entonces se muestran los indicadores «Vacunados» (animales activos con al menos una vacunación) y «Pendientes» (RN-09).
- Dado que existen vacunaciones pendientes, cuando consulto la lista, entonces aparecen ordenadas por fecha de próxima dosis, de la más antigua a la más reciente.
- Dado que no hay vacunaciones registradas, cuando accedo al módulo, entonces los indicadores muestran 0 sin errores.

##### HU-57 – Registrar un tratamiento veterinario

*Sprint 3 · 3 pts · Prioridad Media · Nueva*

Como veterinario, quiero registrar un tratamiento con diagnóstico, medicamento, dosis, fecha de inicio y duración en días, para tener el historial sanitario completo del animal.

**Criterios de aceptación:**

- Dado que completo los datos obligatorios con duración de al menos 1 día y fecha de inicio no futura, cuando guardo, entonces el tratamiento aparece en el historial del animal, diferenciado de las vacunaciones.
- Dado un animal dado de baja, cuando intento registrar un tratamiento, entonces el sistema no lo permite.

**Nota de refinamiento:** El documento explicativo (sección 4.3) menciona tratamientos, pero el backlog solo tenía vacunas.

#### EP-07 · Socios

##### HU-29 – Registrar un socio

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como propietario, quiero registrar un socio con nombre y correo, para darle acceso de consulta a la información del rancho.

**Criterios de aceptación:**

- Dado que completo nombre y correo, cuando guardo, entonces el socio queda en estado Pendiente hasta su primer inicio de sesión, con permisos de solo lectura (sección 5).
- Dado que el correo ya está registrado, cuando intento guardar, entonces el sistema lo rechaza (RN-02).
- Dado que alcancé el límite de socios de mi plan, cuando intento registrar otro, entonces el sistema lo bloquea (RN-11).

##### HU-30 – Visualizar el listado de socios

*Sprint 3 · 2 pts · Prioridad Media · Refinada*

Como propietario, quiero ver el listado de socios con su estado y último acceso, para monitorear su participación.

**Criterios de aceptación:**

- Dado que accedo al módulo Socios, cuando carga, entonces veo una tabla con nombre, correo, estado (Pendiente, Activo o Inactivo) y último acceso en formato dd/mm/aaaa hh:mm, o «Nunca».

#### EP-08 · Colaboradores y roles

##### HU-32 – Registrar un colaborador con rol

*Sprint 2 · 5 pts · Prioridad Alta · Refinada*

Como propietario, quiero registrar un colaborador con nombre, correo y uno de los roles predefinidos, para delegar tareas específicas del rancho.

**Criterios de aceptación:**

- Dado que completo nombre, correo y rol, cuando guardo, entonces el colaborador queda en estado Pendiente hasta su primer inicio de sesión, con los permisos de su rol (sección 5).
- Dado que el correo ya está registrado en el sistema, cuando intento guardar, entonces el sistema lo rechaza (RN-02).
- Dado que alcancé el límite de colaboradores de mi plan, cuando intento registrar otro, entonces el sistema lo bloquea e indica el límite (RN-11).

**Nota de refinamiento:** Se usan los roles predefinidos de la sección 5. Los roles personalizados (HU-33) pasan a la Release 2. El requerimiento original dice «invitar enviando credenciales (correo y contraseña)»; se optó por invitación por enlace donde el colaborador define su propia contraseña, por buena práctica de seguridad (no enviar contraseñas por correo).

##### HU-34 – Restringir el acceso según el rol

*Sprint 2 · 5 pts · Prioridad Alta · Refinada*

Como propietario, quiero que cada socio y colaborador acceda solo a lo que permite su rol, para proteger la información del rancho.

**Criterios de aceptación:**

- Dado un usuario con rol, cuando inicia sesión, entonces el menú lateral muestra solo los módulos permitidos por la matriz de permisos.
- Dado un usuario sin permiso sobre un módulo, cuando entra por URL directa, entonces ve «No tienes permiso para acceder a este módulo» y el servidor responde con error 403.
- Dado un usuario con permiso de solo lectura, cuando visualiza un módulo, entonces no ve los botones de crear, editar ni eliminar, y el servidor rechaza cualquier escritura.

**Nota de refinamiento:** Absorbe la parte de permisos de HU-50. La validación debe hacerse en el servidor, no solo ocultando botones.

#### EP-09 · Asistente de consultas

##### HU-36.1 – Consultar cantidades al asistente

*Sprint 3 · 5 pts · Prioridad Alta · Dividida*

Como usuario, quiero preguntar al asistente cantidades del rancho (animales por corral, sexo, raza o estado), para obtener información sin navegar por los módulos.

**Criterios de aceptación:**

- Dado una pregunta del catálogo de consultas soportadas (por ejemplo, «¿Cuántas vacas hay en el corral 3?»), cuando la envío, entonces recibo la respuesta en 5 segundos o menos.
- Dado una respuesta del asistente, cuando la comparo con el módulo correspondiente, entonces el valor coincide exactamente.
- Dado una pregunta que el asistente no reconoce, cuando la envío, entonces responde con ejemplos de preguntas soportadas y no inventa datos.
- Dado un usuario con rol, cuando consulta, entonces solo recibe información de los módulos que su rol permite ver.

**Nota de refinamiento:** Primer corte vertical de HU-36 (8 pts). Absorbe HU-37 («responder con datos reales»), que era un criterio de aceptación y no una historia. Se implementa con un catálogo de consultas predefinidas; el lenguaje libre con IA pasa a HU-36.3 (Release 2). El catálogo debe documentarse en el manual de usuario.

##### HU-38 – Informar la ausencia de datos y notificar al responsable

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como usuario, quiero que el asistente me diga quién debe registrar un dato faltante y le avise, para que la información se complete.

**Criterios de aceptación:**

- Dado una consulta reconocida sin datos, cuando el asistente responde, entonces muestra «No encontramos información actualizada sobre este dato» y el nombre del responsable según RN-12.
- Dado ese mismo caso, cuando el asistente responde, entonces el sistema envía automáticamente una notificación al responsable.
- Dado que no hay ningún colaborador con el rol responsable, cuando se determina el responsable, entonces se asigna al propietario.
- Dado que la misma consulta se repite dentro de 24 horas, cuando el asistente responde, entonces no se genera una notificación duplicada.

**Nota de refinamiento:** Define cómo se determina el responsable, que era el vacío señalado en la revisión. Incluye la notificación automática que exige la sección 4.6 del documento explicativo; el reenvío manual (HU-39) pasa a la Release 2.

#### EP-10 · Notificaciones

##### HU-40 – Recibir alertas relevantes

*Sprint 3 · 5 pts · Prioridad Alta · Refinada*

Como usuario, quiero recibir notificaciones sobre eventos que requieren acción, para actuar a tiempo.

**Criterios de aceptación:**

- Dado una vacunación pendiente (RN-09), cuando se detecta, entonces se notifica una sola vez al veterinario y al propietario.
- Dado un corral que llega al 100 % de su capacidad, cuando se asigna el último animal, entonces se notifica al encargado de corrales.
- Dado una hembra con parto probable en 15 días o menos, cuando se detecta, entonces se notifica al veterinario.
- Dado que tengo notificaciones sin leer, cuando veo la barra superior, entonces el ícono de campana muestra su cantidad.

**Nota de refinamiento:** Se reemplazan condiciones ambiguas («corrales desactualizados», «registros incompletos») por eventos verificables. Buen lugar para aplicar el patrón Observer.

##### HU-41 – Consultar el centro de notificaciones

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como usuario, quiero ver el historial de mis notificaciones, para revisar eventos pasados y su estado.

**Criterios de aceptación:**

- Dado que accedo a Notificaciones, cuando carga, entonces veo la lista ordenada de la más reciente a la más antigua, con opción de marcar una o todas como leídas.
- Dado que abro una notificación, cuando la selecciono, entonces el sistema me lleva al registro relacionado.

#### EP-11 · Importación y exportación Excel

##### HU-44 – Exportar el ganado a Excel

*Sprint 3 · 3 pts · Prioridad Media · Refinada*

Como propietario, quiero exportar el listado de ganado a Excel, para generar reportes o compartir la información.

**Criterios de aceptación:**

- Dado que presiono «Exportar a Excel», cuando se procesa, entonces se descarga ganado_AAAA-MM-DD.xlsx con las mismas columnas que la plantilla de importación y respetando los filtros aplicados en el listado.

##### HU-43.1 – Descargar la plantilla de importación

*Sprint 3 · 1 pts · Prioridad Media · Dividida*

Como propietario, quiero descargar la plantilla oficial de Excel, para preparar mis datos en el formato correcto.

**Criterios de aceptación:**

- Dado que presiono «Descargar plantilla», cuando se procesa, entonces obtengo un .xlsx con los encabezados, una fila de ejemplo y una hoja de instrucciones con los valores permitidos (por ejemplo, sexo M o H).

**Nota de refinamiento:** Primer corte vertical de HU-43 (8 pts).

##### HU-43.2 – Importar ganado desde Excel

*Sprint 3 · 3 pts · Prioridad Media · Dividida*

Como propietario o encargado de ingreso, quiero importar un archivo Excel con mis animales, para registrar mi ganado de forma masiva.

**Criterios de aceptación:**

- Dado un archivo con la plantilla y hasta 1000 filas, cuando lo importo, entonces el sistema registra las filas válidas y muestra el resumen «N importadas, M rechazadas».
- Dado filas con arete repetido o ya existente, cuando importo, entonces esas filas se rechazan (RN-01) sin afectar al resto.
- Dado un archivo cuyas columnas no coinciden con la plantilla, cuando lo importo, entonces se rechaza completo con un mensaje claro.
- Dado que la importación superaría el límite del plan, cuando importo, entonces se registran filas hasta el límite y el resto se informa como rechazado (RN-11).

**Nota de refinamiento:** Segundo corte vertical de HU-43. El reporte descargable de errores por fila (HU-43.3) pasa a la Release 2.

#### EP-12 · Modo sin conexión

##### HU-45.1 – Registrar animales sin conexión

*Sprint 2 · 5 pts · Prioridad Alta · Dividida*

Como encargado de ingreso, quiero registrar animales aunque no tenga Internet, para no interrumpir el trabajo en el campo.

**Criterios de aceptación:**

- Dado que no hay conexión y ya inicié sesión antes en este dispositivo, cuando registro un animal, entonces se guarda localmente y aparece en el listado marcado «Pendiente de sincronizar».
- Dado que tengo registros pendientes, cuando cierro y vuelvo a abrir la aplicación sin conexión, entonces los registros se conservan.
- Dado que no hay conexión, cuando intento editar, eliminar o dar de baja un animal, entonces la opción está deshabilitada con el mensaje «Requiere conexión» (RN-13).

**Nota de refinamiento:** Primer corte vertical de HU-45 (8 pts). Se adelanta al Sprint 2 porque es el mayor riesgo técnico: define la arquitectura del cliente (app Flutter con SQLite local) y no conviene dejarlo para el último sprint.

##### HU-46 – Visualizar el estado de conexión

*Sprint 2 · 2 pts · Prioridad Media · Refinada*

Como usuario, quiero ver un indicador cuando no hay Internet, para saber que mis datos se están guardando localmente.

**Criterios de aceptación:**

- Dado que se pierde la conexión, cuando pasan como máximo 5 segundos, entonces se muestra el indicador «Sin conexión» con la cantidad de registros pendientes.
- Dado que la conexión se restablece, cuando termina la sincronización, entonces el indicador desaparece.

##### HU-47 – Sincronizar datos automáticamente

*Sprint 2 · 5 pts · Prioridad Alta · Refinada*

Como usuario, quiero que los datos guardados sin conexión se sincronicen solos al recuperar Internet, para mantener la información actualizada sin esfuerzo manual.

**Criterios de aceptación:**

- Dado que existen registros pendientes, cuando se recupera la conexión, entonces se envían en un máximo de 30 segundos sin acción del usuario y se muestra «Conexión restaurada: N registros sincronizados».
- Dado que el arete de un registro local ya existe en el servidor, cuando se sincroniza, entonces el registro se marca como «Conflicto», no se descarta, y el usuario puede corregir el arete y reenviarlo (RN-01).
- Dado que el envío falla, cuando vuelve la conexión, entonces el sistema reintenta sin duplicar registros.

**Nota de refinamiento:** Absorbe HU-42 (la confirmación de registros sincronizados ya estaba aquí). Para evitar duplicados conviene usar una cola de operaciones pendientes con un identificador local por registro (patrón Outbox).

#### EP-13 · Configuración y planes

##### HU-58 – Validar los límites del plan

*Sprint 2 · 3 pts · Prioridad Alta · Nueva*

Como propietario, quiero que el sistema controle los límites de mi plan, para saber cuándo necesito un plan superior.

**Criterios de aceptación:**

- Dado un plan Básico con 100 animales activos, cuando intento registrar otro (manualmente, por importación o por sincronización), entonces el sistema lo bloquea e indica el límite y el plan actual (RN-11).
- Dado que llego al 90 % de cualquier límite, cuando registro un elemento, entonces el sistema muestra un aviso.
- Dado un animal dado de baja, cuando se calcula el límite, entonces no se cuenta (RN-04).

**Nota de refinamiento:** El documento explicativo define límites por plan, pero ninguna historia los validaba. Buen lugar para aplicar el patrón Strategy (una estrategia por plan).

### 9. Trazabilidad de historias fusionadas y divididas

| ID original | Historia | Destino |
|---|---|---|
| HU-08 | Validar coincidencia de contraseñas | Se mantiene porque ya se entregó en el Sprint 1. En futuros backlogs debe ser un criterio de aceptación de HU-07, no una historia. |
| HU-37 | Responder con datos reales del sistema | Fusionada en HU-36.1 como criterio de aceptación. |
| HU-42 | Notificar sincronización de datos | Fusionada en HU-47, que ya confirmaba la cantidad de registros sincronizados. |
| HU-50 | Gestionar usuarios, roles y permisos | Duplicaba HU-32, HU-33 y HU-34. Su contenido se reparte entre HU-34 (permisos) y HU-33 (roles). |
| HU-36 | Realizar consultas en lenguaje natural (8 pts) | Dividida en HU-36.1 (Sprint 3), HU-36.2 y HU-36.3 (Release 2). |
| HU-43 | Importar datos desde Excel (8 pts) | Dividida en HU-43.1 y HU-43.2 (Sprint 3) y HU-43.3 (Release 2). |
| HU-45 | Registrar información sin conexión (8 pts) | Dividida en HU-45.1 (Sprint 2) y HU-45.2 (Release 2). |

### 10. Verificación de conformidad del Sprint 1

Las historias del Sprint 1 no se reabren. En su lugar, se verifica que cumplan las reglas de negocio nuevas. Lo que no se cumpla se registra como defecto y se corrige en la semana del 12 al 19 de octubre.

| Historia | Verificar | Regla |
|---|---|---|
| HU-07 | El registro rechaza un correo ya existente | RN-02 |
| HU-07 / HU-08 | La contraseña exige mínimo 8 caracteres con letra y número, y se guarda con hash | RN-03 |
| HU-09 | Un error de credenciales no indica cuál dato es incorrecto | Criterio original |
| HU-16 | El arete es obligatorio y único dentro del rancho | RN-01 |
| HU-16 / HU-19 | Se muestra el término «Arete» en lugar de «ID del animal» | Glosario |
| HU-18 | El listado muestra por defecto solo animales Activos | RN-04 |
| HU-21 | Eliminar solo se permite si el animal no tiene eventos (se implementa junto con HU-54) | RN-05 |
| HU-07 / HU-16 | Los datos de un rancho no son visibles ni editables por usuarios de otro rancho | RN-16 |

### 11. Definition of Done propuesta

Una historia se considera terminada cuando cumple todos estos puntos:

- Cumple todos sus criterios de aceptación, verificados por un integrante distinto de quien la programó.
- El código fue revisado por otro integrante (programación en pareja o pull request aprobado).
- Los servicios de negocio tienen pruebas unitarias automatizadas (xUnit) con repositorios simulados, y todas pasan en la integración continua.
- Las reglas de negocio que aplica se validan en el servidor, no solo en la interfaz.
- La aplicación se levanta con docker compose sin pasos manuales.
- La sección correspondiente del manual de usuario está actualizada.
- No quedan defectos críticos abiertos asociados a la historia.

### 12. Ajustes en los demás artefactos

Para mantener la coherencia, el documento explicativo y el prototipo deben reflejar estos cambios. El prototipo de Figma no pudo revisarse directamente, por lo que sus ajustes se listan como pantallas o estados a verificar.

| Artefacto | Sección o pantalla | Ajuste |
|---|---|---|
| Documento explicativo | Portada y títulos | Usar «GanaderíaPro: Sistema de Gestión Integral de Ganado». |
| Documento explicativo | 2.1 Objetivo general | Cambiar «Diseñar un prototipo navegable» por «Desarrollar una plataforma web», porque el prototipo ya fue entregado y ahora se construye el sistema. |
| Documento explicativo | 4.1 Gestión de ganado | Agregar el arete, los estados (RN-04) y la diferencia entre baja y eliminación. |
| Documento explicativo | 4.3 Sanidad | Agregar tratamientos, fecha de próxima dosis y registro de preñez y parto. |
| Documento explicativo | 4.4 Socios y colaboradores | Incluir la matriz de permisos y la decisión sobre el rol de almacén. |
| Documento explicativo | 4.5 Dashboard | Definir cada indicador según RN-04, RN-09 y RN-10. |
| Documento explicativo | 4.6 Asistente | Aclarar que el MVP usa un catálogo de consultas predefinidas. |
| Documento explicativo | 4.8 Modo sin conexión | Agregar el alcance de RN-13: sin conexión solo se registran altas. |
| Documento explicativo | 6 Base de datos | Agregar las entidades Rancho, Plan, Pesaje, Tratamiento, EventoReproductivo y MovimientoCorral, y un diagrama entidad-relación. |
| Documento explicativo | Sección nueva | Requisitos no funcionales: asistente ≤ 5 s, sincronización ≤ 30 s, contraseñas con hash, permisos validados en el servidor, versión mínima de Android/iOS soportada y diseño adaptable a distintos tamaños de pantalla. |
| Prototipo Figma | Ganado | Agregar los formularios de baja, pesaje, preñez y parto; mostrar el filtro por estado. |
| Prototipo Figma | Corrales | Agregar la edición y desactivación de corrales y el mensaje de capacidad llena. |
| Prototipo Figma | Sanidad | Renombrar el módulo y agregar el formulario de tratamiento y el campo de próxima dosis. |
| Prototipo Figma | Barra superior | Agregar «Cerrar sesión» en el menú de perfil. |
| Prototipo Figma | Estados globales | Agregar las pantallas de acceso denegado, límite del plan alcanzado, registros pendientes y conflicto de sincronización. |
| Documento explicativo | 4.1 Gestión de ganado (aclaración) | Aclarar que peso y estado de gestación se registran como eventos históricos (Pesaje, EventoReproductivo), no como campos fijos de la ficha del animal, porque cambian con el tiempo. |

### 13. Principios y patrones de diseño aplicados

SOLID, DRY y YAGNI no son alternativas entre las que se elige una: son principios que actúan en niveles distintos y se aplican de forma simultánea sobre el mismo código. SOLID define cómo se organiza cada clase, DRY evita que esa lógica se repita en más de un lugar, y YAGNI decide qué se construye ahora y qué se deja para cuando realmente haga falta. Los cuatro patrones de diseño del Sprint 1 son la forma concreta en la que SOLID se lleva a la práctica.

| Tipo | Nombre | Dónde se aplica | Ejemplo concreto |
|---|---|---|---|
| SOLID | Single Responsibility | Autenticación | AuthService, PasswordHasher y TokenGenerator son clases separadas, no una sola que hace todo. |
| SOLID | Open/Closed | Reglas de negocio | Cada regla (RN-01, RN-04, etc.) vive en su propio validador; agregar una regla nueva no obliga a tocar el servicio existente. |
| SOLID | Liskov Substitution | Repositorios | Cualquier clase que implemente IAnimalRepository (la real con PostgreSQL, o una falsa para pruebas) funciona igual para quien la usa. |
| SOLID | Interface Segregation | Autenticación | ITokenGenerator e IPasswordHasher separadas, en vez de una sola interfaz gigante con todo. |
| SOLID | Dependency Inversion | Todo el proyecto | AnimalService recibe IAnimalRepository por el constructor, no lo crea él mismo. |
| Principio | DRY | Reglas de negocio | RN-11 se valida en un solo lugar del backend y se reutiliza en los 3 puntos de entrada (alta manual, importación Excel, sincronización offline), en vez de repetir la validación en cada uno. |
| Principio | YAGNI | Backlog / Release 2 | El asistente con IA, roles personalizados y el catálogo completo de vacunas se dejan afuera del Sprint 1-3 hasta que hagan falta de verdad. |
| Patrón | Repository | Autenticación y Ganado | IUsuarioRepository, IAnimalRepository — separan el acceso a datos de la lógica de negocio. |
| Patrón | Dependency Injection | Todo el proyecto | El contenedor de ASP.NET Core entrega las dependencias por constructor. |
| Patrón | Factory | Autenticación | ITokenGenerator arma el token de sesión en un solo lugar. |
| Patrón | Facade | Dashboard | DashboardService junta datos de Ganado, Corrales y Sanidad detrás de una sola llamada. |
