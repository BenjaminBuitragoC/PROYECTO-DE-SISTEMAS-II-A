import unittest

from actividad_7_validacion_email import es_correo_valido


class ValidacionEmailTests(unittest.TestCase):
    def test_correo_valido(self):
        self.assertTrue(es_correo_valido("persona@ejemplo.com"))

    def test_rechaza_cadena_vacia(self):
        self.assertFalse(es_correo_valido(""))

    def test_rechaza_espacios(self):
        self.assertFalse(es_correo_valido("persona @ejemplo.com"))

    def test_rechaza_doble_arroba(self):
        self.assertFalse(es_correo_valido("persona@@ejemplo.com"))

    def test_rechaza_dominio_sin_punto(self):
        self.assertFalse(es_correo_valido("persona@localhost"))

    def test_acepta_subdominio(self):
        self.assertTrue(es_correo_valido("persona@sub.ejemplo.com"))

    def test_rechaza_tipo_incorrecto(self):
        self.assertFalse(es_correo_valido(None))


if __name__ == "__main__":
    unittest.main()
