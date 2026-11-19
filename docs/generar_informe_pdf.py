import hashlib
from pathlib import Path

from reportlab.lib import colors
from reportlab.lib.enums import TA_CENTER
from reportlab.lib.pagesizes import letter
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import cm
from reportlab.platypus import (
    PageBreak,
    Paragraph,
    SimpleDocTemplate,
    Spacer,
    Table,
    TableStyle,
)


BASE = Path(__file__).resolve().parent
OUTPUT = BASE / "Informe-Tercera-Actividad-Autoaprendizaje.pdf"


def p(text, style):
    return Paragraph(text.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;"), style)


def build_pdf():
    original_md5 = hashlib.md5

    def compatible_md5(*args, **kwargs):
        kwargs.pop("usedforsecurity", None)
        return original_md5(*args, **kwargs)

    hashlib.md5 = compatible_md5
    from reportlab.pdfbase import pdfdoc
    pdfdoc.md5 = compatible_md5

    styles = getSampleStyleSheet()
    title = ParagraphStyle(
        "TitleCustom",
        parent=styles["Title"],
        alignment=TA_CENTER,
        fontName="Helvetica-Bold",
        textColor=colors.HexColor("#1F4E78"),
        spaceAfter=12,
    )
    subtitle = ParagraphStyle(
        "Subtitle",
        parent=styles["Normal"],
        alignment=TA_CENTER,
        fontSize=11,
        textColor=colors.HexColor("#404040"),
        leading=16,
        spaceAfter=18,
    )
    h1 = ParagraphStyle(
        "H1Custom",
        parent=styles["Heading1"],
        fontName="Helvetica-Bold",
        textColor=colors.HexColor("#1F4E78"),
        spaceBefore=12,
        spaceAfter=8,
    )
    h2 = ParagraphStyle(
        "H2Custom",
        parent=styles["Heading2"],
        fontName="Helvetica-Bold",
        textColor=colors.HexColor("#2F5597"),
        spaceBefore=8,
        spaceAfter=6,
    )
    body = ParagraphStyle(
        "BodyCustom",
        parent=styles["BodyText"],
        fontSize=9.5,
        leading=13,
        spaceAfter=6,
    )
    small = ParagraphStyle(
        "Small",
        parent=body,
        fontSize=8,
        leading=11,
    )

    doc = SimpleDocTemplate(
        str(OUTPUT),
        pagesize=letter,
        rightMargin=1.8 * cm,
        leftMargin=1.8 * cm,
        topMargin=1.6 * cm,
        bottomMargin=1.6 * cm,
        title="Tercera actividad de autoaprendizaje",
        author="Werner Hans von Borries Soria",
    )

    security = [
        ["Aspecto", "Estado observado", "Riesgo", "Acción recomendada"],
        ["Visibilidad", "Público", "Divulgación de artefactos no autorizados", "Publicar solo contenido aprobado"],
        ["Accesos", "No visibles de forma completa", "Privilegios excesivos", "Aplicar mínimo privilegio"],
        ["Rama principal", "Existe main; no se confirmó protección visible", "Cambios directos", "Proteger main y exigir PR"],
        ["Pull Requests", "Hay PRs en el repositorio", "Integración sin revisión", "Exigir al menos una aprobación"],
        ["Secretos", "No se observaron en los archivos revisados", "Exposición futura", "Escaneo y rotación inmediata"],
        ["Dependencias", "No hay manifiestos visibles de código", "Análisis incompleto", "Registrar dependencias y alertas"],
        ["Copias de seguridad", "Git conserva historial remoto", "Pérdida operativa", "Exportar entregables periódicamente"],
    ]
    security_table = Table(security, repeatRows=1, colWidths=[2.2 * cm, 3.8 * cm, 4.2 * cm, 5.2 * cm])
    security_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#1F4E78")),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("FONTNAME", (0, 1), (-1, -1), "Helvetica"),
        ("FONTSIZE", (0, 0), (-1, -1), 7),
        ("LEADING", (0, 0), (-1, -1), 9),
        ("GRID", (0, 0), (-1, -1), 0.25, colors.HexColor("#A6A6A6")),
        ("VALIGN", (0, 0), (-1, -1), "TOP"),
        ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.white, colors.HexColor("#EAF2F8")]),
    ]))

    permissions = [
        ["Rol", "Leer", "Crear ramas/commits", "Revisar PR", "Administrar permisos"],
        ["Docente/administrador", "Sí", "Sí", "Sí", "Según configuración"],
        ["Líder del equipo", "Sí", "Sí", "Sí", "No necesariamente"],
        ["Desarrollador", "Sí", "Sí", "Puede participar", "No"],
        ["Revisor", "Sí", "Puede corregir", "Sí", "No"],
    ]
    permission_table = Table(permissions, repeatRows=1, colWidths=[3.2 * cm, 2.5 * cm, 4 * cm, 3.5 * cm, 3.2 * cm])
    permission_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#1F4E78")),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("FONTSIZE", (0, 0), (-1, -1), 7.5),
        ("GRID", (0, 0), (-1, -1), 0.25, colors.HexColor("#A6A6A6")),
        ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.white, colors.HexColor("#EAF2F8")]),
        ("VALIGN", (0, 0), (-1, -1), "TOP"),
    ]))

    commits = [
        ["Commit", "Autor", "Cambio"],
        ["a6d2b01", "BenjaminBuitragoC", "Creación inicial del repositorio"],
        ["2a2de8c", "BenjaminBuitragoC", "Carga de los primeros archivos de actividades"],
        ["31ad917", "BenjaminBuitragoC", "Versión actual de los materiales"],
    ]
    commit_table = Table(commits, repeatRows=1, colWidths=[3 * cm, 4.2 * cm, 9.2 * cm])
    commit_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#1F4E78")),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.white),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("FONTSIZE", (0, 0), (-1, -1), 8),
        ("GRID", (0, 0), (-1, -1), 0.25, colors.HexColor("#A6A6A6")),
        ("ROWBACKGROUNDS", (0, 1), (-1, -1), [colors.white, colors.HexColor("#EAF2F8")]),
    ]))

    story = [
        Spacer(1, 1.5 * cm),
        p("TERCERA ACTIVIDAD DE AUTOAPRENDIZAJE", title),
        p("Fundamentos de GitHub - Parte 2", subtitle),
        p("Proyecto de Sistemas II", subtitle),
        p("Estudiante: Werner Hans von Borries Soria", subtitle),
        p("Repositorio: BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A", subtitle),
        p("Rama: docs-mejora-proyecto-werner-hans-von-borries-soria", subtitle),
        Spacer(1, 0.8 * cm),
        p(
            "Este informe documenta las actividades prácticas solicitadas "
            "excluyendo expresamente la ruta y el curso de Microsoft Learn.",
            subtitle,
        ),
        PageBreak(),
        p("1. Objetivo de aprendizaje", h1),
        p(
            "Aplicar colaboración, seguridad, revisión de código, administración "
            "de permisos, trazabilidad e inteligencia artificial al repositorio "
            "oficial de la asignatura.",
            body,
        ),
        p("2. Contribución y revisión de cambios", h1),
        p("Rama de trabajo: docs-mejora-proyecto-werner-hans-von-borries-soria", body),
        p("Artefactos: README.md, docs/guia-reutilizacion.md, informe integrado y ejemplo de validación.", body),
        p("Control de cambios:", h2),
        p("Commits locales realizados:", h2),
        p("• 5afa052 — docs: completar tercera actividad de autoaprendizaje", body),
        p("• e1b7f28 — chore: ignorar archivos generados de Python", body),
        p("Título propuesto del Pull Request:", h2),
        p("docs: completar la tercera actividad de autoaprendizaje", body),
        p("Descripción propuesta:", h2),
        p(
            "Mejora el README y agrega una guía reutilizable de InnerSource, "
            "seguridad, permisos, trazabilidad, una función validada con asistencia "
            "de IA y el informe consolidado de la actividad.",
            body,
        ),
        p(
            "Estado: la rama fue creada localmente desde main y contiene los "
            "commits anteriores. No se hizo push ni se abrió el PR porque no fue "
            "solicitada una publicación remota.",
            body,
        ),
        p("Observaciones previstas para la revisión:", h2),
        p("• Verificar enlaces públicos y nombres de archivos.", body),
        p("• Confirmar que no existen datos sensibles.", body),
        p("• Revisar ortografía, claridad y ejecución de las pruebas.", body),
        p("• Resolver los comentarios antes de integrar hacia main.", body),
        p("3. InnerSource y colaboración", h1),
        p(
            "El artefacto compartible es docs/guia-reutilizacion.md. Describe "
            "cómo otro equipo puede reutilizarlo, personalizarlo y mantenerlo "
            "mediante ramas, Pull Requests y revisión de otro integrante.",
            body,
        ),
        p("Recurso: https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/blob/main/docs/guia-reutilizacion.md", small),
        p("4. Seguridad del repositorio", h1),
        security_table,
        Spacer(1, 8),
        p("Recomendaciones prioritarias:", h2),
        p("1. Proteger main y exigir una aprobación antes de fusionar.", body),
        p("2. Activar MFA y escaneo de secretos.", body),
        p("3. Revisar colaboradores, ramas y respaldos trimestralmente.", body),
        PageBreak(),
        p("5. Administración, autenticación y permisos", h1),
        permission_table,
        Spacer(1, 8),
        p("Los permisos reales deberían verificarse desde Settings &gt; Collaborators and teams. "
          "Como mínimo, se asignaría lectura a integrantes de seguimiento, escritura a desarrolladores "
          "autorizados y administración solo al docente o líder designado.", body),
        p("Reflexión:", h2),
        p("• Autenticación confirma la identidad; autorización decide qué puede hacer esa identidad.", body),
        p("• No todos deben ser administradores porque una cuenta comprometida tendría mayor alcance.", body),
        p("• Compartir una cuenta elimina trazabilidad individual y dificulta la revocación.", body),
        p("• MFA protege la cuenta, junto con contraseña única, gestor de contraseñas y recuperación segura.", body),
        p("6. Organización del historial y búsqueda", h1),
        p("Commits relevantes consultados:", h2),
        commit_table,
        Spacer(1, 8),
        p("Enlaces:", h2),
            p("https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/a6d2b01c61b1f915a8a92ab32b025ed9077ac6fe", small),
            p("https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/2a2de8c8f02bc78c960ef672bbd2b1f525f5281d", small),
            p("https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/commit/31ad9172b443769e2c54352b266a6bdd703759f8", small),
            p("Evidencia relacionada: https://github.com/BenjaminBuitragoC/PROYECTO-DE-SISTEMAS-II-A/pull/15", small),
            p("La evolución puede verificarse en el historial y con blame de README.md. "
              "Esta trazabilidad permite encontrar cuándo apareció el defecto, quién modificó "
              "las líneas implicadas y qué Pull Request justificó el cambio.", body),
            p("7. GitHub Copilot y asistencia con IA", h1),
            p("Función seleccionada:", h2),
            p("Validación básica de dirección de correo electrónico mediante una expresión regular.", body),
            p("Prompt utilizado:", h2),
            p("“Propón una función Python pequeña para validar un correo electrónico sin permitir espacios, "
              "con una sola arroba y un dominio con punto. Incluye pruebas unitarias para casos válidos, "
              "inválidos y límites. No uses dependencias externas.”", body),
            p("Código final:", h2),
            p("docs/actividad_7_validacion_email.py", body),
            p("Pruebas: docs/test_validacion_email.py", body),
            p("Resultado real:", h2),
            p("python -m unittest discover -s docs -p test_*.py -v", body),
            p("Ran 7 tests in 0.000s — OK", body),
            p("Casos límite cubiertos:", h2),
            p("Cadena vacía, espacios, doble arroba, dominio sin punto y tipo incorrecto.", body),
            p("Decisiones y revisión:", h2),
            p("Se revisó la propuesta para rechazar formato ambiguo, se usó re.fullmatch y se "
              "validaron 7 casos independientes. La asistencia con IA acelera el diseño y la "
              "implementación, pero puede asumir requisitos o producir expresiones demasiado "
              "permisivas; por ello se realizaron revisión manual y pruebas.", body),
            p("8. Integración y buenas prácticas", h1),
            p(
                "La mejora integra control de cambios por rama y commits, revisión colaborativa "
                "mediante Pull Request, documentación de seguridad, permisos mínimos, "
                "trazabilidad y pruebas revisadas con asistencia de IA.",
                body,
            ),
            p(
                "Conclusión: durante el resto del semestre el equipo debería mantener main protegido, "
                "trabajar en ramas descriptivas, solicitar al menos una revisión, aplicar MFA y "
                "mínimo privilegio, ejecutar escaneo de secretos, documentar decisiones y asociar "
                "pruebas a cada cambio. Estas prácticas reducen errores, facilitan auditorías y "
                "aceleran la recuperación ante defectos.",
                body,
            ),
        ]

    doc.build(story)
    print(OUTPUT)


if __name__ == "__main__":
    build_pdf()
