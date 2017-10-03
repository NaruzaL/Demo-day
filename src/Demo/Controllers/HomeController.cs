using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Demo.Models;


namespace Demo.Controllers
{
    public class HomeController : Controller
    {
        private VideocardDbContext db = new VideocardDbContext();

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Python()
        {
            return View();
        }

        public IActionResult Products()
        {
            return View(db.Products.ToList());
        }

    }
}
