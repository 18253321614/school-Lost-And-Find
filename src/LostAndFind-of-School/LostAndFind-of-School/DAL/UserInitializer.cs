using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace LostAndFind_of_School.DAL
{
    /// <summary>
    /// model改变时删除数据库并重建数据库且初始化数据
    /// </summary>
    public class UserInitializer: DropCreateDatabaseIfModelChanges<UserContext>
    {
        protected override void Seed(UserContext context)
        {
            var Users = new List<Models.User> { new Models.User() { stuNumble = "20164186", realName = "王伟强", nickName = "风和树里",Gender=1,headImg="wu",college="信息",password="111",contact="110",userInfo="wu" } };
            Users.ForEach(u=>context.Users.Add(u));
            context.SaveChanges();
            
        }
    }
}