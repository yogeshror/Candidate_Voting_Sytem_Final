using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Candidate_Voting_Sytem_Final.Models;
using Microsoft.AspNetCore.Authorization;

using Microsoft.AspNetCore.Identity;

 

namespace Candidate_Voting_Sytem_Final.Controllers
{
    public class VotesController : Controller
    {
        private readonly Candidate_Voting_DataContext _context;

        private SignInManager<IdentityUser> SignInManager;

        public VotesController(Candidate_Voting_DataContext context,
            SignInManager<IdentityUser> SignInManager
            
            )
        {
            this.SignInManager = SignInManager;
            _context = context;
        }

        [Authorize(Roles = "admin, voter")]
        // GET: Votes
        public async Task<IActionResult> Index()
        {
            var candidate_Voting_DataContext = (from votes in _context.Vote
                                                group votes by votes.Candidate.Name into groupVotes
                                                orderby groupVotes.Count<Vote>() descending
                                                select new CandidateVotes { Candidate = groupVotes.Key, VoteCount = groupVotes.Count<Vote>() });

           return View(await candidate_Voting_DataContext.ToListAsync());
        }



        // GET: Votes/Create
        [Authorize(Roles = "voter")]
        public IActionResult Create()
        {
            ViewData["CandidateId"] = new SelectList(_context.Candidate, "Id", "Name");
          
            return View();
        }

        // POST: Votes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [Authorize(Roles = "voter")]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,CandidateId")] Vote vote)
        {
            var voter = (from voters in _context.Voter

                         where voters.Email.Equals(User.Identity.Name)
                         select voters
                           ).FirstOrDefault();

            var votes = (from vote2 in _context.Vote

                         where (vote2.VoterId == voter.Id && vote2.CandidateId != vote.CandidateId)

                         select vote2
                              ).ToList();

            if (votes.Count >= 1) {

                return RedirectToAction(nameof(Error));
            }

            if (ModelState.IsValid)
            {
                vote.VoterId = voter.Id;
                _context.Add(vote);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["CandidateId"] = new SelectList(_context.Candidate, "Id", "Name", vote.CandidateId);
           
            return View(vote);
        }

        // GET: Votes/Edit/5
      
        // POST: Votes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
       

        // GET: Votes/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
           
            return View();
        }

        // POST: Votes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed()
        {
            var votes = (from vote in _context.Vote select vote).ToList();

            _context.Vote.RemoveRange(votes);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }


        // GET: Votes/Delete/5
        public IActionResult Error()
        {

            return View();
        }


        [Authorize(Roles = "admin")]
        // GET: Votes
        public async Task<IActionResult> VotingTransactions()
        {
            var candidate_Voting_DataContext = _context.Vote.Include(v=>v.Candidate).Include(v=>v.Voter);

            return View(await candidate_Voting_DataContext.ToListAsync());
        }


    }
}
