using Microsoft.AspNetCore.HttpOverrides;
using System.Net;

namespace Server
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

           /* builder.Services.Configure<ForwardedHeadersOptions>(options =>
            {
                options.KnownProxies.Add(IPAddress.Parse("10.0.0.100"));
            });*/



#if DEBUG
            builder.Configuration.AddJsonFile("appsettings.Development.json", optional: true, reloadOnChange: true);
#else
            builder.Configuration.AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);
#endif

            // Add services to the container.

            builder.Services.AddControllers();

            var app = builder.Build();

            app.UseForwardedHeaders(new ForwardedHeadersOptions
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
            });

            app.UseHttpsRedirection(); 

            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                app.UseHsts();
            }

            app.UseAuthentication();

            app.UsePathBase("/api");

            app.MapGet("/", () => "Hello ForwardedHeadersOptions!");
             
            app.MapControllers();

            app.Run();
        }
    }
}
