using Universe.NUnitPipeline;

[assembly: NUnitPipelineAction]

// One time setup fixture per each test project
namespace Universe.SqlServer.AdministrativeViews.Tests;

[SetUpFixture]
public class OrderedPipelineConfigurationFixture
{
    [OneTimeSetUp]
    public void Configure()
    {
        OrderedPipelineConfiguration.Configure();
    }
}