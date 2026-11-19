namespace GanaderiaPro.Application.Common;

// Validación del período para consultar el historial de pesajes.
// Propuesta v1 generada con asistencia de IA (Claude Code); v2 corregida tras
// detectar el caso límite del año bisiesto en las pruebas unitarias.
public static class RangoFechas
{

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

        // Corrección v2: se compara contra un año calendario (AddYears) y no
        // contra 365 días fijos, porque un año con 29 de febrero tiene 366 días.
        if (hasta.Value > desde.Value.AddYears(1))
        {
            return "El período no puede superar un año.";
        }

        return null;
    }
}
