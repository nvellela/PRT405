using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SalesBoard.Startup))]
namespace SalesBoard
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
