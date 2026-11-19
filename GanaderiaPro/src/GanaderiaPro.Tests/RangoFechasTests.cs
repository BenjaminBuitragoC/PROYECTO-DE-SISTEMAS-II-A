using GanaderiaPro.Application.Common;
using Xunit;

namespace GanaderiaPro.Tests;

// Período de consulta del historial de pesajes: obligatorio, ordenado,
// sin fechas futuras y de hasta un año calendario.
public class RangoFechasTests
{
    private static readonly DateOnly Hoy = new(2026, 11, 18);

    [Fact]
    public void Validar_RangoNormal_EsValido() =>
        Assert.Null(RangoFechas.Validar(new(2026, 10, 1), new(2026, 10, 31), Hoy));

    [Fact]
    public void Validar_MismoDia_EsValido() =>
        Assert.Null(RangoFechas.Validar(Hoy, Hoy, Hoy));

    [Fact]
    public void Validar_SinDesde_Error() =>
        Assert.Equal("Las fechas desde y hasta son obligatorias.", RangoFechas.Validar(null, Hoy, Hoy));

    [Fact]
    public void Validar_SinHasta_Error() =>
        Assert.Equal("Las fechas desde y hasta son obligatorias.", RangoFechas.Validar(Hoy, null, Hoy));

    [Fact]
    public void Validar_DesdePosteriorAHasta_Error() =>
        Assert.Equal("La fecha desde no puede ser posterior a la fecha hasta.",
            RangoFechas.Validar(new(2026, 11, 10), new(2026, 11, 9), Hoy));

    [Fact]
    public void Validar_HastaFutura_Error() =>
        Assert.Equal("La fecha hasta no puede ser futura.",
            RangoFechas.Validar(new(2026, 11, 1), Hoy.AddDays(1), Hoy));

    // Caso límite: exactamente un año calendario (año normal, 365 días).
    [Fact]
    public void Validar_ExactamenteUnAnio_AnioNormal_EsValido() =>
        Assert.Null(RangoFechas.Validar(new(2025, 3, 1), new(2026, 3, 1), Hoy));

    // Caso límite: exactamente un año calendario que incluye el 29 de febrero (366 días).
    [Fact]
    public void Validar_ExactamenteUnAnio_ConBisiesto_EsValido() =>
        Assert.Null(RangoFechas.Validar(new(2024, 1, 1), new(2025, 1, 1), Hoy));

    // Caso límite: un día más que un año calendario.
    [Fact]
    public void Validar_UnAnioYUnDia_Error() =>
        Assert.Equal("El período no puede superar un año.",
            RangoFechas.Validar(new(2025, 3, 1), new(2026, 3, 2), Hoy));
}
