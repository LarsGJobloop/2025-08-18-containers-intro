var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Welcome to EchoService");
app.MapGet("/healthz", () => "OK");
app.MapGet("/version", () => "v0.2");

app.Run();
