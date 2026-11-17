def calcular_saldo_salida(stock: int, cantidad: int) -> int:
    """Devuelve las unidades que quedarían después de una salida válida."""
    if type(stock) is not int or type(cantidad) is not int:
        raise ValueError("Usa números enteros")
    if stock < 0:
        raise ValueError("Stock inválido")
    if cantidad <= 0:
        raise ValueError("Cantidad inválida")
    if cantidad > stock:
        raise ValueError("Stock insuficiente")
    return stock - cantidad
