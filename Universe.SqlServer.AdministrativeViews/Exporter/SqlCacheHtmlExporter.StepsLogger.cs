using Universe.SqlServer.AdministrativeViews.External;

namespace Universe.SqlServer.AdministrativeViews.Exporter;

partial class SqlCacheHtmlExporter
{
    private StepsLogger _StepsLogger;

    public SqlCacheHtmlExporter()
    {
        StepsLogger.TakeOwnership();
        _StepsLogger = StepsLogger.Instance;
    }

    StepsLogger.MeasureStepImplementation LogStep(string title)
    {
        return _StepsLogger?.LogStep(title);
    }

    public string GetLogsAsString()
    {
        return _StepsLogger?.GetLogsAsString();
    }

}