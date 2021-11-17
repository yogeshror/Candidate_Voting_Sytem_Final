using System;
using Candidate_Voting_Sytem_Final.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

[assembly: HostingStartup(typeof(Candidate_Voting_Sytem_Final.Areas.Identity.IdentityHostingStartup))]
namespace Candidate_Voting_Sytem_Final.Areas.Identity
{
    public class IdentityHostingStartup : IHostingStartup
    {
        public void Configure(IWebHostBuilder builder)
        {
            builder.ConfigureServices((context, services) => {
                services.AddDbContext<Candidate_Voting_IdentityContext>(options =>
                    options.UseSqlServer(
                        context.Configuration.GetConnectionString("Candidate_Voting_IdentityContextConnection")));

                services.AddDefaultIdentity<IdentityUser>(options => options.SignIn.RequireConfirmedAccount = true)
                     .AddRoles<IdentityRole>()
                    .AddEntityFrameworkStores<Candidate_Voting_IdentityContext>();
            });
        }
    }
}