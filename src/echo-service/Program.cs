var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Welcome EchoService");
app.MapGet("/healthz", () => "OK");
app.MapGet("/version", () => "v0.1");

app.Run();
