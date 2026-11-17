
from django.contrib import admin
from .models import Estudiante


@admin.register(Estudiante)
class EstudianteAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'nombre',
        'apellido',
        'documento',
        'fecha_nacimiento',
        'correo',
    )

    search_fields = (
        'nombre',
        'apellido',
        'documento',
        'correo',
    )

    list_filter = ('fecha_nacimiento',)
