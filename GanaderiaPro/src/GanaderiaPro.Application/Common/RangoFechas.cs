namespace GanaderiaPro.Application.Common;

// Validación del período para consultar el historial de pesajes.
// Propuesta v1 generada con asistencia de IA (Claude Code).
public static class RangoFechas
{
    public const int DiasMaximos = 365;

    // Devuelve el primer problema encontrado, o null si el rango es válido.
    public static string? Validar(DateOnly? desde, DateOnly? hasta, DateOnly hoy)
    {
        if (desde is null || hasta is null)
        {
            return "Las fechas desde y hasta son obligatorias.";
        }

        if (desde > hasta)
        {
            return "La fecha desde no puede ser posterior a la fecha hasta.";
        }

        if (hasta > hoy)
        {
            return "La fecha hasta no puede ser futura.";
        }

        if (hasta.Value.DayNumber - desde.Value.DayNumber > DiasMaximos)
        {
            return "El período no puede superar un año.";
        }

        return null;
    }
}
