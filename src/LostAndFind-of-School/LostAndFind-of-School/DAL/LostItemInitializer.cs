using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace LostAndFind_of_School.DAL
{
    /// <summary>
    /// model改变时删除数据库并重建数据库且初始化数据
    /// </summary>
    public class LostItemInitializer:DropCreateDatabaseAlways<LostItemContext>
    {
        protected override void Seed(LostItemContext context)
        {
            var LostItems = new List<Models.LostItems>() { new Models.LostItems { itemName="校园卡",itemInfo="信息学院李洋，20164198",itemImg="wu",UserID=1,releaseTime=DateTime.Now} };
            LostItems.ForEach(i=>context.LostItems.Add(i));
            context.SaveChanges();
        }
    }
}