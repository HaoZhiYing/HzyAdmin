try
{
    await WebApplication.CreateBuilder(args)
         // ���� hzy framework
         .AddHzyFramework<ApiAdminStartup>()
         // ����
         .Build()
         // ���� app
         .StartHzyFrameworkAsync()
    ;
}
catch (Exception ex)
{
    LogUtil.Log.Fatal(ex, "����������ֹ...");
    throw;
}
finally
{
    Log.CloseAndFlush();
}
