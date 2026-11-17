from django.contrib import admin
from .models import Curso


@admin.register(Curso)
class CursoAdmin(admin.ModelAdmin):
    list_display = ('codigo', 'nombre', 'docente')
    search_fields = ('codigo', 'nombre', 'docente__nombre', 'docente__apellido')
    list_filter = ('docente',)
