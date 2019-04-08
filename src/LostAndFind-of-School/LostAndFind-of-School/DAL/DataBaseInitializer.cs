using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using LostAndFind_of_School.Models;

namespace LostAndFind_of_School.DAL
{
    public class DataBaseInitializer:DropCreateDatabaseAlways<ProjectContext>
    {
        protected override void Seed(ProjectContext context)
        {
            var Users = new List<Models.User> { new Models.User() { stuNumble = "20164186", realName = "王伟强", nickName = "风和树里", Gender = 1, headImg = "wu", college = "信息", password = "111", contact = "110", userInfo = "wu" } };
            Users.ForEach(u => context.Users.Add(u));
            context.SaveChanges();

            var LostItems = new List<Models.LostItems>() { new Models.LostItems { itemName = "校园卡", itemInfo = "信息学院李洋，20164198", itemImg = "wu", UserID = 1, releaseTime = DateTime.Now } };
            LostItems.ForEach(i => context.LostItems.Add(i));
            context.SaveChanges();
        }
    }
}