using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Options;

namespace Demo.Models
{
    public class VideocardDbContext : DbContext
    {
        public DbSet<Product> Products { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder Options)
        {
            Options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=Videocards;integrated security=True");
        }
    }
    
}
