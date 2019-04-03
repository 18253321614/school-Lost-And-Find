using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace LostAndFind_of_School.Controllers
{
    public class LostItemController : Controller
    {
        // GET: LostItem
        public ActionResult Index()
        {
            return View();
        }
    }
}