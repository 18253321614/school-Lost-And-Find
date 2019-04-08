using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LostAndFind_of_School.Models;
using LostAndFind_of_School.DAL;

namespace LostAndFind_of_School.Repositories
{
    public class LostItemRepository : ILostItemRepository
    {
        ProjectContext db = new ProjectContext();

        public void AddItem(LostItems item)
        {
            db.LostItems.Add(item);
            db.SaveChanges();
        }

        public bool DeleteItem(int id)
        {
            var item = db.LostItems.FirstOrDefault(u=>u.ID==id);
            if (item!=null)
            {
                db.LostItems.Remove(item);
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

        public IQueryable<LostItems> SelectAll()
        {
            return db.LostItems;
        }

        public LostItems SelectByitemName(string itemName)
        {
            return db.LostItems.FirstOrDefault(i => i.itemName == itemName);
        }

    }
}