using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Candidate_Voting_Sytem_Final.Models
{
    public class Vote
    {

        public int Id { get; set; }

        public int VoterId {get; set;}

        public int CandidateId { get; set; }

        public Voter Voter { get; set; }

        public Candidate Candidate { get; set; }




    }
}
