from django.db import models
from django.utils import timezone


class Matricula(models.Model):
    class Estado(models.TextChoices):
        ACTIVA = 'activa', 'Activa'
        RETIRADA = 'retirada', 'Retirada'
        FINALIZADA = 'finalizada', 'Finalizada'

    estudiante = models.ForeignKey(
        'students.Estudiante',
        on_delete=models.PROTECT,
        related_name='matriculas',
    )
    curso = models.ForeignKey(
        'courses.Curso',
        on_delete=models.PROTECT,
        related_name='matriculas',
    )
    anio_academico = models.PositiveSmallIntegerField()
    fecha_matricula = models.DateField(default=timezone.localdate)
    estado = models.CharField(max_length=12, choices=Estado.choices, default=Estado.ACTIVA)

    class Meta:
        ordering = ('-anio_academico', 'estudiante__apellido', 'curso__nombre')
        verbose_name = 'Matrícula'
        verbose_name_plural = 'Matrículas'
        constraints = [
            models.UniqueConstraint(
                fields=('estudiante', 'curso', 'anio_academico'),
                name='unique_student_course_year',
            ),
        ]

    def __str__(self):
        return f'{self.estudiante} - {self.curso} ({self.anio_academico})'
