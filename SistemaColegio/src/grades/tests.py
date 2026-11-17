from django.core.exceptions import ValidationError
from django.test import TestCase
from courses.models import Curso
from enrollments.models import Matricula
from students.models import Estudiante
from .models import Calificacion


class CalificacionModelTests(TestCase):
    def setUp(self):
        estudiante = Estudiante.objects.create(
            nombre='Luis',
            apellido='Gómez',
            documento='EST-001',
            fecha_nacimiento='2010-04-15',
            correo='luis@example.com',
        )
        curso = Curso.objects.create(codigo='MAT-01', nombre='Álgebra')
        self.matricula = Matricula.objects.create(
            estudiante=estudiante,
            curso=curso,
            anio_academico=2026,
        )

    def test_grade_is_related_to_enrollment(self):
        calificacion = Calificacion.objects.create(
            matricula=self.matricula,
            nombre_evaluacion='Examen 1',
            valor='85.50',
        )

        self.assertEqual(str(calificacion), 'Examen 1: 85.50')
        self.assertEqual(self.matricula.calificaciones.get(), calificacion)

    def test_grade_outside_scale_is_invalid(self):
        calificacion = Calificacion(
            matricula=self.matricula,
            nombre_evaluacion='Examen 1',
            valor='100.01',
        )

        with self.assertRaises(ValidationError):
            calificacion.full_clean()
