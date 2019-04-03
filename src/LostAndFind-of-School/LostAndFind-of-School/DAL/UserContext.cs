using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace LostAndFind_of_School.DAL
{
    public class UserContext:DbContext
    {
        public UserContext() : base("connectionString")
        { }
        public DbSet<Models.User> Users { get; set; }

        //生成单数形式的表名
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            //modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            Database.SetInitializer<DAL.UserContext>(new DAL.UserInitializer());
        }
    }
}