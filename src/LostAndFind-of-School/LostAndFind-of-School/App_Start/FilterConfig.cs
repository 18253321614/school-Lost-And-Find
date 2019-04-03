using System.Web;
using System.Web.Mvc;

namespace LostAndFind_of_School
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
