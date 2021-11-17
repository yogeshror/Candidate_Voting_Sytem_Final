using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Candidate_Voting_Sytem_Final.Models;

namespace Candidate_Voting_Sytem_Final.Models
{
    public class Candidate_Voting_DataContext : DbContext
    {
        public Candidate_Voting_DataContext (DbContextOptions<Candidate_Voting_DataContext> options)
            : base(options)
        {
        }

        public DbSet<Candidate_Voting_Sytem_Final.Models.Candidate> Candidate { get; set; }

        public DbSet<Candidate_Voting_Sytem_Final.Models.Vote> Vote { get; set; }

        public DbSet<Candidate_Voting_Sytem_Final.Models.Voter> Voter { get; set; }
    }
}
