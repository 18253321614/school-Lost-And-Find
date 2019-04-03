using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LostAndFind_of_School.DAL;

namespace LostAndFind_of_School.Controllers
{
    public class AccountController : Controller
    {
        
        // GET: Account
        public ActionResult Index()
        {
            //测试数据库的创建
            LostItemContext liDb = new LostItemContext();
            UserContext db = new UserContext();
            var i = liDb.LostItems.Any();
            var b = db.Users.Any();
            return View();
        }
    }
}