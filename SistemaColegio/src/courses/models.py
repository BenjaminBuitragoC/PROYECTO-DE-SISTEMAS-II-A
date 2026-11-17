from django.db import models


class Curso(models.Model):
    codigo = models.CharField(max_length=20, unique=True)
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField(blank=True)
    docente = models.ForeignKey(
        'teachers.Docente',
        on_delete=models.SET_NULL,
        related_name='cursos',
        null=True,
        blank=True,
    )

    class Meta:
        ordering = ('nombre',)
        verbose_name = 'Curso'
        verbose_name_plural = 'Cursos'

    def __str__(self):
        return f'{self.codigo} - {self.nombre}'
