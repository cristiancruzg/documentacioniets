using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DocumentacionDepen.Startup))]
namespace DocumentacionDepen
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
