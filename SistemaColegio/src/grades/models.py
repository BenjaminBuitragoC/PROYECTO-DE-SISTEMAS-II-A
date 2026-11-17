from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models
from django.db.models import Q
from django.utils import timezone


class Calificacion(models.Model):
    matricula = models.ForeignKey(
        'enrollments.Matricula',
        on_delete=models.CASCADE,
        related_name='calificaciones',
    )
    nombre_evaluacion = models.CharField(max_length=100)
    valor = models.DecimalField(
        max_digits=5,
        decimal_places=2,
        validators=(MinValueValidator(0), MaxValueValidator(100)),
    )
    fecha = models.DateField(default=timezone.localdate)

    class Meta:
        ordering = ('fecha', 'nombre_evaluacion')
        verbose_name = 'Calificación'
        verbose_name_plural = 'Calificaciones'
        constraints = [
            models.CheckConstraint(
                condition=Q(valor__gte=0, valor__lte=100),
                name='grade_value_between_0_and_100',
            ),
            models.UniqueConstraint(
                fields=('matricula', 'nombre_evaluacion'),
                name='unique_grade_assessment_per_enrollment',
            ),
        ]

    def __str__(self):
        return f'{self.nombre_evaluacion}: {self.valor}'
