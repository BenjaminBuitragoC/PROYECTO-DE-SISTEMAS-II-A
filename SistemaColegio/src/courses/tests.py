from django.test import TestCase
from teachers.models import Docente
from .models import Curso


class CursoModelTests(TestCase):
    def test_course_can_be_assigned_to_a_teacher(self):
        docente = Docente.objects.create(
            nombre='Ana',
            apellido='Pérez',
            documento='DOC-001',
            especialidad='Matemáticas',
            correo='ana@example.com',
        )
        curso = Curso.objects.create(codigo='MAT-01', nombre='Álgebra', docente=docente)

        self.assertEqual(str(curso), 'MAT-01 - Álgebra')
        self.assertEqual(docente.cursos.get(), curso)
