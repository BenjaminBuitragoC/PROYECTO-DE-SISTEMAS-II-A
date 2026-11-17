import unittest

from src.stock import calcular_saldo_salida


class PruebasDeSalida(unittest.TestCase):
    def test_salida_con_stock_suficiente(self):
        self.assertEqual(calcular_saldo_salida(10, 3), 7)

    def test_salida_de_todas_las_unidades(self):
        self.assertEqual(calcular_saldo_salida(10, 10), 0)

    def test_salida_mayor_al_stock(self):
        self.assertRaisesRegex(ValueError, "Stock insuficiente", calcular_saldo_salida, 10, 11)

    def test_salida_con_stock_agotado(self):
        self.assertRaisesRegex(ValueError, "Stock insuficiente", calcular_saldo_salida, 0, 1)

    def test_cantidad_cero_o_negativa(self):
        for cantidad in (0, -2):
            with self.subTest(cantidad=cantidad):
                self.assertRaisesRegex(ValueError, "Cantidad inválida", calcular_saldo_salida, 10, cantidad)

    def test_stock_negativo(self):
        self.assertRaisesRegex(ValueError, "Stock inválido", calcular_saldo_salida, -1, 1)

    def test_valores_logicos(self):
        for stock, cantidad in ((True, 1), (10, True)):
            with self.subTest(stock=stock, cantidad=cantidad):
                self.assertRaisesRegex(ValueError, "Usa números enteros", calcular_saldo_salida, stock, cantidad)

    def test_valores_decimales(self):
        for stock, cantidad in ((10.5, 1), (10, 2.5)):
            with self.subTest(stock=stock, cantidad=cantidad):
                self.assertRaisesRegex(ValueError, "Usa números enteros", calcular_saldo_salida, stock, cantidad)
