using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using LostAndFind_of_School.Models;

namespace LostAndFind_of_School.DAL
{
    public class ProjectContext:DbContext
    {
        public ProjectContext() : base("connectionString")
        {

        }

        public DbSet<User> Users { get; set; }
        public DbSet<LostItems> LostItems { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //base.OnModelCreating(modelBuilder);
            Database.SetInitializer<ProjectContext>(new DataBaseInitializer());
        }
    }
}