using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace eCar_Rental_System.Models
{
    public class AppDbContext : DbContext
    {
        public AppDbContext() : base("name=CarRentalDB")
        {

        }

        public DbSet<User> Users { get; set; }
        public DbSet<Car> Cars { get; set; }
        public DbSet<Request> Requests { get; set; }
    }
}