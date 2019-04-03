using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace LostAndFind_of_School.DAL
{
    public class LostItemContext : DbContext
    {
        public LostItemContext() : base("connectionString")
        {
            Database.SetInitializer<LostItemContext>(null);
        }

        public DbSet<Models.LostItems> LostItems { get; set; }

        //创建数据库时进行的操作
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<DAL.LostItemContext>(new DAL.LostItemInitializer());
        }
    }
}