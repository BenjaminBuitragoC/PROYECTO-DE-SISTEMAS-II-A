# Matriz de permisos y autenticación

## Estado de acceso observado

La rama del Equipo 3 registra un commit de `AlisonPizarro1`, lo que evidencia una contribución histórica, pero no confirma el permiso actual de la cuenta. GitHub requiere autenticación para consultar la lista de colaboradores y el permiso efectivo de cada persona. Por tanto, las celdas de acceso actual quedan como **por confirmar por el propietario**, no se infieren a partir del historial.

| Rol | Leer | Crear rama/commit | Proponer Pull Request | Revisar | Administrar permisos | Acceso actual observado |
| --- | --- | --- | --- | --- | --- | --- |
| Docente o propietario | Sí | Según configuración | Sí | Sí | Sí, como propietario/autorizado | No se verificó individualmente |
| Líder de equipo | Sí | Si tiene escritura | Sí | Sí | No, salvo delegación expresa | Por confirmar |
| Desarrollador/a | Sí | En rama propia si tiene escritura; de otro modo en fork | Sí | Puede comentar | No | Por confirmar |
| Revisor/a | Sí | Solo si también tiene escritura | Sí, como autor si corresponde | Sí | No | Por confirmar |

La matriz propone mínimo privilegio: quien programa necesita permiso de escritura solo si debe publicar ramas en el repositorio original. De lo contrario puede trabajar en un fork autorizado. La revisión no requiere privilegios administrativos. La administración de permisos debe limitarse al propietario o a una persona formalmente delegada.

## Autenticación, autorización y MFA

- **Autenticación** comprueba quién inicia sesión, por ejemplo, mediante contraseña y segundo factor.
- **Autorización** decide qué acciones puede realizar esa identidad: leer, escribir, revisar o administrar.
- Se recomienda activar MFA en GitHub mediante passkey, llave de seguridad o aplicación autenticadora; guardar códigos de recuperación en un lugar seguro y privado.
- No compartir cuentas ni tokens. Cada integrante debe usar su identidad individual para que los commits, revisiones y cambios de acceso sean atribuibles.
- Revisar periódicamente colaboradores y revocar permisos cuando una persona deja el equipo o ya no necesita escritura.

## Verificación pendiente

Una persona propietaria debe abrir **Settings > Collaborators and teams** y registrar, para cada integrante del Equipo 3, el nombre de usuario y el rol efectivo. Esta guía no publica nombres o permisos no visibles públicamente.
