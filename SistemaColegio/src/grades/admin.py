from django.contrib import admin
from .models import Calificacion


@admin.register(Calificacion)
class CalificacionAdmin(admin.ModelAdmin):
    list_display = ('nombre_evaluacion', 'matricula', 'valor', 'fecha')
    search_fields = (
        'nombre_evaluacion',
        'matricula__estudiante__nombre',
        'matricula__estudiante__apellido',
        'matricula__curso__nombre',
    )
    list_filter = ('fecha', 'matricula__curso')
    autocomplete_fields = ('matricula',)
