"""Validación básica de correo para el ejercicio de asistencia con IA."""

import re


_EMAIL_PATTERN = re.compile(r"[^\s@]+@[^\s@]+\.[^\s@]+")


def es_correo_valido(valor: str) -> bool:
    """Devuelve True si valor tiene un formato básico de correo."""
    if not isinstance(valor, str) or not valor:
        return False
    return _EMAIL_PATTERN.fullmatch(valor) is not None
