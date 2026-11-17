from django.contrib import admin
from grades.models import Calificacion
from .models import Matricula


class CalificacionInline(admin.TabularInline):
    model = Calificacion
    extra = 0


@admin.register(Matricula)
class MatriculaAdmin(admin.ModelAdmin):
    list_display = ('estudiante', 'curso', 'anio_academico', 'fecha_matricula', 'estado')
    search_fields = (
        'estudiante__nombre',
        'estudiante__apellido',
        'estudiante__documento',
        'curso__nombre',
        'curso__codigo',
    )
    list_filter = ('anio_academico', 'estado', 'curso')
    autocomplete_fields = ('estudiante', 'curso')
    inlines = (CalificacionInline,)
