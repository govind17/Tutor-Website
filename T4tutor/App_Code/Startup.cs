using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(T4tutor.Startup))]
namespace T4tutor
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
