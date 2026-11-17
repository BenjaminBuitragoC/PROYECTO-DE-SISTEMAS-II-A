from django.db import IntegrityError, transaction
from django.test import TestCase
from courses.models import Curso
from students.models import Estudiante
from .models import Matricula


class MatriculaModelTests(TestCase):
    def setUp(self):
        self.estudiante = Estudiante.objects.create(
            nombre='Luis',
            apellido='Gómez',
            documento='EST-001',
            fecha_nacimiento='2010-04-15',
            correo='luis@example.com',
        )
        self.curso = Curso.objects.create(codigo='MAT-01', nombre='Álgebra')

    def test_enrollment_links_student_and_course(self):
        matricula = Matricula.objects.create(
            estudiante=self.estudiante,
            curso=self.curso,
            anio_academico=2026,
        )

        self.assertEqual(matricula.estado, Matricula.Estado.ACTIVA)
        self.assertEqual(self.estudiante.matriculas.get(), matricula)
        self.assertEqual(self.curso.matriculas.get(), matricula)

    def test_student_cannot_enroll_twice_in_course_for_same_year(self):
        Matricula.objects.create(
            estudiante=self.estudiante,
            curso=self.curso,
            anio_academico=2026,
        )

        with self.assertRaises(IntegrityError), transaction.atomic():
            Matricula.objects.create(
                estudiante=self.estudiante,
                curso=self.curso,
                anio_academico=2026,
            )
