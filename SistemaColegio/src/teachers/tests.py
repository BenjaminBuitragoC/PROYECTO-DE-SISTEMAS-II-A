from django.test import TestCase
from .models import Docente


class DocenteModelTests(TestCase):
    def test_str_returns_full_name(self):
        docente = Docente.objects.create(
            nombre='Ana',
            apellido='Pérez',
            documento='DOC-001',
            especialidad='Matemáticas',
            correo='ana@example.com',
        )

        self.assertEqual(str(docente), 'Ana Pérez')
