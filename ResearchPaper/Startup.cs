using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ResearchPaper.Startup))]
namespace ResearchPaper
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
