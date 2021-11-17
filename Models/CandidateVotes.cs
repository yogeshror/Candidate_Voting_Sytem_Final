using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Candidate_Voting_Sytem_Final.Models
{
    public class CandidateVotes
    {
        public int Id { get; set; }

        
        public string  Candidate { get; set; }

        public int VoteCount { get; set; }
    }
}
