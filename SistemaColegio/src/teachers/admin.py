from django.contrib import admin
from .models import Docente


@admin.register(Docente)
class DocenteAdmin(admin.ModelAdmin):
    list_display = ('id', 'nombre', 'apellido', 'documento', 'especialidad', 'correo', 'telefono')
    search_fields = ('nombre', 'apellido', 'documento', 'especialidad', 'correo')
    list_filter = ('especialidad',)
